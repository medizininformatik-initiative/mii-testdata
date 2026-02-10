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

// CT Thorax scenario
Instance: mii-exa-test-data-koerperstruktur-ct
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur
Usage: #example
Description: "BodyStructure: Lungenrundherd rechter Oberlappen"
* insert TestDataLabel
* morphology = $sct#427359005 "Solitary nodule of lung (disorder)"
* location = $sct#44029006 "Structure of anterior segment of upper lobe of right lung (body structure)"
* locationQualifier = $sct#24028007 "Right (qualifier value)"
* description = "Solitaerer pulmonaler Rundherd, 18 mm Durchmesser, unregelmae\u00DFig begrenzt mit Spiculae, im Segment 3 des rechten Oberlappens"
* patient = Reference(mii-exa-test-data-patient-2)