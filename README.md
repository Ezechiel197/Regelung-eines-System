Analyse und Regelung mechatronischer Mehrgrößensysteme
Dieses Repository enthält die Modellierung und den Reglerentwurf für komplexe mechatronische Systeme. 
Das Projekt ist in zwei Schwerpunkte unterteilt: die statische/dynamische Entkopplung von Mehrgrößensystemen (MIMO) und die zeitdiskrete Zustandsregelung instabiler Strecken.

Teil 1: Entkopplung von Mehrgrößensystemen (MIMO)
Im ersten Teil wird ein System mit mehreren Ein- und Ausgängen ( ein Handhabungsgerät mit Linear- und Rotationsachse) untersucht. 
Ohne Korrektur beeinflussen sich die Achsen gegenseitig, was eine präzise Steuerung erschwert.

Umsetzung: 

Systemanalyse: Bestimmung der Kopplungen zwischen den Ein- und Ausgängen in der Übertragungsmatrix.
Entkopplungsnetzwerk: Berechnung und Implementierung einer Entkopplungsmatrix, sodass jede Eingangsgröße exklusiv auf die zugehörige Ausgangsgröße wirkt.

Teil 2: Zustandsregelung und Zeitdiskrete Implementierung

Der zweite Teil fokussiert sich auf die Stabilisierung eines instabilen Systems (inverses Pendel auf einem Wagen). 
Hierbei wird ein moderner regelungstechnischer Ansatz im Zustandsraum gewählt

Kernaspekte des Entwurfs:

Zustandsrückführung: Berechnung der Rückführmatrix zur gezielten Polvorgabe, um das System zu stabilisieren und Anforderungen an die Dynamik (Einschwingzeit, Überschwingen) zu erfüllen.
Zeitdiskrete Regelung: Da reale Steuerungen auf Mikrocontrollern laufen, wurde der Regler unter Berücksichtigung einer festen Abtastzeit diskretisiert.
Regler ohne Beobachter: In diesem Szenario wird davon ausgegangen, dass alle Zustandsgrößen (Positionen und Geschwindigkeiten) direkt messbar sind oder durch einfache Differentiation gewonnen werden, 
sodass kein Luenberger-Beobachter benötigt wird.


<img width="600" height="340" alt="image" src="https://github.com/user-attachments/assets/b1c95e7e-f03d-4152-bff0-c3b789d6b15b" />
