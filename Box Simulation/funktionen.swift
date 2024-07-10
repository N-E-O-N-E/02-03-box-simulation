//
//  funktionen.swift
//  Box Simulation
//
//  Created by Markus Wirtz on 10.07.24.
//

import Foundation


func willkommen() {
    print("""
    Guten Tag zum heutigen Kampf in der "\(boxRing.boxringName)" live aus "\(boxRing.boxringLand)",
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
func kampfrunden() {
    let zufallsZahl = Int.random(in: 1...4)

    switch zufallsZahl {
    case 1: print("Der Kampf ist heute nach 1 Runde vorbei!\n")
    case 2: print("Heute geht der Kampf 2 Runden!\n")
    case 3: print("Der Kampf geht heute 3 Runden!\n")
    case 4: print("Insgesamt geht der Kampf heute 4 Runden!\n")
    default: break
    }
    
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
    default:
        break
        
    }
}






