// Box-Simulator - Markus Wirtz

import Foundation

// ------------------------------------------------------------------------------ Aufgabe 1.0  Projekt aufsetzen

// Boxer zufällig bestimmen -------------------------------------

//var boxerA = matchBoxer(boxer: randomBoxer())
//var boxerB = matchBoxer(boxer: randomBoxer())

var boxerA = generateBoxer()
var boxerB = generateBoxer()

// Start --------------------------------------------------------
willkommen(boxer1: boxerA, boxer2: boxerB)
sleep(1)

// Kampfrunden werden bestimmt -----------------------------------
var kampfRunden: Int = kampfrunden()
sleep(1)

// Wetterbedingungen --------------------------------------------
wetterbedingungen(dasWetter: .sonnig)
sleep(1)

// Boxer Beschreibungen ------------------------------------------
boxerA.description()
print("Der Boxer hat die Einschränkung: \(boxerA.getSchwaeche())\n")
boxerB.description()
print("Der Boxer hat die Einschränkung: \(boxerB.getSchwaeche())\n")
sleep(1)

// Favorit bestimmen ------------------------------------------
FavoritBestimmen(boxer1: boxerA, boxer2: boxerB)
sleep(1)

// Alter erhöhen ----------------------------------------------
boxerA.editAlter(ageUp: 1)
sleep(1)

/*
  Trainingsmethode ------------------------------------------
print("---------------------------------------")
print("##### Das Training kann beginnen! #####")
print("---------------------------------------")
boxerA.trainingsmethode()
boxerB.trainingsmethode()
sleep(1)
 Regenerationsmethode ------------------------------------------
print("-------------------------------------")
print("##### Das Regenerieren startet! #####")
print("-------------------------------------")
boxerA.regenerationsmehode()
boxerB.regenerationsmehode()
sleep(1)

 2.5. Gemeinsames Training ------------------------------------------
print("--------------------------------------------------")
print("##### Das gemeinsame Training kann beginnen! #####")
print("--------------------------------------------------")
gemeinsamesTraining(boxerX: &boxerA, boxerY: &boxerB)

*/

// 4.3. Boxkampf -------------------------------------------------
gemeinsamerKampf(boxerX: &boxerA, boxerY: &boxerB)

