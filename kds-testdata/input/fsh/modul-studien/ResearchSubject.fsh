Instance: mii-exa-test-data-studie-researchsubject-1
InstanceOf: ResearchSubject
Usage: #example
Description: "ResearchSubject: Patient-1 als Studienteilnehmer der MII-BIOMARKER-2024 Studie"
* insert TestDataLabel
* identifier[0].type = $v2-0203#ANON
* identifier[0].system = "https://www.medizininformatik-initiative.de/fhir/core/sid/SubjectIdentificationCode"
* identifier[0].value = "BIOM-2024-00142"
* status = #on-study
* period.start = "2024-03-15"
* study = Reference(mii-exa-test-data-studie-studie-1)
* individual = Reference(mii-exa-test-data-patient-1)
* consent = Reference(mii-exa-test-data-patient-1-consent-1)
