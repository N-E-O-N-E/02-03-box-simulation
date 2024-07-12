//
//  funktionen.swift
//  Box Simulation
//
//  Created by Markus Wirtz on 10.07.24.
//

import Foundation

// Random Int
func randomInt() -> Int {
    return Int.random(in: 1...4)
}
// Boxer werden hier zufällig aus einer Auswahl von vier Boxern erstellt.
// Gefahr: Es kann zweimal der gleiche gegeneinander Kämpfen"

enum RandomBoxerEnum {
    case ersterBoxer, zweiterBoxer, dritterBoxer, vierterBoxer
}
func randomBoxer() -> RandomBoxerEnum {
    let randomBoxerNumber = randomInt()
    switch randomBoxerNumber {
    case 1: return .ersterBoxer
    case 2: return .zweiterBoxer
    case 3: return .dritterBoxer
    case 4: return .vierterBoxer
    default:
        return .ersterBoxer
    }
}
func matchBoxer(boxer: RandomBoxerEnum) -> Boxer{
    switch boxer {
    case .ersterBoxer: return Boxer(vorname: "Donner", nachname: "Wetter", gebDatum: "15.08.1986", nationalitaet: "Deutsch", health: 100, staerke: 10, ausdauer: 100, quote: 90, schwaeche: "schwache Deckung")
    case .zweiterBoxer: return Boxer(vorname: "Ali", nachname: "Mente", gebDatum: "23.01.1984", nationalitaet: "Türkisch", health: 100, staerke: 15, ausdauer: 100, quote: 90, schwaeche: "langsame Reaktion")
    case .dritterBoxer: return Boxer(vorname: "Ali", nachname: "Mente", gebDatum: "23.01.1984", nationalitaet: "Türkisch", health: 100, staerke: 15, ausdauer: 100, quote: 90, schwaeche: "langsame Reaktion")
    case .vierterBoxer: return Boxer(vorname: "Ali", nachname: "Mente", gebDatum: "23.01.1984", nationalitaet: "Türkisch", health: 100, staerke: 15, ausdauer: 100, quote: 90, schwaeche: "langsame Reaktion")
    }
}

// Automatisches Erstellen eines Boxers mit Listen als Parameterträger -----------------------------------------------------
// Variablen für die autom. Erszellung der Inhalte
var listVornamen: Array = ["Sebastian", "Ralf", "Adam", "Hans", "Leon", "Patrick", "Steffen", "Frank", "Joseph", "Julian", "Markus", "Lars", "Andreas", "Alexander", "Daniel", "Anton", "Felix", "Tom"]
var listNachnamen: Array = ["Müller", "Meyer", "Schmitt", "Jansen", "Höllinger", "Braun", "Becker", "Keller", "Wagner", "Mohr", "Weber", "Schneider", "König", "Berger", "Huber", "Wolf", "Herrmann", "Schwarz"]
var listGebDaten: Array = ["01.02.1986", "03.04.1982", "12.07.1981", "21.09.1980", "24.05.1985", "09.08.1988", "05.06.1979", "29.12.1988", "20.10.1982"]
var listNationalitaet: Array = ["Deutscher", "Schweizer"]
var listSchwaeche: Array = ["leichte Deckung","geringe Reaktion", "zu impulsiv", "verletzung linker Arm", "zu selbstsicher", "unerfahren"]

// Boxer wird erstellt mit Random-Parametern
func generateBoxer() -> Boxer {
    return Boxer(vorname: listVornamen.randomElement()!, nachname: listNachnamen.randomElement()!, gebDatum: listGebDaten.randomElement()!, nationalitaet: listNationalitaet.randomElement()!, health: Int.random(in: 90...100), staerke: Int.random(in: 5...15), ausdauer: Int.random(in: 85...100), quote: Int.random(in: 80...95), schwaeche: listSchwaeche.randomElement()!)
}


// ---------------------------------------------------------------------- Boxer Begrüßung
func willkommen(boxer1: Boxer, boxer2: Boxer) {
    print("""
        Willkommen zur heutigen Show in der "\(boxRing.boxringName)" live aus "\(boxRing.boxringLand)",
        wo "\(boxer1.vorname) \(boxer1.nachname)" mit einer Quote von \(boxer1.quote) % gegen seinen
        Herausforderer "\(boxer2.vorname) \(boxer2.nachname)" mit einer Quote von \(boxer2.quote) % antreten wird.
        
        """)
}

// -----------------------------------------------------------------> 1.4. Favorit bestimmen
func FavoritBestimmen(boxer1: Boxer, boxer2: Boxer)  {
    
    if boxer1.health + boxer1.staerke + boxer1.ausdauer + boxer1.quote > boxer2.health + boxer2.staerke + boxer2.ausdauer + boxer2.quote {
        print("Der Boxer \(boxer1.vorname) \(boxer1.nachname) ist bei diesem Kampf ein möglicher Favorit!")
    } else if boxer1.health + boxer1.staerke + boxer1.ausdauer + boxer1.quote < boxer2.health + boxer2.staerke + boxer2.ausdauer + boxer2.quote {
        print("Der Boxer \(boxer2.vorname) \(boxer2.nachname) ist bei diesem Kampf ein möglicher Favorit!")
    } else {
        print("Es gibt keinen klaren Favoriten!")
    }
}

// Aufgabe 3.1 Kampfrunden ---------------------------------------------
func kampfrunden() -> Int{
    
    let zufallsZahl = Int.random(in: 4...8)

    switch zufallsZahl {
        
    case 4: print("Der Kampf könnte schon nach 4 Runden vorbei sein...\n")
    case 5: print("Heute geht der Kampf sicher nicht weiter als 5 Runden...\n")
    case 6: print("Der Kampf geht heute sicher über 6 Runden...\n")
    case 7: print("Insgesamt geht der Kampf heute nicht über 7 Runden...\n")
    case 8: print("Insgesamt geht der Kampf heute über die 8 Runden hinaus...\n")
        
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
    
        
    }
}


// Aufgabe 2.4 Bonus Gemeinsames Training-----------------------------------------------------------------------------------------------

func gemeinsamesTraining(boxerX: inout Boxer, boxerY: inout Boxer) {
    
    while boxerX.ausdauer > 0 || boxerY.ausdauer > 0 {
        
        boxerX.trainingsmethode()
        boxerY.trainingsmethode()
        
        boxerX.staerke += boxerX.staerke * (boxerY.staerke / 100)
        boxerY.staerke += boxerY.staerke * (boxerX.staerke / 100)
    
    }
    print("\n<<< Ein Boxer hat keine Puste mehr. Das gemeinsame Training ist zuende.>>>\n")
}

func gemeinsamerKampf(boxerX: inout Boxer, boxerY: inout Boxer) {
    
    while boxerX.health > 0 && boxerY.health > 0 || boxerX.ausdauer > 0 && boxerY.ausdauer > 0 {
        
        let count = randomInt()
        
        switch count {
        case 1:
            boxerX.kampfAngriff()
            boxerY.kampfVerteidigung()
            boxerX.staerke += boxerX.staerke * (boxerY.staerke / 100)
            
        case 2:
            boxerX.kampfVerteidigung()
            boxerY.kampfAngriff()
            boxerY.staerke += boxerY.staerke * (boxerX.staerke / 100)
        default:
            print("Beide Boxer verschnaufen ein wenig...")
        }
       
    }
    
    print("\n<<<<<<<<<<<<<<<<<<< Ein Boxer ist besiegt! Der Kampf ist zuende. >>>>>>>>>>>>>>>>>>>>>>\n")
}

