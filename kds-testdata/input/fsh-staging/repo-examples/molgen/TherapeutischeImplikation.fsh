Instance: mii-exa-molgen-therapeutische-implikation-1
InstanceOf: mii-pr-molgen-therapeutische-implikation
Usage: #example
Title: "BRAF Variante Therapeutische Implikation"
Description: "Beispiel für therapeutische Implikation abgeleitet von genetische Variante im BRAF Gen an Hand von NGS."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/therapeutische-implikation)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication|3.0.0"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#therapeutic-implication "Therapeutic Implication"
* subject = Reference(mii-exa-molgen-patient)
* effectiveDateTime = "2022-04-07"
* performer = Reference(mii-exa-molgen-practitioner-lab)
* derivedFrom[variant] = Reference(mii-exa-molgen-variante-1)
* component[conclusion-string].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis einer aktivierenden Mutation BRAF V600E. Triple-Therapie mit einem EGFR-Antikörper sowie einem BRAF- und einem MEK- Inhibitor prüfen."
* component[medication-assessed][+].code = http://loinc.org#51963-7 "Medication assessed [ID]"
* component[medication-assessed][=].valueCodeableConcept.coding[0] = http://www.whocc.no/atc#L01EC "B-Raf serine-threonine kinase (BRAF) inhibitors"
* component[medication-assessed][=].valueCodeableConcept.coding[1] = http://snomed.info/sct#703645005 "Product containing B-Raf inhibitor (product)"
* component[medication-assessed][=].valueCodeableConcept.text = "BRAF Inhibitor"
* component[medication-assessed][+].code = http://loinc.org#51963-7 "Medication assessed [ID]"
* component[medication-assessed][=].valueCodeableConcept.coding[0] = http://www.whocc.no/atc#L01FE "EGFR (Epidermal Growth Factor Receptor) inhibitors"
* component[medication-assessed][+].code = http://loinc.org#51963-7 "Medication assessed [ID]"
* component[medication-assessed][=].valueCodeableConcept = http://www.whocc.no/atc#L01EE "Mitogen-activated protein kinase (MEK) inhibitors"
