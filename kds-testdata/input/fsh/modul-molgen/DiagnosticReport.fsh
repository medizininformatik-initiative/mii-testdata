// Patient-3
Instance: mii-exa-test-data-patient-3-molgen-befundbericht-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht
Usage: #example
Description: "DiagnosticReport: Molekulargenetischer Befundbericht mit BRAF-Mutation"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report"
* extension[recommended-action][+].valueReference = Reference(mii-exa-test-data-patient-3-molgen-medikationsempfehlung-1)
* extension[recommended-action][+].valueReference = Reference(mii-exa-test-data-patient-3-molgen-folgemassnahme-1)
* extension[supportingInfo].valueReference = Reference(mii-exa-test-data-patient-3-molgen-family-member-history-1)
* extension[genomic-study].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-reference"
* extension[genomic-study].valueReference = Reference(mii-exa-test-data-patient-3-molgen-genomic-study-1)
* extension[genomic-risk-assessment].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-risk-assessment"
* extension[genomic-risk-assessment].valueReference = Reference(mii-exa-test-data-patient-3-molgen-polygener-risiko-score-1)
* basedOn = Reference(mii-exa-test-data-patient-3-molgen-anforderung-1)
* status = $diagnostic-report-status#final
* category[Genetics] = $v2-0074#GE "Genetics"
* code = $loinc#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* encounter = Reference(mii-exa-test-data-molgen-encounter-1)
* issued = "2022-04-12T10:30:00+02:00"
* performer = Reference(mii-exa-test-data-practitioner-physician-1)
* specimen = Reference(mii-exa-test-data-molgen-specimen-1)
* result[diagnostic-implication] = Reference(mii-exa-test-data-patient-3-molgen-diagnostische-implikation-1)
* result[therapeutic-implication] = Reference(mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1)
* result[variant] = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* result[genotype] = Reference(mii-exa-test-data-patient-3-molgen-genotyp-1)
* result[+] = Reference(mii-exa-test-data-patient-3-molgen-mutationslast-1)
* result[+] = Reference(mii-exa-test-data-patient-3-molgen-msi-1)
* conclusion = "BRAF p.V600E Mutation liegt vor. Bitte Therapieoption mit einem BRAF-Inhibitor pruefen."
* conclusionCode = $sct#10828004 "Positive (qualifier value)"

// Patient-4
Instance: mii-exa-test-data-patient-4-molgen-befundbericht-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht
Usage: #example
Description: "DiagnosticReport: Molekulargenetischer Befundbericht Magenkarzinom"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report"
* extension[supportingInfo].valueReference = Reference(mii-exa-test-data-patient-4-molgen-family-member-history-1)
* extension[genomic-study].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-reference"
* extension[genomic-study].valueReference = Reference(mii-exa-test-data-patient-4-molgen-genomic-study-1)
* basedOn = Reference(mii-exa-test-data-patient-4-molgen-anforderung-1)
* status = $diagnostic-report-status#final
* category[Genetics] = $v2-0074#GE "Genetics"
* code[+] = $loinc#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-test-data-molgen-patient-2)
* encounter = Reference(mii-exa-test-data-molgen-encounter-2)
* issued = "2022-12-05T14:00:00+01:00"
* performer = Reference(mii-exa-test-data-practitioner-physician-2)
* resultsInterpreter = Reference(mii-exa-test-data-practitioner-physician-2)
* specimen[0] = Reference(mii-exa-test-data-molgen-specimen-2)
* specimen[1] = Reference(mii-exa-test-data-molgen-specimen-3)
* result[diagnostic-implication] = Reference(mii-exa-test-data-patient-4-molgen-diagnostische-implikation-1)
* result[variant] = Reference(mii-exa-test-data-patient-4-molgen-variante-1)
* conclusion = "Nachweis der pathogenen Variante im CTNNA1-Gen."
