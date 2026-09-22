Instance: mii-exa-labor-laboranforderung
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST "test health data"
* status = #completed
* intent = #order
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* identifier.system = "https://example.org/fhir/sid/anforderung-lab-identifier"
* identifier.value = "1234567890"
* identifier.assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier.assigner.identifier.value = "DIZ-ID"
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://example.org/fhir/CodeSystem/LabTests#GroßesBlutbild
* subject = Reference(111)
* authoredOn = "2018-11-20T10:28:00+01:00"
* specimen = Reference(4999)