// Box-Simulator - Markus Wirtz

import Foundation

// ------------------------------------------------------------------------------ Aufgabe 1.0  Projekt aufsetzen


// -----------------------------------------------------------------> 1.3. Instanz erzegen

var boxerA = Boxer(vorname: "Donner", nachname: "Wetter", gebDatum: "15.08.1986", nationalitaet: "Deutsch", health: 100, staerke: 9, ausdauer: 87, quote: 93)
var boxerB = Boxer(vorname: "Ali", nachname: "Mente", gebDatum: "23.01.1984", nationalitaet: "Türkisch", health: 100, staerke: 12, ausdauer: 82, quote: 91)

var boxRing1 = BoxingRing(boxringName: "Indoor-Ring Arena", boxringLand: "Deutschland", besucherLive: 15000, standort: .studio)
var boxRing2 = BoxingRing(boxringName: "Outdoor-Ring Arena", boxringLand: "Türkei", besucherLive: 12000, standort: .aussen)

print("""
Guten Tag zum heutigen Kampf in der "\(boxRing1.boxringName)" live aus "\(boxRing1.boxringLand)",
wo "\(boxerA.vorname) \(boxerA.nachname)" mit einer Quote von \(boxerA.quote) % gegen seinen
Herausforderer "\(boxerB.vorname) \(boxerB.nachname)" mit einer Quote von \(boxerB.quote) % antreten wird.

""")



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

// Boxer Beschreibung ------------------------------------------
boxerA.description()
boxerB.description()

// Favorit bestimmen ------------------------------------------
FavoritBestimmen()

// Alter erhöhen ------------------------------------------
boxerA.editAlter(ageUp: 1)

// Trainingsmethode ------------------------------------------
//boxerA.trainingsmethode()
//boxerB.trainingsmethode()

// Regenerationsmethode ------------------------------------------
//boxerA.regenerationsmehode()
//boxerB.regenerationsmehode()

// Ausdauer Veränderung wird über didSet überwacht!

// 2.5. Gemeinsames Training ------------------------------------------
gemeinsamesTraining(boxerX: &boxerA, boxerY: &boxerB)


// Aufgabe 3.1 Kampfrunden ---------------------------------------------

let zufallsZahl = Int.random(in: 1...4)

switch zufallsZahl {
case 1: print("\nDer Kampf ist heute nach 1 Runde vorbei!")
case 2: print("\nHeute geht der Kampf 2 Runden!")
case 3: print("\nDer Kampf geht heute 3 Runden!")
case 4: print("\nInsgesamt geht der Kampf heute 4 Runden!")
default: break
}

// Aufgabe 3.2 Wetterbedingungen ---------------------------------------------

var wetterbedingungen: wetter = .sonnig


switch wetterbedingungen {
case .sonnig:
    print("Das Wetter heute ist schön sonnig!")
case .regnerisch:
    print("Das Wetter ist heute regnerisch!")
case.bedeckt:
    print("Der Himmel ist heute bedeckt!")
default: break
    
}
