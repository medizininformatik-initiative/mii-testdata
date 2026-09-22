Instance: mii-exa-molgen-prs-brca1
InstanceOf: mii-pr-molgen-polygener-risiko-score
Usage: #example
Title: "Polygener Risiko Score BRCA1 Variante"
Description: "Beispiel für Polygenen Risiko Score bei Variante BRCA1"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/polygener-risiko-score)
* status = #final
* subject = Reference(mii-exa-molgen-patient-2)
* occurrenceDateTime = "2022-11-01"
* basis = Reference(mii-exa-molgen-variante-brca1)
* prediction.outcome = http://snomed.info/sct#718220008 "Hereditary breast and ovarian cancer syndrome (disorder)"
* prediction.qualitativeRisk = RiskProbability#high "High likelihood"
* prediction.extension[whenCodeableConcept].valueCodeableConcept = http://snomed.info/sct#414152003 "European (ethnic group)"
* prediction.extension[whenCodeableConcept].valueCodeableConcept.text = "Der verwendete Polygene Risikoscore wurde bisher nur für die europäische Bevölkerung bei Brustkrebs validiert."
