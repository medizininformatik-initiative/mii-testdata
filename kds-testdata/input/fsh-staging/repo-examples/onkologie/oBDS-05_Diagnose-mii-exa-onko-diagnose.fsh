Instance: mii-exa-onko-diagnose
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus.coding[condition-ver-status] = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7 
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm|2020#C50.4 "Bösartige Neubildung: Oberer äußerer Quadrant der Brustdrüse"
* code.coding[icd10-gm].extension[Seitenlokalisation].valueCoding = $icd-seitenlokalisation#R "rechts"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/icd-o-3#8500/3 "Infiltrating duct carcinoma, NOS"
* extension[morphology-behavior-icdo3].valueCodeableConcept.text = "Invasives duktales Karzinom o.n.A."
* subject = Reference(Patient/example)
* recordedDate = "2020-02-16"
* bodySite.coding[snomed-ct] = http://snomed.info/sct#76365002 "Structure of upper outer quadrant of breast (body structure)"
* bodySite.coding[icd-o-3] = http://terminology.hl7.org/CodeSystem/icd-o-3#C50.4 "Oberer äußerer Quadrant der Brust"
* extension[Feststellungsdatum].valueDateTime = 2021-05-09
