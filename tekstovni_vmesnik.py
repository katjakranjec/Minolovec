import model
from timeit import default_timer as timer

def izpis_trenutnega_stanja(stopnja, igra):
    stevilka_stolpca = "   "
    for n in range(int(stopnja[0])):
        stevilka_stolpca += "  " + str(n) + " "
    print(stevilka_stolpca)
    crtice = "   "
    for n in range(int(stopnja[0])):
        crtice += "━━━━"
    print(crtice)
    for vrstica in range(int(stopnja[0])):
        vrsta = str(vrstica) + " "
        for stolpec in range(int(stopnja[0])):
            vrsta += "│ " + str(igra[vrstica][stolpec]) + " "
        print(vrsta + "│\n")

def izpis_zmage():
    tekst = "ZMAGA 😀"
    print(tekst)

def izpis_poraza():
    tekst = "PORAZ 🙁"
    print(tekst)

def napaka_pri_vnosu():
    print("Napaka pri vnosu")

def izbira_tezavnosti():
    return input("Težavnost (l, s, t):")

def dolocitev_stopnje(vnos):
    if str(vnos) == "l" or str(vnos) == "L":
        return [5, 5]
    elif str(vnos) == "s" or str(vnos) == "S":
        return [7, 8]
    elif str(vnos) == "t" or str(vnos) == "T":
        return [10, 10]
    else:
        napaka_pri_vnosu()

def zahtevaj_potezo():
    return input("Poteza:")

def urejen_vnos(vnos):
    return vnos.split(",")

def zazeni_igro():
    stopnja = dolocitev_stopnje(izbira_tezavnosti())
    print(stopnja)
    igra = model.nova_igra(stopnja)
    zacetek = timer()
    while True:
        izpis_trenutnega_stanja(stopnja, igra.igralcevo_polje())
        poteza = urejen_vnos(zahtevaj_potezo())
        vrstica = int(poteza[0])
        stolpec = int(poteza[1])
        if len(poteza) == 2 and igra.eksplozija(poteza):
            izpis_trenutnega_stanja(stopnja, igra.reseno_polje())
            izpis_poraza()
            break
        elif len(poteza) == 2:
            igra.odpiranje(vrstica, stolpec)
        elif len(poteza) == 3 and (poteza[-1] == "F" or "f"):
            igra.postavljanje_in_odstranjevanje_zastavic(poteza)
        else:
            napaka_pri_vnosu()
        if igra.zmaga():
            konec = timer()
            izpis_trenutnega_stanja(stopnja, igra.reseno_polje())
            cas = (((konec - zacetek) * 10) // 1) / 10
            print('Porabljeni čas: ' + str(cas) + 's')
            izpis_zmage()
            break
        
zazeni_igro()



              