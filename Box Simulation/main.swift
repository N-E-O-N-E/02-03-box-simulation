// Box-Simulator - Markus Wirtz

import Foundation

// ------------------------------------------------------------------------------ Aufgabe 1.0  Projekt aufsetzen

/*
 "Das Sportinstitut beauftragt die Entwicklung einer Boxsimulation.
 In dieser Anwendung sollen Boxer mit individuellen Attributen wie Stärke,
 Lebenspunkte und Präzision erstellt werden können. Es ist erforderlich,
 dass diese Boxer in simulierten Kämpfen gegeneinander antreten können und
 ein Sieger anhand der jeweiligen Attribute berechnet wird. Zusätzlich soll die
 Anwendung eine Trainingsfunktion enthalten, durch die Boxer ihre Stärke und
 andere Fähigkeiten durch gezieltes Training verbessern können."
 */

 
// -----------------------------------------------------------------> 1.3. Instanz erzegen

let boxerA = Boxer(vorname: "Donner", nachname: "Wetter", gebDatum: "15.08.1986", nationalitaet: "Deutsch", health: 100, staerke: 9, ausdauer: 87, quote: 93)
print("Der Boxer \(boxerA.vorname) \(boxerA.nachname) ist \(boxerA.alter) Jahre alt.")

let boxerB = Boxer(vorname: "Ali", nachname: "Mente", gebDatum: "23.01.1984", nationalitaet: "Türkisch", health: 100, staerke: 12, ausdauer: 82, quote: 91)
print("Der Boxer \(boxerB.vorname) \(boxerB.nachname) ist \(boxerB.alter) Jahre alt.")

var boxRing1 = BoxingRing(boxringName: "Indoor-Ring Arena", boxringLand: "Deutschland", besucherLive: 15000, indoor: true)
var boxRing2 = BoxingRing(boxringName: "Outdoor-Ring Arena", boxringLand: "Türkei", besucherLive: 12000, indoor: false)

print("""
      
Guten Tag zum heutigen Kampf in der "\(boxRing1.boxringName)" live aus "\(boxRing1.boxringLand)",
wo "\(boxerA.vorname) \(boxerA.nachname)" mit einer Quote von \(boxerA.quote) % gegen seinen
Herausforderer "\(boxerB.vorname) \(boxerB.nachname)" mit einer Quote von \(boxerB.quote) % antreten wird.

""")

// -----------------------------------------------------------------> 1.4. Favorit bestimmen


func FavoritBestimmen()  {
    
    if boxerA.health + boxerA.staerke + boxerA.ausdauer + boxerA.quote > boxerB.health + boxerB.staerke + boxerB.ausdauer + boxerB.quote {
        print("Der Boxer \(boxerA.vorname) \(boxerA.nachname) ist ein klarer Favorit!")
    } else if boxerA.health + boxerA.staerke + boxerA.ausdauer + boxerA.quote < boxerB.health + boxerB.staerke + boxerB.ausdauer + boxerB.quote {
        print("Der Boxer \(boxerB.vorname) \(boxerB.nachname) ist ein klarer Favorit!")
    } else {
        print("Es gibt keinen klaren Favoriten!")
    }
}

FavoritBestimmen()

