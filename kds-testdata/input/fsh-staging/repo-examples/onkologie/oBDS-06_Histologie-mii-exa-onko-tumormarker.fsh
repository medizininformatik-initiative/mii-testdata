Instance: mii-exa-onko-tumormarker-cea
InstanceOf: MII_PR_Onko_Tumormarker
Usage: #example
Title: "MII EXA Onkologie Tumormarker CEA"
Description: "CEA-Bestimmung im Rahmen einer onkologischen Erkrankung. Zeigt das Identifier-Muster <LOINC>_<Meldungs-ID> für Registerdaten ohne Labor-Auftragsnummer sowie den Diagnosebezug über focus."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumormarker)
* identifier[analyseBefundCode].type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/onko-tumormarker-befunde"
* identifier[analyseBefundCode].value = "2039-6_M2026-0042"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
// QA-Fix (Pflicht-Slice observation-category nicht gematcht): die Kombination
// 'category[0] = system#code' + 'category[=].coding[+] = ...' verschluckt in
// SUSHI das erste Coding — im JSON stand NUR noch LOINC. Explizite Indizes.
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[0].coding[1] = http://loinc.org#26436-6 "Laboratory studies (set)"
* code.coding[loinc] = http://loinc.org#2039-6 "Carcinoembryonic Ag [Mass/volume] in Serum or Plasma"
* code.text = "CEA"
* subject = Reference(Patient/example)
* focus = Reference(mii-exa-onko-diagnose)
* effectiveDateTime = "2026-03-12T09:30:00+01:00"
* valueQuantity = 4.2 'ug/L' "µg/L"
