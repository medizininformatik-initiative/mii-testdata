Instance: mii-exa-patho-request
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request
Usage: #example
* intent = #order
* category = http://snomed.info/sct#726007 "Pathology consultation, comprehensive, records and specimen with report"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* identifier.value = "KHXX_ENDO_18.123451"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/untersuchungsauftrag"
* status = #completed
* subject = Reference(mii-exa-patho-patient-12345)
* encounter = Reference(mii-exa-patho-encounter-87687)
* requester = Reference(mii-exa-patho-practitioner-34456)
* code = http://snomed.info/sct#726007 "Pathology consultation, comprehensive, records and specimen with report"
* supportingInfo[0] = Reference(mii-exa-patho-history-of-present-illness)
* supportingInfo[+] = Reference(mii-exa-patho-active-problems-list)
* specimen = Reference(mii-exa-patho-prostate-tru-cut-biopsy-sample)