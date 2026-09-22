Instance: mii-exa-seltene-symptom-condition
InstanceOf: MII_PR_Seltene_Symptom_Condition
Usage: #example
Title: "MII Example SE Symptom Condition"
Description: "Example of a symptom condition in the context of rare diseases using HPO codes"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition)

// Clinical and verification status
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"

// Category - symptom condition
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"

// HPO code for a specific symptom (example: Muscle weakness)
* code = http://human-phenotype-ontology.org#HP:0001324 "Muscle weakness"
* code.text = "Muscle weakness"

// Severity using HPO severity values
* severity = http://human-phenotype-ontology.org#HP:0012825 "Mild"
* severity.text = "Mild severity"

// Subject reference (example patient)
* subject = Reference(mii-exa-seltene-patient)
* subject.display = "Example Patient"

// Temporal information - onset at age 15
* onsetAge.value = 15
* onsetAge.unit = "years"
* onsetAge.system = http://unitsofmeasure.org
* onsetAge.code = #a

// Recorded date
* recordedDate = "2024-01-15"

// Body site (if applicable)
* bodySite = http://snomed.info/sct#127954009 "Skeletal muscle structure"
* bodySite.text = "Skeletal muscle"

// Evidence supporting the condition
* evidence.code = http://human-phenotype-ontology.org#HP:0001324 "Muscle weakness"
* evidence.detail = Reference(Observation/mii-exa-seltene-hpo-assessment)

// Additional notes
* note.text = "Patient reports progressive muscle weakness affecting daily activities, particularly climbing stairs and lifting objects. Symptom has been gradually worsening over the past 2 years."
