// Patient-1
Instance: mii-exa-test-data-patient-1-list-aufnahmemedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste|2.0.0"
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E210
* status = #current
* mode = #snapshot
* title = "Aufnahmemedikation"
* subject = Reference(mii-exa-test-data-patient-1)
* entry.item = Reference(mii-exa-test-data-patient-1-medstatement-1)

Instance: mii-exa-test-data-patient-1-list-stat-aufenthalt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste|2.0.0"
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200
* status = #current
* mode = #working
* title = "Medikationsliste während stationärem Aufenthalt"
* subject = Reference(mii-exa-test-data-patient-1)
* entry[0].item = Reference(mii-exa-test-data-patient-1-medstatement-1)
* entry[1].item = Reference(mii-exa-test-data-patient-1-medstatement-2)

// Patient-2 Lists
Instance: mii-exa-test-data-patient-2-list-aufnahmemedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E210
* status = #current
* mode = #snapshot
* title = "Aufnahmemedikation"
* subject = Reference(mii-exa-test-data-patient-2)
* entry.item = Reference(mii-exa-test-data-patient-2-medstatement-1)

Instance: mii-exa-test-data-patient-2-list-stat-aufenthalt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200
* status = #current
* mode = #working
* title = "Medikationsliste während stationärem Aufenthalt"
* subject = Reference(mii-exa-test-data-patient-2)
* entry[0].item = Reference(mii-exa-test-data-patient-2-medstatement-1)
* entry[1].item = Reference(mii-exa-test-data-patient-2-medstatement-2)
* entry[2].item = Reference(mii-exa-test-data-patient-2-medstatement-3)

// Patient-3 Lists
Instance: mii-exa-test-data-patient-3-list-aufnahmemedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E210
* status = #current
* mode = #snapshot
* title = "Aufnahmemedikation"
* subject = Reference(mii-exa-test-data-patient-3)
* entry.item = Reference(mii-exa-test-data-patient-3-medstatement-1)

Instance: mii-exa-test-data-patient-3-list-stat-aufenthalt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200
* status = #current
* mode = #working
* title = "Medikationsliste während stationärem Aufenthalt"
* subject = Reference(mii-exa-test-data-patient-3)
* entry[0].item = Reference(mii-exa-test-data-patient-3-medstatement-1)
* entry[1].item = Reference(mii-exa-test-data-patient-3-medstatement-2)
* entry[2].item = Reference(mii-exa-test-data-patient-3-medstatement-3)

// Patient-4 Lists
Instance: mii-exa-test-data-patient-4-list-aufnahmemedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E210
* status = #current
* mode = #snapshot
* title = "Aufnahmemedikation"
* subject = Reference(mii-exa-test-data-patient-4)
* entry.item = Reference(mii-exa-test-data-patient-4-medstatement-2)

Instance: mii-exa-test-data-patient-4-list-stat-aufenthalt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200
* status = #current
* mode = #working
* title = "Medikationsliste während stationärem Aufenthalt"
* subject = Reference(mii-exa-test-data-patient-4)
* entry[0].item = Reference(mii-exa-test-data-patient-4-medstatement-1)
* entry[1].item = Reference(mii-exa-test-data-patient-4-medstatement-2)

// Patient-5 Lists
Instance: mii-exa-test-data-patient-5-list-aufnahmemedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E210
* status = #current
* mode = #snapshot
* title = "Aufnahmemedikation"
* subject = Reference(mii-exa-test-data-patient-5)
* entry.item = Reference(mii-exa-test-data-patient-5-medstatement-1)

Instance: mii-exa-test-data-patient-5-list-stat-aufenthalt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200
* status = #current
* mode = #working
* title = "Medikationsliste während stationärem Aufenthalt"
* subject = Reference(mii-exa-test-data-patient-5)
* entry[0].item = Reference(mii-exa-test-data-patient-5-medstatement-1)
* entry[1].item = Reference(mii-exa-test-data-patient-5-medstatement-2)

// Patient-6 Lists
Instance: mii-exa-test-data-patient-6-list-aufnahmemedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E210
* status = #current
* mode = #snapshot
* title = "Aufnahmemedikation"
* subject = Reference(mii-exa-test-data-patient-6)
* entry.item = Reference(mii-exa-test-data-patient-6-medstatement-1)

Instance: mii-exa-test-data-patient-6-list-stat-aufenthalt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200
* status = #current
* mode = #working
* title = "Medikationsliste während stationärem Aufenthalt"
* subject = Reference(mii-exa-test-data-patient-6)
* entry[0].item = Reference(mii-exa-test-data-patient-6-medstatement-1)
* entry[1].item = Reference(mii-exa-test-data-patient-6-medstatement-2)
* entry[2].item = Reference(mii-exa-test-data-patient-6-medstatement-3)

Instance: mii-exa-test-data-patient-6-list-entlassmedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E230
* status = #current
* mode = #snapshot
* title = "Entlassmedikation"
* subject = Reference(mii-exa-test-data-patient-6)
* entry.item = Reference(mii-exa-test-data-patient-6-medstatement-1)

// Patient-7 Lists
Instance: mii-exa-test-data-patient-7-list-stat-aufenthalt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200
* status = #current
* mode = #working
* title = "Medikationsliste während stationärem Aufenthalt"
* subject = Reference(mii-exa-test-data-patient-7)
* entry[0].item = Reference(mii-exa-test-data-patient-7-medstatement-1)
* entry[1].item = Reference(mii-exa-test-data-patient-7-medstatement-2)

Instance: mii-exa-test-data-patient-7-list-entlassmedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E230
* status = #current
* mode = #snapshot
* title = "Entlassmedikation"
* subject = Reference(mii-exa-test-data-patient-7)
* entry.item = Reference(mii-exa-test-data-patient-7-medstatement-2)

// Patient-8 Lists
Instance: mii-exa-test-data-patient-8-list-stat-aufenthalt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200
* status = #current
* mode = #working
* title = "Medikationsliste während stationärem Aufenthalt"
* subject = Reference(mii-exa-test-data-patient-8)
* entry[0].item = Reference(mii-exa-test-data-patient-8-medstatement-1)
* entry[1].item = Reference(mii-exa-test-data-patient-8-medstatement-2)
* entry[2].item = Reference(mii-exa-test-data-patient-8-medstatement-3)

// Patient-9 Lists
Instance: mii-exa-test-data-patient-9-list-aufnahmemedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E210
* status = #current
* mode = #snapshot
* title = "Aufnahmemedikation"
* subject = Reference(mii-exa-test-data-patient-9)
* entry.item = Reference(mii-exa-test-data-patient-9-medstatement-1)

Instance: mii-exa-test-data-patient-9-list-stat-aufenthalt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200
* status = #current
* mode = #working
* title = "Medikationsliste während stationärem Aufenthalt"
* subject = Reference(mii-exa-test-data-patient-9)
* entry.item = Reference(mii-exa-test-data-patient-9-medstatement-1)

Instance: mii-exa-test-data-patient-9-list-entlassmedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E230
* status = #current
* mode = #snapshot
* title = "Entlassmedikation"
* subject = Reference(mii-exa-test-data-patient-9)
* entry.item = Reference(mii-exa-test-data-patient-9-medstatement-1)

// Patient-10 Lists
Instance: mii-exa-test-data-patient-10-list-aufnahmemedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E210
* status = #current
* mode = #snapshot
* title = "Aufnahmemedikation"
* subject = Reference(mii-exa-test-data-patient-10)
* entry.item = Reference(mii-exa-test-data-patient-10-medstatement-1)

Instance: mii-exa-test-data-patient-10-list-entlassmedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E230
* status = #current
* mode = #snapshot
* title = "Entlassmedikation"
* subject = Reference(mii-exa-test-data-patient-10)
* entry.item = Reference(mii-exa-test-data-patient-10-medstatement-1)