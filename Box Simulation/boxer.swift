
import Foundation

// -----------------------------------------------------------------> 1.1. Boxer modellieren

struct Boxer {
    
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

struct BoxerX {
    
    let vorname: String
    var nachname: String
    let gebDatum: String
    var alter: Int
    let nationalitaet: String
    var health: Int
    var staerke: Int
    var ausdauer: Int
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
        
        self.alter = BoxerX.berechneAlter(gebDatum: gebDatum)
    }
    
    static func berechneAlter(gebDatum: String) -> Int {
        
        // Zuerst wird ein DateFormatter erstellt, um den String in ein Date-Objekt zu konvertieren.
        let formatter = DateFormatter()
        // Der "formatter" muss das Format der Zeichenkette kennen. Hier legt man das Format fest, was der Streingeingabe entspricht
        formatter.dateFormat = "dd.mm.yyyy"
        
        // Die Zeichenkette gebDatum wird in ein Date-Objekt geparst.
        let geburtstag = formatter.date(from: gebDatum)!
        
        // Ein aktueller Kalender wird erstellt
        let kalender = Calendar.current
        // Berechnet die Anzahl Jahre zwischen Geburtstag und aktuellem Datum
        let alterComponents = kalender.dateComponents([.year], from: geburtstag, to: Date())
        // Gibt das Jahr zurück
        return alterComponents.year!
    }
}




