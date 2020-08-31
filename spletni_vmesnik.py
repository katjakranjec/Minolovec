import bottle
import model

DATOTEKA_S_STANJEM = 'stanje.json'
SKRIVNOST = 'Baje je ena skrivnost'
minolovec = model.Minolovec(DATOTEKA_S_STANJEM)

minolovec.nalozi_igre_iz_datoteke()

def doloci_tezavnost(vnos):
    if str(vnos) == "l" or str(vnos) == "L":
        return [5, 5]
    elif str(vnos) == "s" or str(vnos) == "S":
        return [7, 8]
    elif str(vnos) == "t" or str(vnos) == "T":
        return [10, 10]

def urejen_vnos(vnos):
    return vnos.split(",")

@bottle.get('/')
def index():
    return bottle.template('index.tpl')

@bottle.post('/izbira_tezavnosti/')
def izbira_tezavnosti():
    return bottle.template('tezavnost.tpl')

@bottle.post('/nova_igra/')
def nova_igra():
    vnos = bottle.request.forms.getunicode('tezavnost')
    stopnja = doloci_tezavnost(vnos)
    id_igre = minolovec.nova_igra(stopnja)
    bottle.response.set_cookie('idigre', 'idigre{}'.format(id_igre), secret=SKRIVNOST, path='/')
    bottle.redirect('/igra/')

@bottle.get('/igra/')
def pokazi_igro():
    id_igre = int(bottle.request.get_cookie('idigre', secret=SKRIVNOST).split('e')[1])
    igra, stanje = minolovec.igre[id_igre]
    polje = igra.igralcevo_polje()
    velikost_mreze = igra.velikost_mreze
    if int(velikost_mreze) == 5:
        return bottle.template('igra1.tpl',
                            polje=polje,
                            stanje=stanje,
                            igra=igra)
    if int(velikost_mreze) == 7:
        return bottle.template('igra3.tpl',
                            polje=polje,
                            stanje=stanje,
                            igra=igra)
    if int(velikost_mreze) == 10:
        return bottle.template('igra2.tpl',
                            polje=polje,
                            stanje=stanje,
                            igra=igra)

@bottle.post('/igra/')
def odpiraj():
    id_igre = int(bottle.request.get_cookie('idigre', secret=SKRIVNOST).split('e')[1])
    vnos = bottle.request.forms.getunicode('poteza')
    poteza = urejen_vnos(vnos)
    print(poteza)
    minolovec.odpri(id_igre, poteza)
    bottle.redirect('/igra/')

@bottle.get('/statistika/')
def pokazi_statistiko():
    slovar_statistik = model.statistika(DATOTEKA_S_STANJEM)
    return bottle.template('statistika.tpl',
                           slovar_statistik=slovar_statistik)

bottle.run(reloader=True, debug=True)