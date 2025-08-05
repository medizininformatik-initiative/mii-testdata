Instance: mii-exa-test-data-koerperstruktur
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur
Usage: #example
Description: "BodyStructure: Körperstruktur"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur"
* morphology = $sct#12747003 "Microcalcification, calcified structure (morphologic abnormality)"
* location = $sct#76752008 "Breast structure (body structure)"
* locationQualifier = $sct#7771000 "Left (qualifier value)"
* patient = Reference(mii-exa-test-data-patient-1)