// ============================================================================
// MII Lungenfunktion Test Data - Umgebungs- und Koerpermass-Observations
// CO2-Konzentration, Lufttemperatur, Luftfeuchtigkeit (focus = Umgebung),
// Koerpergewicht
// ============================================================================

// CO2-Konzentration im Messraum
Instance: mii-exa-test-data-lungenfunktion-co2-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-co2-konzentration
Usage: #example
Description: "Lungenfunktion CO2-Konzentration im Messraum: 0.05 %"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/lungenfunktion-messplatz"
* status = #final
* category = $observation-category#social-history
* code.coding[sct] = $sct20260701#250780004 "Carbon dioxide concentration (observable entity)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* focus = Reference(mii-exa-test-data-lungenfunktion-umgebung-1)
* issued = "2025-02-18T12:00:00+01:00"
* valueQuantity = 0.05 '%' "%"
* interpretation = $v3-ObservationInterpretation#N "Normal"

// Lufttemperatur im Messraum
Instance: mii-exa-test-data-lungenfunktion-lufttemperatur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-lufttemperatur
Usage: #example
Description: "Lungenfunktion Lufttemperatur im Messraum: 21.5 Cel"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/lungenfunktion-messplatz"
* status = #final
* category = $observation-category#social-history
* code.coding[sct] = $sct20260701#250825003 "Ambient temperature (observable entity)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* focus = Reference(mii-exa-test-data-lungenfunktion-umgebung-1)
* issued = "2025-02-18T12:00:00+01:00"
* valueQuantity = 21.5 'Cel' "Cel"
* interpretation = $v3-ObservationInterpretation#N "Normal"

// Luftfeuchtigkeit im Messraum
Instance: mii-exa-test-data-lungenfunktion-luftfeuchtigkeit-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-luftfeuchtigkeit
Usage: #example
Description: "Lungenfunktion Luftfeuchtigkeit im Messraum: 45 %"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/lungenfunktion-messplatz"
* status = #final
* category = $observation-category#social-history
* code.coding[sct] = $sct20260701#3525006 "Humidity (physical force)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* focus = Reference(mii-exa-test-data-lungenfunktion-umgebung-1)
* issued = "2025-02-18T12:00:00+01:00"
* valueQuantity = 45 '%' "%"
* interpretation = $v3-ObservationInterpretation#N "Normal"

// Koerpergewicht (fuer die Sollwert-Berechnung)
// HINWEIS: Das Profil mii-pr-lungenfunktion-gewicht fixiert die UCUM-Einheit
// "ug" (Mikrogramm) per Pattern - fachlich waere "kg" korrekt (Upstream-Bug,
// siehe docs/research-lungenfunktion.md).
Instance: mii-exa-test-data-lungenfunktion-gewicht-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-gewicht
Usage: #example
Description: "Lungenfunktion Koerpergewicht: 68 (Einheit 'ug' durch Profil-Pattern vorgegeben, fachlich 'kg')"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1)
* code.coding[sct] = $sct20260701#27113001 "Body weight (observable entity)"
* code.coding[loinc] = $loinc#29463-7 "Body weight"
* valueQuantity = 68 'ug' "ug"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#39857003 "Weighing patient (procedure)"
