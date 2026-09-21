// ============================================================================
// MII Lungenfunktion Test Data - Patient, Encounter, Location (Umgebung)
// Szenario: Luise Atemwald, 52 Jahre, V.a. Asthma bronchiale.
// Lungenfunktionsdiagnostik am 18.02.2025: Spirometrie, Bodyplethysmographie,
// CO-Diffusionsmessung und Methacholin-Provokationstest.
// ============================================================================

Instance: mii-exa-test-data-lungenfunktion-patient-1
InstanceOf: Patient
Usage: #example
Description: "Lungenfunktion Test Patient: Luise Atemwald (V.a. Asthma bronchiale)"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier[=].value = "LUFU-TEST-001"
* name.family = "Atemwald"
* name.given = "Luise"
* birthDate = 1972-06-30
* gender = #female

Instance: mii-exa-test-data-lungenfunktion-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Lungenfunktion Test Encounter: ambulante Lungenfunktionsdiagnostik"
* insert TestDataLabel
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* period.start = "2025-02-18T08:30:00+01:00"
* period.end = "2025-02-18T12:30:00+01:00"

// Umgebung des Messplatzes (Lungenfunktionslabor)
Instance: mii-exa-test-data-lungenfunktion-umgebung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-umgebung
Usage: #example
Description: "Lungenfunktion Umgebung: Lungenfunktionslabor (Raum innerhalb eines Gebaeudes)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/lungenfunktion-messplatz"
* name = "Lungenfunktionslabor 2, Charite Campus Mitte"
* type = $v3-RoleCode#HOSP "Hospital"
* physicalType = $sct20260701#224709006 "Location inside building (environment)"
