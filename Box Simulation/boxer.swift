
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
    
    // Aufgabe 4.1. Schwächen des Boxers
    private var schwaeche: String = "zu wenig Deckung"
    
    static var angetreteneBoxer: Int = 0
    
    let vorname: String
    var nachname: String
    let gebDatum: String
    var alter: Int
    {
        didSet {
            print(">>> Das Alter \(oldValue) des Boxers wurde auf \(alter) angepasst! <<<\n")
        }
    }
    let nationalitaet: String
    var health: Int
    {
        didSet {
            if health > oldValue {
                print("Gesundheit regeneriert sich um \(health) %")
            } else if health < oldValue {
                print("AUA!!! Schlag kassiert! Gesundheit sinkt auf \(health)\n")
            }
        }
    }
    var staerke: Int
    {
        didSet {
            print("Die Stärke hat sich geändert von \(oldValue) auf \(staerke)\n")
        }
    }
    var ausdauer: Int
    {
        didSet {
            if ausdauer > oldValue {
                print("Aaah meine Ausdauer erholt sich um \(ausdauer - oldValue)! :-)\n")
            } else if ausdauer < oldValue {
                print("Puhh meine Ausdauer sinkt um \(oldValue - ausdauer) :-(\n")
            }
        }
    }
    var quote: Int
    
    
    // Init
    init(vorname: String, nachname: String, gebDatum: String, nationalitaet: String, health: Int, staerke: Int, ausdauer: Int, quote: Int, schwaeche: String) {
        self.vorname = vorname
        self.nachname = nachname
        self.gebDatum = gebDatum
        self.nationalitaet = nationalitaet
        self.health = health
        self.staerke = staerke
        self.ausdauer = ausdauer
        self.quote = quote
        self.schwaeche = schwaeche
        self.alter = Boxer.berechneAlter(gebDatum: gebDatum)
        
        Boxer.erhoeheBoxerCount()
        
    }
    
    // Aufgabe 4.2. Gesamtanzahl Boxer zählen
    
    static func erhoeheBoxerCount() {
        angetreteneBoxer += 1
        print("Anzahl erstelter Boxer aktuell: \(Boxer.angetreteneBoxer)\n")

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
            Es tritt an: \(vorname) \(nachname), geboren am \(gebDatum),
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
            
            if ausdauer > 0 && ausdauer <= 100 {
                print("\(vorname) \(nachname) trainiert Stärke und Ausdauer\n")
                staerke += 5
                ausdauer -= 25
                health -= Int.random(in: 15...20)
                sleep(1)
            } else if ausdauer == 0 {
                    break
                }
        }
    }
    
    mutating func regenerationsmehode() {
        
        while ausdauer != 100 {
            
            if ausdauer < 100 {
                print("Der Boxer \(vorname) \(nachname) regeneriert seine Ausdauer\n")
                ausdauer += 25
                health += Int.random(in: 15...20)
                sleep(1)
            } else if ausdauer >= 100 {
                ausdauer = 100
                
            }
            
        }
        
    }
    
    mutating func kampfAngriff() {
        
        if ausdauer > 0 {
            
            print("+++++++++ \(vorname) \(nachname) Kämpft +++++++++++++++++++++++++++++++++++++++++ \n")
            ausdauer -= Int.random(in: 10...20)
            
            sleep(1)
        } else {
            ausdauer = 0
        }
                

    }
    
    mutating func kampfVerteidigung() {
        
        if ausdauer > 0 && health > 0 {
            
            print("######### \(vorname) \(nachname) kassiert! ####################################### \n")
            ausdauer -= Int.random(in: 5...10)
            health -= Int.random(in: 10...20)
            
            sleep(1)
            
        } else {
            ausdauer = 0
            health = 0
        }

    }
    
   
    // Aufgabe 4.1. Schwächen des Boxers

    func getSchwaeche() -> String {
       // print("Der Boxer hat die Einschränkung: \(schwaeche)\n")
        return schwaeche
    }
    
} // Ende des Struc Boxer



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
        
        var count = randomInt()
        
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
