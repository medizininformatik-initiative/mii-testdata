Instance: mii-exa-onko-tnm-klassifikation-TisN0M0
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation)
* status = #final
* code = http://snomed.info/sct#399537006 "Clinical TNM stage grouping"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* hasMember[0] = Reference(mii-exa-onko-tnm-t-kategorie-Tis)
* hasMember[1] = Reference(mii-exa-onko-tnm-n-kategorie-N0)
* hasMember[2] = Reference(mii-exa-onko-tnm-m-kategorie-M0)
* valueCodeableConcept = https://www.uicc.org/resources/tnm#0 "Stadium 0"
