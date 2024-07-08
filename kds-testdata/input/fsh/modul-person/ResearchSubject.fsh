Instance: mii-exa-person-researchsubject-studienteilnehmer
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/ResearchSubject|2024.0.0"
* identifier[subjectIdentificationCode].type = $v2-0203#ANON
* identifier[subjectIdentificationCode].system = "https://www.medizininformatik-initiative.de/fhir/core/sid/SubjectIdentificationCode"
* identifier[subjectIdentificationCode].value = "123456789"
* status = #candidate
* period.start = "2024-03-06"
* study = Reference(mii-exa-test-data-researchstudy-1)
* individual = Reference(mii-exa-test-data-patient-1)
* consent = Reference(mii-exa-test-data-patient-1-consent-1)