//
//  boxring.swift
//  Box Simulation
//
//  Created by Markus Wirtz on 08.07.24.
//

import Foundation

// -----------------------------------------------------------------> 1.2. Box-Ring modellieren

struct BoxingRing {
    
    let boxringName: String
    let boxringLand: String
    var besucherLive: Int
    var standort: standortTyp
    
    mutating func editStandort(neuerStandort: standortTyp) {
        self.standort = neuerStandort
    }
    
}



