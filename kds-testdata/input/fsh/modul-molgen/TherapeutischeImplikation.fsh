// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/therapeutische-implikation
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/therapeutische-implikation"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* code = $tbd-codes-cs#therapeutic-implication "Therapeutic Implication"
* category[labCategory] = $observation-category#laboratory "Laboratory"
* component[conclusion-string].code = $tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis einer aktivierenden Mutation BRAF V600E. Triple-Therapie mit einem EGFR-Antikörper sowie einem BRAF- und einem MEK- Inhibitor prüfen."
* component[medication-assessed][0].code = $loinc#51963-7 "Medication assessed [ID]"
* component[medication-assessed][0].valueCodeableConcept.coding[0] = $atc#L01EC "B-Raf serine-threonine kinase (BRAF) inhibitors"
* component[medication-assessed][0].valueCodeableConcept.coding[+] = $sct#703645005 "Product containing B-Raf inhibitor (product)"
* component[medication-assessed][0].valueCodeableConcept.text = "BRAF Inhibitor"
* component[medication-assessed][1].code = $loinc#51963-7 "Medication assessed [ID]"
* component[medication-assessed][1].valueCodeableConcept = $atc#L01FE "EGFR (Epidermal Growth Factor Receptor) inhibitors"
* component[medication-assessed][2].code = $loinc#51963-7 "Medication assessed [ID]"
* component[medication-assessed][2].valueCodeableConcept = $atc#L01EE "Mitogen-activated protein kinase (MEK) inhibitors"
* status = #final
* subject = Reference(mii-exa-test-data-patient-3)
* derivedFrom = Reference(mii-exa-test-data-patient-3-molgen-variante-1)