// Diagnose Patient-1
Instance: mii-exa-test-data-patient-1-primaerdiagnose
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor
Usage: #example
Description: "Condition: Masern mit Otitis für Patient 1"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(C50.4, 2023, mii-exa-test-data-patient-1, 2024-02-12, Bösartige Neubildung: Oberer äußerer Quadrant der Brustdrüse)
* code.coding[icd10-gm].extension[0].url = "http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen"
* code.coding[icd10-gm].extension[0].valueCoding = $mehrfachcodierungs-kennzeichen#†
* code.coding[icd10-gm].extension[1].url = "http://fhir.de/StructureDefinition/seitenlokalisation"
* code.coding[icd10-gm].extension[1].valueCoding = $seitenlokalisation#R "rechts"
* code.coding[icd10-gm].extension[2].url = "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit"
* code.coding[icd10-gm].extension[2].valueCoding = $diagnosesicherheit#G "gesicherte Diagnose"
* onsetDateTime = "2024-02-21"
* recordedDate = "2020-02-16"