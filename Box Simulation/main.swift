// Box-Simulator - Markus Wirtz

import Foundation

// ------------------------------------------------------------------------------ Aufgabe 1.0  Projekt aufsetzen

// Start --------------------------------------------------------
willkommen()
sleep(1)
kampfrunden()
sleep(1)
wetterbedingungen(dasWetter: .sonnig)
sleep(2)

// Boxer Beschreibung ------------------------------------------
boxerA.description()
boxerB.description()
sleep(3)

// Favorit bestimmen ------------------------------------------
FavoritBestimmen()
sleep(1)

// Alter erhöhen ------------------------------------------
boxerA.editAlter(ageUp: 1)
sleep(1)

// Trainingsmethode ------------------------------------------
print("---------------------------------------")
print("##### Das Training kann beginnen! #####")
print("---------------------------------------")
boxerA.trainingsmethode()
boxerB.trainingsmethode()
sleep(1)
// Regenerationsmethode ------------------------------------------
print("-------------------------------------")
print("##### Das Regenerieren startet! #####")
print("-------------------------------------")
boxerA.regenerationsmehode()
boxerB.regenerationsmehode()
sleep(1)

// 2.5. Gemeinsames Training ------------------------------------------
print("--------------------------------------------------")
print("##### Das gemeinsame Training kann beginnen! #####")
print("--------------------------------------------------")
gemeinsamesTraining(boxerX: &boxerA, boxerY: &boxerB)


