Instance: mii-exa-test-data-organization-biobank-charite
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization
Usage: #example
Description: "Organization: Zentrale Biobank der Charité"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization|1.0.8"
* extension[beschreibung].url = "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-organization-description-extension"
* extension[beschreibung].valueString = "Zentrale Biobank der Charité"
* extension[collectionSetting].url = "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-sample-collection-setting-extension"
* extension[collectionSetting].valueCodeableConcept = $miabis-collection-setting#RoutineHealthCare "Routine health care setting"
* extension[collectionDesign].url = "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-collection-design-extension"
* extension[collectionDesign].valueCodeableConcept = $miabis-collection-design#DiseaseSpecificCohort "Disease-specific cohort"
* identifier[bbmri-eric-id].system = "http://www.bbmri-eric.eu/"
* identifier[bbmri-eric-id].value = "de-12345"
* name = "Zentrale Biobank der Charité"
* alias[0] = "ZeBanC"
* contact[forschungskontakt].purpose = $ContactType#RESEARCH
* contact[forschungskontakt].extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/KontaktRolle"
* contact[forschungskontakt].extension.valueString = "Direktor"
* contact[forschungskontakt].name.family = "Robert"
* contact[forschungskontakt].name.given = "Koch"
* contact[forschungskontakt].name.prefix = "Prof."
* contact[forschungskontakt].telecom.system = #email
* contact[forschungskontakt].telecom.value = "robert.koch@charite.de"
* contact[forschungskontakt].address.line = "Südring 7"
* contact[forschungskontakt].address.postalCode = "13353"
* contact[forschungskontakt].address.city = "Berlin"
* partOf = Reference(mii-exa-test-data-organization-charite)
