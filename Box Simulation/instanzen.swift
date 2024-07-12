//
//  instanzen.swift
//  Box Simulation
//
//  Created by Markus Wirtz on 10.07.24.
//

import Foundation



// Boxring wird erstellt
var boxRing = BoxingRing(boxringName: "Indoor-Ring Arena", boxringLand: "Deutschland", besucherLive: 15000, standort: .studio)

// Boxer werden erstellt
var boxerA = Boxer(vorname: "Donner", nachname: "Wetter", gebDatum: "15.08.1986", nationalitaet: "Deutsch", health: 100, staerke: 10, ausdauer: 100, quote: 90, schwaeche: "schwache Deckung")
var boxerB = Boxer(vorname: "Ali", nachname: "Mente", gebDatum: "23.01.1984", nationalitaet: "Türkisch", health: 100, staerke: 15, ausdauer: 100, quote: 90, schwaeche: "langsame Reaktion")
var boxerC = Boxer(vorname: "Paul", nachname: "Hagel", gebDatum: "05.10.1982", nationalitaet: "Deutsch", health: 100, staerke: 5, ausdauer: 90, quote: 85, schwaeche: "schwache linke Hand")
var boxerD = Boxer(vorname: "Klasha", nachname: "Smirnow", gebDatum: "21.02.1991", nationalitaet: "Russisch", health: 100, staerke: 25, ausdauer: 100, quote: 90, schwaeche: "unerfahren")


