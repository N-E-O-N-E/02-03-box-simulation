// Box-Simulator - Markus Wirtz

import Foundation

// ------------------------------------------------------------------------------ Aufgabe 1.0  Projekt aufsetzen

// -----------------------------------------------------------------> 1.3. Instanz erzegen
var boxerA = Boxer(vorname: "Donner", nachname: "Wetter", gebDatum: "15.08.1986", nationalitaet: "Deutsch", health: 100, staerke: 10, ausdauer: 100, quote: 90)
var boxerB = Boxer(vorname: "Ali", nachname: "Mente", gebDatum: "23.01.1984", nationalitaet: "Türkisch", health: 100, staerke: 15, ausdauer: 100, quote: 90)

var boxRing1 = BoxingRing(boxringName: "Indoor-Ring Arena", boxringLand: "Deutschland", besucherLive: 15000, standort: .studio)
var boxRing2 = BoxingRing(boxringName: "Outdoor-Ring Arena", boxringLand: "Türkei", besucherLive: 12000, standort: .aussen)


func willkommen() {
    print("""
    Guten Tag zum heutigen Kampf in der "\(boxRing1.boxringName)" live aus "\(boxRing1.boxringLand)",
    wo "\(boxerA.vorname) \(boxerA.nachname)" mit einer Quote von \(boxerA.quote) % gegen seinen
    Herausforderer "\(boxerB.vorname) \(boxerB.nachname)" mit einer Quote von \(boxerB.quote) % antreten wird.
    
    """)
}

// -----------------------------------------------------------------> 1.4. Favorit bestimmen
func FavoritBestimmen()  {
    
    if boxerA.health + boxerA.staerke + boxerA.ausdauer + boxerA.quote > boxerB.health + boxerB.staerke + boxerB.ausdauer + boxerB.quote {
        print("Der Boxer \(boxerA.vorname) \(boxerA.nachname) ist bei diesem Kampf ein möglicher Favorit!")
    } else if boxerA.health + boxerA.staerke + boxerA.ausdauer + boxerA.quote < boxerB.health + boxerB.staerke + boxerB.ausdauer + boxerB.quote {
        print("Der Boxer \(boxerB.vorname) \(boxerB.nachname) ist bei diesem Kampf ein möglicher Favorit!")
    } else {
        print("Es gibt keinen klaren Favoriten!")
    }
}

// Aufgabe 3.1 Kampfrunden ---------------------------------------------
func kampfrunden() -> Int {
    let zufallsZahl = Int.random(in: 1...4)

    switch zufallsZahl {
    case 1: print("Der Kampf ist heute nach 1 Runde vorbei!\n")
    case 2: print("Heute geht der Kampf 2 Runden!\n")
    case 3: print("Der Kampf geht heute 3 Runden!\n")
    case 4: print("Insgesamt geht der Kampf heute 4 Runden!\n")
    default: break
    }
    return zufallsZahl
}

// Aufgabe 3.2 Wetterbedingungen ---------------------------------------------


func wetterbedingungen(dasWetter: wetter) {

    switch dasWetter {
    case .sonnig:
        print("Das Wetter heute ist schön sonnig!\n")
    case .regnerisch:
        print("Das Wetter ist heute regnerisch!\n")
    case.bedeckt:
        print("Der Himmel ist heute bedeckt!\n")
    default: break
        
    }
}

// Start --------------------------------------------------------
willkommen()
sleep(1)
kampfrunden()
sleep(1)
wetterbedingungen(dasWetter: .sonnig)
sleep(2)

// Boxer Beschreibung ------------------------------------------
boxerA.description()
boxerB.description()
sleep(3)

// Favorit bestimmen ------------------------------------------
FavoritBestimmen()
sleep(1)

// Alter erhöhen ------------------------------------------
boxerA.editAlter(ageUp: 1)
sleep(1)

// Trainingsmethode ------------------------------------------
print("---------------------------------------")
print("##### Das Training kann beginnen! #####")
print("---------------------------------------")
boxerA.trainingsmethode()
boxerB.trainingsmethode()
sleep(1)
// Regenerationsmethode ------------------------------------------
print("-------------------------------------")
print("##### Das Regenerieren startet! #####")
print("-------------------------------------")
boxerA.regenerationsmehode()
boxerB.regenerationsmehode()
sleep(1)

// 2.5. Gemeinsames Training ------------------------------------------
print("--------------------------------------------------")
print("##### Das gemeinsame Training kann beginnen! #####")
print("--------------------------------------------------")
gemeinsamesTraining(boxerX: &boxerA, boxerY: &boxerB)


