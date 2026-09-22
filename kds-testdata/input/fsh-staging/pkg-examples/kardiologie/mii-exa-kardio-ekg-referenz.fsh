Instance: mii-exa-kardio-ekg-referenz
InstanceOf: DocumentReference
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-referenz"
* contained = Beispielpatient
* author = Reference(mii-exa-kardio-ekg-geraet-mortara)
* content.attachment.contentType = #application/dicom
* content.attachment.url = "https://example.com/EKGs/beispiel-ekg"
* content.attachment.title = "Beispiel EKG an einem anteren Ort"
* type = http://loinc.org#11524-6 "EKG study"
* language = #de
* status = #current
* subject = Reference(Beispielpatient)
* date = "2025-07-17T16:41:22+02:00"