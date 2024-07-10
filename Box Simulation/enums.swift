//
//  enums.swift
//  Box Simulation
//
//  Created by Markus Wirtz on 10.07.24.
//

import Foundation


// Aufgabe 3.2 Wetterbedingungen ---------------------------------------------
enum wetter {
    case sonnig
    case regnerisch
    case bedeckt
}
// Aufgabe 3.3 Outdoor Enum ---------------------------------------------

enum standortTyp: String {
    case halle = "Der Boxring ist in einer Halle"
    case studio = "Der Boxring steht in einem Fitnessstudio"
    case aussen = "Der Boxring steht im Außenbereich"
}

