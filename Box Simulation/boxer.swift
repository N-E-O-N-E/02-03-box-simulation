
import Foundation

// -----------------------------------------------------------------> 1.1. Boxer modellieren

struct BoxerEinfach {
    
    let vorname: String
    var nachname: String
    var alter: Int
    let nationalitaet: String
    var health: Int
    var staerke: Int
    var ausdauer: Int
    var quote: Int
    
}

// --------------------------------------------------------------------> 1.5. Alter berechnen

// 1) Erweitere deinen Boxer-Struct um einen zusätzlichen Initialisierer, der statt eines Alters das Geburtsdatum entgegennimmt.
// 2) Berechne das aktuelle Alter des Boxers in Jahren, basierend auf dem übergebenen Geburtsdatum.
// 3) Weise der Variablen für das Alter im Initialisierer, den berechneten Wert zu.

struct Boxer {
    
    let vorname: String
    var nachname: String
    let gebDatum: String
    var alter: Int
    {
        didSet {
            print("Das Alter \(oldValue) des Boxers wurde auf \(alter) angepasst!\n")
        }
    }
    let nationalitaet: String
    var health: Int
    {
        didSet {
            if health > oldValue {
                print("Hahaaa!")
            } else if health < oldValue {
                print("AUA!!!")
            }
        }
    }
    var staerke: Int
    {
        didSet {
            print("Die Stärke hat sich geändert von \(oldValue) auf \(staerke)")
        }
    }
    var ausdauer: Int
    {
        didSet {
            if ausdauer > oldValue {
                print("Aaah mehr Ausdauer \(ausdauer) :-)")
            } else if ausdauer < oldValue {
                print("Puhh meine Ausdauer \(ausdauer) :-(")
            }
            
        }
    }
    var quote: Int
    
    init(vorname: String, nachname: String, gebDatum: String, nationalitaet: String, health: Int, staerke: Int, ausdauer: Int, quote: Int) {
        self.vorname = vorname
        self.nachname = nachname
        self.gebDatum = gebDatum
        self.nationalitaet = nationalitaet
        self.health = health
        self.staerke = staerke
        self.ausdauer = ausdauer
        self.quote = quote
        
        self.alter = Boxer.berechneAlter(gebDatum: gebDatum)
    }
    
    // Aufgabe 1.5 ----------------------------------------------------------------------------------------------------------------------------
    static func berechneAlter(gebDatum: String) -> Int {
        
        // Zuerst wird ein DateFormatter erstellt, um den String in ein Date-Objekt zu konvertieren.
        let formatter = DateFormatter()
        // Der "formatter" muss das Format des Strings kennen. Hier legt man das Format fest, was der Stringeingabe entspricht
        formatter.dateFormat = "dd.mm.yyyy"
        
        // Der String gebDatum wird in ein Date-Objekt geparst.
        let geburtstag = formatter.date(from: gebDatum)!
        
        // Ein aktueller Kalender wird erstellt
        let kalender = Calendar.current
        
        // Berechnet die Anzahl der Jahre zwischen Geburtstag und aktuellem Datum
        let alterComponents = kalender.dateComponents([.year], from: geburtstag, to: Date())
        
        // Gibt das Jahr zurück für den Int return
        return alterComponents.year!
    }
    
    // Aufgabe 2.1 ------------------------------------------------------------------------------------------------------------------------------
    func description() {
        print("""
            Es tritt an \(vorname) \(nachname), geboren am \(gebDatum),
            mit einem Alter von \(alter) und er Nationalität: \(nationalitaet).
            
            """)
    }
    
    // Aufgabe 2.1 --------------------------------------------------------------------------------------------------------------------------------
    mutating func editAlter(ageUp: Int) {
        
        alter += ageUp
    
    }
    
    // Aufgabe 2.2 -------------------------------------------------------------------------------------------------------------------------------
    
    mutating func trainingsmethode() {
        
        while staerke <= 100 {
            
            if ausdauer > 10 {
                print("Der Boxer \(vorname) \(nachname) verändert seine Stärke und seine Ausdauer")
                staerke += 1
                ausdauer -= 10
                sleep(1)
            } else if ausdauer < 10 {
                    break
                }
        }
    }
    
    mutating func regenerationsmehode() {
        
        while ausdauer != 100 {
            
            if ausdauer < 100 {
                print("\nDer Boxer \(vorname) \(nachname) regeneriert seine Ausdauer")
                ausdauer += 1
                sleep(1)
            } else if ausdauer >= 100 {
                ausdauer = 100
                
            }
            
        }
        
    }
   
    
} // Ende des Struc Boxer



// Aufgabe 2.4 Bonus Gemeinsames Training-----------------------------------------------------------------------------------------------

func gemeinsamesTraining(boxerX: inout Boxer, boxerY: inout Boxer) {
    
    while boxerX.ausdauer > 10 || boxerY.ausdauer > 10 {
        
        boxerX.trainingsmethode()
        boxerY.trainingsmethode()
        
        boxerX.staerke += boxerX.staerke * (boxerY.staerke / 1000)
        boxerY.staerke += boxerY.staerke * (boxerX.staerke / 1000)
    
    }
    print("Keine Puste mehr. Das Training ist zuende.")
    
}


