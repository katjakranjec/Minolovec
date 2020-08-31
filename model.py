import random
import json

class Igra:

    def __init__(self, resitev, velikost_mreze, stevilo_min, postavljene_zastavice=None, odprti=None):
        self.resitev = resitev
        self.stevilo_min = stevilo_min
        self.velikost_mreze = velikost_mreze
        if postavljene_zastavice is None:
            self.postavljene_zastavice = []
        else:
            self.postavljene_zastavice = postavljene_zastavice
        if odprti is None:
            self.odprti = []
        else:
            self.odprti = odprti
        
    def stevilo_postavljenih_zastavic(self):
        return len(self.postavljene_zastavice)

    def odpiranje(self, vrstica, stolpec):
        if [vrstica, stolpec] not in self.odprti:
            self.odprti.append([vrstica, stolpec])

            if self.resitev[vrstica][stolpec] == 0:
                #Vse, ki imajo kvadratek levo zgoraj:
                if vrstica > 0 and stolpec > 0:
                    self.odpiranje(vrstica-1, stolpec-1)
                #Vse, ki imajo kvadratek zgoraj:
                if vrstica > 0:
                    self.odpiranje(vrstica-1, stolpec)
                #Vse, ki imajo kvadratek desno zgoraj:
                if vrstica > 0 and stolpec < self.velikost_mreze-1:
                    self.odpiranje(vrstica-1, stolpec+1)
                #Vse, ki imajo kvadratek levo:
                if stolpec > 0:
                    self.odpiranje(vrstica, stolpec-1)
                #Vse, ki imajo kvadratek desno:
                if stolpec < self.velikost_mreze-1:
                    self.odpiranje(vrstica, stolpec+1)
                #Vse, ki imajo kvadratek levo spodaj:
                if vrstica < self.velikost_mreze-1 and stolpec > 0:
                    self.odpiranje(vrstica+1, stolpec-1)
                #Vse, ki imajo kvadratek spodaj:
                if vrstica < self.velikost_mreze-1:
                    self.odpiranje(vrstica+1, stolpec)
                #Vse, ki imajo kvadratek desno spodaj:
                if vrstica < self.velikost_mreze-1 and stolpec < self.velikost_mreze-1:
                    self.odpiranje(vrstica+1, stolpec+1)

    def postavljanje_in_odstranjevanje_zastavic(self, poteza):
        vrstica = int(poteza[0])
        stolpec = int(poteza[1])
        if [vrstica, stolpec] not in self.postavljene_zastavice:
            self.postavljene_zastavice.append([vrstica, stolpec])
        else:
            self.postavljene_zastavice.remove([vrstica, stolpec])
            

    def igralcevo_polje(self):
        IGRALNO_POLJE = [["☐" for vrstica in range(self.velikost_mreze)] for stolpec in range(self.velikost_mreze)]
        for celica in self.odprti:
            vrstica = int(celica[0])
            stolpec = int(celica[-1])
            IGRALNO_POLJE[vrstica][stolpec] = self.resitev[vrstica][stolpec]
        for celica in self.postavljene_zastavice:
            vrstica = int(celica[0])
            stolpec = int(celica[-1])
            IGRALNO_POLJE[vrstica][stolpec] = "🚩"
        return IGRALNO_POLJE

    def zmaga(self):
        PREVERJENI = 0
        IGRALNO_POLJE = self.igralcevo_polje()
        for vrstica in range(self.velikost_mreze):
            for stolpec in range(self.velikost_mreze):
                if IGRALNO_POLJE[vrstica][stolpec] != "☐" and IGRALNO_POLJE[vrstica][stolpec] != "🚩":
                    PREVERJENI += 1
        if (PREVERJENI == (self.velikost_mreze ** 2) - self.stevilo_min) and (self.stevilo_postavljenih_zastavic() == self.stevilo_min):
            return True
        else:
            return False

    def eksplozija(self, poteza):
        vrstica = int(poteza[0])
        stolpec = int(poteza[1])
        return self.resitev[vrstica][stolpec] == "💣"

    def reseno_polje(self):
        RESITEV = [[" " for vrstica in range(self.velikost_mreze)] for stolpec in range(self.velikost_mreze)]
        for vrstica in range(self.velikost_mreze):
            for stolpec in range(self.velikost_mreze):
                RESITEV[vrstica][stolpec] = self.resitev[vrstica][stolpec]
        return RESITEV
        
    def izid(self, poteza):
        if len(poteza[0]) == 1 and poteza[0] in '1234567890' and len(poteza[1]) == 1 and poteza[1] in '1234567890':
            if (int(poteza[0]) in range(self.velikost_mreze)) and (int(poteza[1]) in range(self.velikost_mreze)):
                if len(poteza) == 2:
                    vrstica = int(poteza[0])
                    stolpec = int(poteza[1])
                    self.odpiranje(vrstica, stolpec)
                    if self.zmaga():
                        return "ZMAGA"
                    elif self.eksplozija(poteza):
                        return "PORAZ"
                    else:
                        return "NEDOKONČANO"
                elif len(poteza) == 3 and (poteza[2] == 'f' or poteza[2] == 'F'):
                    self.postavljanje_in_odstranjevanje_zastavic(poteza)
                    if self.zmaga():
                        return "ZMAGA"
                    else:
                        return "NEDOKONČANO"
                else:
                    return "NAPAKA"
            else:
                return "NAPAKA"
        else:
            return "NAPAKA"
    
class Polje:

    def __init__(self, velikost_mreze, stevilo_min):
        self.velikost_mreze = velikost_mreze
        self.stevilo_min = stevilo_min

    def ustvari_resitev(self):
        RESITEV = [[0 for vrstica in range(self.velikost_mreze)] for stolpec in range(self.velikost_mreze)]
        #Najprej nastavimo mine na random
        ZE_POSTAVLJENE_MINE = 0
        while ZE_POSTAVLJENE_MINE < self.stevilo_min:
            vrstica = random.randint(0, self.velikost_mreze-1)
            stolpec = random.randint(0, self.velikost_mreze-1)
            if RESITEV[vrstica][stolpec] != "💣":
                RESITEV[vrstica][stolpec] = "💣"
                ZE_POSTAVLJENE_MINE += 1
        #Nastavimo vrednosti tabele glede na položaj min
        for vrstica in range(self.velikost_mreze):
            for stolpec in range(self.velikost_mreze):
                if RESITEV[vrstica][stolpec] != "💣":
                    #Vse, ki imajo kvadratek levo zgoraj:
                    if vrstica > 0 and stolpec > 0 and RESITEV[vrstica-1][stolpec-1] == "💣":
                        RESITEV[vrstica][stolpec] += 1
                    #Vse, ki imajo kvadratek zgoraj:
                    if vrstica > 0 and RESITEV[vrstica-1][stolpec] == "💣":
                        RESITEV[vrstica][stolpec] += 1
                    #Vse, ki imajo kvadratek desno zgoraj:
                    if vrstica > 0 and stolpec < self.velikost_mreze-1 and RESITEV[vrstica-1][stolpec+1] == "💣":
                        RESITEV[vrstica][stolpec] += 1
                    #Vse, ki imajo kvadratek levo:
                    if stolpec > 0 and RESITEV[vrstica][stolpec-1] == "💣":
                        RESITEV[vrstica][stolpec] += 1
                    #Vse, ki imajo kvadratek desno:
                    if stolpec < self.velikost_mreze-1 and RESITEV[vrstica][stolpec+1] == "💣":
                        RESITEV[vrstica][stolpec] += 1
                    #Vse, ki imajo kvadratek levo spodaj:
                    if vrstica < self.velikost_mreze-1 and stolpec > 0 and RESITEV[vrstica+1][stolpec-1] == "💣":
                        RESITEV[vrstica][stolpec] += 1
                    #Vse, ki imajo kvadratek spodaj:
                    if vrstica < self.velikost_mreze-1 and RESITEV[vrstica+1][stolpec] == "💣":
                        RESITEV[vrstica][stolpec] += 1
                    #Vse, ki imajo kvadratek desno spodaj:
                    if vrstica < self.velikost_mreze-1 and stolpec < self.velikost_mreze-1 and RESITEV[vrstica+1][stolpec+1] == "💣":
                        RESITEV[vrstica][stolpec] += 1
        return RESITEV

def novo_polje(stopnja):
    return Polje(int(stopnja[0]), int(stopnja[1]))

def nova_igra(stopnja):
    return Igra(novo_polje(stopnja).ustvari_resitev(), int(stopnja[0]), int(stopnja[1]))

class Minolovec:

    def __init__(self, datoteka_s_stanjem):
        self.igre = {}
        self.datoteka_s_stanjem = datoteka_s_stanjem

    def prost_id_igre(self):
        if len(self.igre) == 0:
            return 0
        else:
            return max(self.igre.keys()) + 1

    def nova_igra(self, stopnja):
        self.nalozi_igre_iz_datoteke()
        igra = Igra(novo_polje(stopnja).ustvari_resitev(), int(stopnja[0]), int(stopnja[1]))
        id_igre = self.prost_id_igre()
        stanje0 = "NEDOKONČANO"
        self.igre[id_igre] = (igra, stanje0)
        self.zapisi_igre_v_datoteko()
        return id_igre

    def odpri(self, id_igre, poteza):
        self.nalozi_igre_iz_datoteke()
        igra, _ = self.igre[id_igre]
        stanje = igra.izid(poteza)
        self.igre[id_igre] = (igra, stanje)
        self.zapisi_igre_v_datoteko()

    def zapisi_igre_v_datoteko(self):
        with open(self.datoteka_s_stanjem, 'w', encoding='utf-8') as f:
            igre1 = {id_igre: ((igra.resitev, igra.velikost_mreze, igra.stevilo_min, igra.postavljene_zastavice, igra.odprti), stanje)
                    for id_igre, (igra, stanje) in self.igre.items()}
            json.dump(igre1, f)
        return

    def nalozi_igre_iz_datoteke(self):
        with open(self.datoteka_s_stanjem, 'r', encoding="utf-8") as f:
            igre = json.load(f)
            self.igre = {int(id_igre): (Igra(resitev, velikost_mreze, stevilo_min, postavljene_zastavice, odprti), stanje)
                         for id_igre, ((resitev, velikost_mreze, stevilo_min, postavljene_zastavice, odprti), stanje) in igre.items()}

def odstotek(stevec, imenovalec):
    return round((stevec / imenovalec) * 100)

def statistika(datoteka_s_stanjem):
    slovar_statistik = {}
    minolovec = Minolovec(datoteka_s_stanjem)
    minolovec.nalozi_igre_iz_datoteke()

    stevilo_iger = len(minolovec.igre.keys())
    slovar_statistik["stevilo_iger"] = stevilo_iger

    stevilo_zmag = sum([1 if izid == "ZMAGA" else 0 for _, izid in minolovec.igre.values()])
    slovar_statistik["odstotek_zmag"] = odstotek(stevilo_zmag, stevilo_iger)

    stevilo_porazov = sum([1 if izid == "PORAZ" else 0 for _, izid in minolovec.igre.values()])
    slovar_statistik["odstotek_porazov"] = odstotek(stevilo_porazov, stevilo_iger)

    stevilo_nedokoncnih_iger = stevilo_iger - stevilo_zmag - stevilo_porazov
    slovar_statistik["odstotek_nedokoncanih_iger"] = odstotek(stevilo_nedokoncnih_iger, stevilo_iger)

    return slovar_statistik
