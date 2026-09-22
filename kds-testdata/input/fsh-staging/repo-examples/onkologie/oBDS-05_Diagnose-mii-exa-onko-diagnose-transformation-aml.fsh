Instance: mii-exa-onko-diagnose-mds
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "MII EXA Onkologie Diagnose MDS (Ursprungsdiagnose)"
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus.coding[condition-ver-status] = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#D46.2 "Myelodysplastisches Syndrom: Refraktäre Anämie mit Ringsideroblasten"
* code.coding[icd10-gm].version = "2023"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/icd-o-3#9983/3 "Refraktäre Anämie mit Ringsideroblasten"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version = "2019"
* subject = Reference(Patient/example)
* recordedDate = "2023-03-10"
* bodySite.coding[icd-o-3] = http://terminology.hl7.org/CodeSystem/icd-o-3#C42.1 "Knochenmark"
* extension[Feststellungsdatum].valueDateTime = 2023-03-10

Instance: mii-exa-onko-diagnose-aml-transformation
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "MII EXA Onkologie Diagnose sekundäre AML (Transformation aus MDS)"
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus.coding[condition-ver-status] = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C92.0 "Akute myeloblastische Leukämie [AML]"
* code.coding[icd10-gm].version = "2025"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/icd-o-3#9895/3 "Akute myeloische Leukämie mit myelodysplasieassoziierten Veränderungen"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version = "2019"
* subject = Reference(Patient/example)
* recordedDate = "2025-06-02"
* bodySite.coding[icd-o-3] = http://terminology.hl7.org/CodeSystem/icd-o-3#C42.1 "Knochenmark"
* extension[Feststellungsdatum].valueDateTime = 2025-06-02
// Kausale Achse: Transformation aus der registrierten MDS-Diagnose
* extension[transformationVon].valueReference = Reference(mii-exa-onko-diagnose-mds)
// Zeitliche Achse (optional zusätzlich): trat nach der MDS auf
* extension[occurredFollowing].valueReference = Reference(mii-exa-onko-diagnose-mds)
