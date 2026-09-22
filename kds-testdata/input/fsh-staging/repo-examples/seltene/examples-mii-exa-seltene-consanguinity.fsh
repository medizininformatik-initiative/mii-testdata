Instance:    mii-exa-seltene-consanguinity
InstanceOf:  MII_PR_Seltene_Consanguinity
Usage:       #example
Title:       "Consanguinity - Eltern blutsverwandt"
Description: "Beispiel: Bei einem Indexpatienten mit Verdacht auf eine autosomal-rezessive seltene Erkrankung ist dokumentiert, dass die Eltern blutsverwandt sind (Cousins 1. Grades)."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-consanguinity)
* status = #final
* category[socialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = http://snomed.info/sct#842009 "Consanguinity"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-11-15"
* valueCodeableConcept = http://snomed.info/sct#373066001 "Yes"
* valueCodeableConcept.text = "Eltern blutsverwandt (Cousins 1. Grades)"
