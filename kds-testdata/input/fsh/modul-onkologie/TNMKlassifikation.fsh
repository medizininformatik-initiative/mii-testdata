Instance: mii-exa-test-data-onko-mamma-tnm-klassifikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation
Usage: #example
Description: "Observation: TNM Klassifikation für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* focus = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* specimen = Reference(mii-exa-test-data-onko-mamma-specimen)
* status = $observation-status#final
* code.coding = $sct#399537006 "Clinical TNM stage grouping"
* valueCodeableConcept = $tnm-uicc#0 "Stadium 0"
* effectiveDateTime = "2024-01-11"
* hasMember = Reference(mii-exa-test-data-onko-mamma-tnm-t-kategorie)
* hasMember[+] = Reference(mii-exa-test-data-onko-mamma-tnm-n-kategorie)
* hasMember[+] = Reference(mii-exa-test-data-onko-mamma-tnm-m-kategorie)
* hasMember[+] = Reference(mii-exa-test-data-onko-mamma-tnm-l-kategorie)
* hasMember[+] = Reference(mii-exa-test-data-onko-mamma-tnm-pn-kategorie)
* hasMember[+] = Reference(mii-exa-test-data-onko-mamma-tnm-s-kategorie)
* hasMember[+] = Reference(mii-exa-test-data-onko-mamma-tnm-v-kategorie)
* hasMember[+] = Reference(mii-exa-test-data-onko-mamma-tnm-a-symbol)
* hasMember[+] = Reference(mii-exa-test-data-onko-mamma-tnm-m-symbol)
* hasMember[+] = Reference(mii-exa-test-data-onko-mamma-tnm-r-symbol)
* hasMember[+] = Reference(mii-exa-test-data-onko-mamma-tnm-y-symbol)