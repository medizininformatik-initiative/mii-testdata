Instance: mii-exa-test-data-patient-1-patho-attached-image
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image
Usage: #example
Title: "MII EXA Patho Attached Image"
Description: "Example for Attached Image"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image|1.0.0"
* status = #completed
* subject = Reference(mii-exa-test-data-patient-1-patho-prostate-tru-cut-biopsy-sample)
* content.contentType = #image/png
* content.url = "https://www.charite.de/fhir/sid/patho/image"

Instance: mii-exa-test-data-patient-1-patho-attached-image-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image
Usage: #example
Title: "MII EXA Patho Attached Image"
Description: "Example for Attached Image"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image|1.0.0"
* partOf = Reference(mii-exa-test-data-patient-1-patho-attached-image)
* status = #completed
* subject = Reference(mii-exa-test-data-patient-1-patho-prostate-tru-cut-biopsy-sample)
* content.contentType = #image/png
* content.url = "https://www.charite.de/fhir/sid/patho/image"