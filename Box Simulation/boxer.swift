
import Foundation

// -----------------------------------------------------------------> 1.1. Boxer modellieren



struct Boxer {
    
    let vorname: String
    var nachname: String
    var alter: Int
    let nationalitaet: String
    var punkte: Int
    var staerke: Int
    var ausdauer: Int
    var quote: Int
    
}



struct BoxerX {
    
    let vorname: String
    var nachname: String
    let gebDatum: String
    var alter: Int
    let nationalitaet: String
    var punkte: Int
    var staerke: Int
    var ausdauer: Int
    var quote: Int
    
    init(vorname: String, nachname: String, gebDatum: String, nationalitaet: String, punkte: Int, staerke: Int, ausdauer: Int, quote: Int) {
        self.vorname = vorname
        self.nachname = nachname
        self.gebDatum = formatter.gebDatum
        self.alter = berechnetesAlter
        self.nationalitaet = nationalitaet
        self.punkte = punkte
        self.staerke = staerke
        self.ausdauer = ausdauer
        self.quote = quote
        
        
        var formatter = DateFormatter()
        formatter.dateFormat = "dd.mm.yyyy"

        let currentDate = formatter.Date()
        var berechnetesAlter = currentDate - gebDatum
        
        print(berechnetesAlter)
        
    }
        
}
