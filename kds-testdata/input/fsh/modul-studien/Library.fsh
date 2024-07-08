Instance: mii-exa-test-data-register-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register"
* extension[0].url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-quell-register"
* extension[0].valueBoolean = true
* type = $library-type#asset-collection
* status = #active
* name = "DRKS - Deutsches Register Klinischer Studien"
* identifier.value = "DRKS"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/drks"
* relatedArtifact.document.url = "https://drks.de/"
* relatedArtifact.type = #documentation