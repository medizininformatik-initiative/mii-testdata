// Patient-1
Instance: mii-exa-test-data-patient-1-list-aufnahmemedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E210
* status = #current
* mode = #snapshot
* title = "Aufnahmemedikation"
* subject = Reference(mii-exa-test-data-patient-1)
* entry.item = Reference(mii-exa-test-data-patient-1-medstatement-1)

Instance: mii-exa-test-data-patient-1-list-stat-aufenthalt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200
* status = #current
* mode = #working
* title = "Medikationsliste während stationärem Aufenthalt"
* subject = Reference(mii-exa-test-data-patient-1)
* entry[0].item = Reference(mii-exa-test-data-patient-1-medstatement-1)
* entry[1].item = Reference(mii-exa-test-data-patient-1-medstatement-2)