Instance: mii-exa-test-data-organization-biobank-charite
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization|1.0.8"
* extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/BeschreibungSammlung"
* extension.valueMarkdown = "Zentrale Biobank der Charité"
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
