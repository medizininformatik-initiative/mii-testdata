Instance: mii-exa-seltene-familienanamnese
InstanceOf: MII_PR_Seltene_Familienanamnese
Description: "Example Patient Family Anamnesis"
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese)
* status = #completed
* patient = Reference(mii-exa-seltene-patient)
* reasonCode = http://www.orpha.net#666
* relationship = http://snomed.info/sct#65656005 "Natural mother"
* sex = #female
* bornDate = "1954"
* deceasedDate = "2004"
* condition[0].code = http://fhir.de/CodeSystem/bfarm/icd-10-gm#H35.8
* condition[0].code.coding.version = "2024"
* condition[1].code = http://fhir.de/CodeSystem/bfarm/icd-10-gm#E11.9
* condition[1].code.coding.version = "2024"
* condition[2].code = http://fhir.de/CodeSystem/bfarm/icd-10-gm#I21.2
* condition[2].code.coding.version = "2024"
* condition[2].contributedToDeath = true
* extension[vonSEBetroffen].valueCodeableConcept.coding = http://snomed.info/sct#373066001 "Yes"
