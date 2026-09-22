Instance: mii-exa-onko-anker-patient
InstanceOf: Patient
Usage: #example
Title: "Beispiel-Patient (Anker)"
Description: "Minimaler Anker-Patient für die generischen Referenzen Patient/example in den Beispielen des Moduls."
* id = "example"
* name.family = "Beispiel"
* name.given = "Erika"
* gender = #female
* birthDate = "1965-04-12"

Instance: mii-exa-onko-anker-patient-modification
InstanceOf: Patient
Usage: #example
Title: "Beispiel-Patient FOLFOX-Modifikation (Anker)"
Description: "Minimaler Anker-Patient für das FOLFOX-Modifikations-Szenario (Patient/example-modification)."
* id = "example-modification"
* name.family = "Beispiel"
* name.given = "Martin"
* gender = #male
* birthDate = "1958-11-03"

//-----------------------------------------------------
// Kontakte (Encounter)
//-----------------------------------------------------

Instance: mii-exa-onko-anker-encounter
InstanceOf: Encounter
Usage: #example
Title: "Beispiel-Kontakt (Anker)"
Description: "Minimaler Anker-Kontakt für die generischen Referenzen Encounter/example."
* id = "example"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/example)

// Hinweis: Encounter/example-diagnosis und Encounter/example-surgery brauchen
// keine Anker mehr — sie wurden ausschließlich vom FOLFOX-Beispiel benutzt und
// sind dort durch die eigenen Instanzen mii-exa-onko-folfox-encounter-* ersetzt,
// die als Bundle-Entries im FOLFOX-Bundle liegen.

Instance: mii-exa-onko-anker-encounter-chemo-phase1
InstanceOf: Encounter
Usage: #example
Title: "Beispiel-Kontakt Chemotherapie Phase 1 (Anker)"
Description: "Minimaler Anker-Kontakt für Encounter/example-chemo-phase1."
* id = "example-chemo-phase1"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/example-modification)

Instance: mii-exa-onko-anker-encounter-chemo-phase2
InstanceOf: Encounter
Usage: #example
Title: "Beispiel-Kontakt Chemotherapie Phase 2 (Anker)"
Description: "Minimaler Anker-Kontakt für Encounter/example-chemo-phase2."
* id = "example-chemo-phase2"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/example-modification)

Instance: mii-exa-onko-anker-encounter-diagnosis-modification
InstanceOf: Encounter
Usage: #example
Title: "Beispiel-Kontakt Diagnosestellung FOLFOX-Modifikation (Anker)"
Description: "Minimaler Anker-Kontakt für Encounter/example-diagnosis-modification."
* id = "example-diagnosis-modification"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/example-modification)

Instance: mii-exa-onko-anker-encounter-surgery-modification
InstanceOf: Encounter
Usage: #example
Title: "Beispiel-Kontakt Operation FOLFOX-Modifikation (Anker)"
Description: "Minimaler Anker-Kontakt für Encounter/example-surgery-modification."
* id = "example-surgery-modification"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(Patient/example-modification)
