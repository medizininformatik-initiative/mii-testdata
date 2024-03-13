// Diagnose Patient-1
Instance: mii-exa-test-data-patient-1-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
* insert AddDiagnose(B05.3, 2023, mii-exa-test-data-patient-1, 2024-02-12, Masernotitis)
* code.coding[icd10-gm].extension[0].url = "http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen"
* code.coding[icd10-gm].extension[0].valueCoding = $mehrfachcodierungs-kennzeichen#†
* code.coding[alpha-id] = $alpha-id|2023#I29578 "Masern mit Otitis"
* code.coding[sct] = $sct#13420004 "Post measles otitis media (disorder)"
* bodySite.coding[snomed-ct] = $sct#25342003 "Middle ear structure (body structure)"
* onsetDateTime = "2024-02-21"
* recordedDate = "2024-02-21"

Instance: mii-exa-test-data-patient-1-diagnose-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
* insert AddDiagnose(H67.1, 2023, mii-exa-test-data-patient-1, 2024-02-12, Masernotitis)
* code.coding[icd10-gm].display = "Otitis media bei anderenorts klassifizierten Viruskrankheiten"
* onsetDateTime = "2024-02-21"
* recordedDate = "2024-02-21"
* extension[ReferenzPrimaerdiagnose].url = "http://hl7.org/fhir/StructureDefinition/condition-related"
* extension[ReferenzPrimaerdiagnose].valueReference = Reference(mii-exa-test-data-patient-1-diagnose-1)