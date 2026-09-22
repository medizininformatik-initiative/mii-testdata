Instance: mii-exa-seltene-hpo-assessment
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "HPO Symptom Observation Example"
Description: "Example of an HPO-based phenotypic observation for intellectual disability."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* code = http://human-phenotype-ontology.org#HP:0001249 "Intellectual disability"
* subject = Reference(mii-exa-seltene-patient)
* status = #final
* effectiveDateTime = "2024-01-15"
* component[status].code = http://snomed.info/sct#260411009 "Presence findings"
* component[status].valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* note.text = "Patient shows signs of intellectual disability with learning difficulties in academic settings."

Instance: mii-exa-seltene-hpo-assessment-excluded
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "HPO Assessment - Excluded Phenotype"
Description: "Example of an explicitly excluded phenotype (arachnodactyly ruled out during Marfan syndrome workup)."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* code = http://human-phenotype-ontology.org#HP:0001166 "Arachnodactyly"
* subject = Reference(mii-exa-seltene-patient)
* status = #final
* effectiveDateTime = "2024-01-15"
* component[status].code = http://snomed.info/sct#260411009 "Presence findings"
* component[status].valueCodeableConcept = http://loinc.org#LA9634-2 "Absent"
* note.text = "Arachnodactyly explicitly excluded during clinical examination. Arm span/height ratio within normal limits. Demonstrates HL7 Phenomics IG pattern for excluded phenotypes."

Instance: mii-exa-seltene-hpo-assessment-severity
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "HPO Assessment - Present with Severity"
Description: "Example of a phenotype with both status (present) and severity grading. Demonstrates HL7 Phenomics IG component pattern."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* code = http://human-phenotype-ontology.org#HP:0001638 "Cardiomyopathy"
* subject = Reference(mii-exa-seltene-patient)
* status = #final
* effectiveDateTime = "2024-01-15"
* component[status].code = http://snomed.info/sct#260411009 "Presence findings"
* component[status].valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* component[severity].code = http://human-phenotype-ontology.org#HP:0012824 "Severity"
* component[severity].valueCodeableConcept = http://human-phenotype-ontology.org#HP:0012826 "Moderate"
* note.text = "Moderate cardiomyopathy confirmed by echocardiography. Both presence status and severity grade are captured in separate components."

// Mapping to Logical Model
