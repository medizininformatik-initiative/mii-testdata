Instance: mii-exa-onko-diagnose-taml-nach-chemo
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "MII EXA Onkologie Diagnose t-AML nach Chemotherapie (dueTo)"
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus.coding[condition-ver-status] = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C92.0 "Akute myeloblastische Leukämie [AML]"
* code.coding[icd10-gm].version = "2026"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/icd-o-3#9920/3 "Therapiebedingte myeloische Neoplasie"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version = "2019"
* subject = Reference(Patient/example)
* recordedDate = "2026-03-18"
* bodySite.coding[icd-o-3] = http://terminology.hl7.org/CodeSystem/icd-o-3#C42.1 "Knochenmark"
* extension[Feststellungsdatum].valueDateTime = 2026-03-18
// Verursachung: alkylanzhaltige Chemotherapie (Cyclophosphamid)
* extension[dueTo].valueReference = Reference(mii-exa-onko-systemische-therapie-medikation1)

// Fall 2: Radiogenes Hämangiosarkom der Thoraxwand nach Strahlentherapie —
// dueTo verweist auf die Bestrahlungs-Procedure.

Instance: mii-exa-onko-diagnose-angiosarkom-nach-radiatio
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "MII EXA Onkologie Diagnose radiogenes Angiosarkom nach Strahlentherapie (dueTo)"
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus.coding[condition-ver-status] = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C49.3 "Bösartige Neubildung: Bindegewebe und andere Weichteilgewebe des Thorax"
* code.coding[icd10-gm].version = "2026"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/icd-o-3#9120/3 "Hämangiosarkom"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version = "2019"
* subject = Reference(Patient/example)
* recordedDate = "2026-07-01"
* bodySite.coding[icd-o-3] = http://terminology.hl7.org/CodeSystem/icd-o-3#C49.3 "Bindegewebe des Thorax"
* extension[Feststellungsdatum].valueDateTime = 2026-07-01
// Verursachung: Strahlentherapie im früheren Bestrahlungsfeld
* extension[dueTo].valueReference = Reference(mii-exa-onko-strahlentherapie-strahlentherapie-1)
