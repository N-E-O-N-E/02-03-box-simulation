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

var boxerA = Boxer(vorname: "Donner", nachname: "Karlson", alter: 26, nationalitaet: "Deutsch", punkte: 100, staerke: 9, ausdauer: 85, quote: 95)
var boxerB = Boxer(vorname: "Ali", nachname: "Mente", alter: 27, nationalitaet: "Türkisch", punkte: 100, staerke: 13, ausdauer: 80, quote: 90)

var boxRing1 = BoxingRing(boxringName: "Indoor-Ring Arena", boxringLand: "Deutschland", besucherLive: 15000, indoor: true)
var boxRing2 = BoxingRing(boxringName: "Outdoor-Ring Arena", boxringLand: "Türkei", besucherLive: 12000, indoor: false)

print("""
      
Guten Tag zum heutigen Kampf in der "\(boxRing1.boxringName)" live aus "\(boxRing1.boxringLand)",
wo "\(boxerA.vorname) \(boxerA.nachname)" mit einer Quote von \(boxerA.quote) % gegen seinen
Herausforderer "\(boxerB.vorname) \(boxerB.nachname)" mit einer Quote von \(boxerB.quote) % antreten wird.

""")

// -----------------------------------------------------------------> 1.4. Favorit bestimmen


func FavoritBestimmen()  {
    
    if boxerA.punkte + boxerA.staerke + boxerA.ausdauer + boxerA.quote > boxerB.punkte + boxerB.staerke + boxerB.ausdauer + boxerB.quote {
        print("Boxer \(boxerA.vorname) \(boxerA.nachname) ist klarer Favorit!")
    } else if boxerA.punkte + boxerA.staerke + boxerA.ausdauer + boxerA.quote < boxerB.punkte + boxerB.staerke + boxerB.ausdauer + boxerB.quote {
        print("Boxer \(boxerB.vorname) \(boxerB.nachname) ist klarer Favorit!")
    } else {
        print("Es gibt keinen klaren Favoriten!")
    }
}

FavoritBestimmen()

var boxerC = BoxerX(vorname: "Max", nachname: "Mustermann", gebDatum: "12.04.1983", nationalitaet: "Deutsch", punkte: 100, staerke: 13, ausdauer: 86, quote: 93)



