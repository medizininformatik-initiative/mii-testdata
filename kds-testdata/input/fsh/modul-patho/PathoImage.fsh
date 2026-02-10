// -------------------------------------------------------
// Patho Attached Images for Patient-1
// -------------------------------------------------------

// Image 1: Macroscopic photograph of biopsy specimen
Instance: mii-exa-test-data-patient-1-patho-image-1
InstanceOf: mii-pr-patho-attached-image
Usage: #example
Description: "Patho Image: Makroskopisches Foto der Prostata-Stanzbiopsie"
* insert TestDataLabel
* status = #completed
* type.coding[image] = $media-type#image
* modality = $sct#116858009 "Anatomical pathology technique (qualifier value)"
* subject = Reference(mii-exa-test-data-patient-1-patho-specimen-1)
* content.contentType = #image/jpeg
* content.url = "https://www.charite.de/fhir/patho/images/E24.00001-macro.jpg"
* content.title = "Makroskopie Prostata-Stanzbiopsie A"

// Image 2: Microscopic HE-stained slide scan
Instance: mii-exa-test-data-patient-1-patho-image-2
InstanceOf: mii-pr-patho-attached-image
Usage: #example
Description: "Patho Image: Mikroskopisches Bild des HE-gefaerbten Schnitts"
* insert TestDataLabel
* status = #completed
* type.coding[image] = $media-type#image
* modality = $sct#104157003 "Light microscopy (procedure)"
* subject = Reference(mii-exa-test-data-patient-1-patho-specimen-2)
* content.contentType = #image/png
* content.url = "https://www.charite.de/fhir/patho/images/E24.00001-A1-HE-micro.png"
* content.title = "HE-Schnitt Prostata-Stanzbiopsie A - Mikroskopie"
