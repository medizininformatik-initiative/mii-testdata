// Patient-3
Instance: mii-exa-test-data-patient-3-molgen-befundbericht-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht|1.0.0"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-report"
* extension[recommended-action][+].valueReference = Reference(mii-exa-test-data-patient-3-molgen-medikationsempfehlung-1)
* extension[recommended-action][+].valueReference = Reference(mii-exa-test-data-patient-3-molgen-folgemassnahme-1)
* extension[supportingInfo].valueReference = Reference(mii-exa-test-data-patient-3-molgen-family-member-history-1)
* basedOn = Reference(mii-exa-test-data-patient-3-molgen-anforderung-1)
* status = $diagnostic-report-status#final
* category[Genetics] = $v2-0074#GE "Genetics"
* code = $loinc#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-test-data-patient-3)
//* performer = Reference(mii-exa-molgen-practitioner-lab)
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)
//* result[gen-grouper] = Reference(mii-exa-molgen-gruppierung-beobachtungen-1)
* result[overall] = Reference(mii-exa-test-data-patient-3-molgen-ergebnis-zusammenfassung-1)
* result[diagnostic-implication] = Reference(mii-exa-test-data-patient-3-molgen-diagnostische-implikation-1)
* result[therapeutic-implication] = Reference(mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1)
* result[variant] = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* result[region-studied] = Reference(mii-exa-test-data-patient-3-molgen-untersuchte-region-1)
* result[genotype] = Reference(mii-exa-test-data-patient-3-molgen-genotyp-1)
* result[tumor-mutation-burden] = Reference(mii-exa-test-data-patient-3-molgen-mutationslast-1)
* result[microsatellite-instability] = Reference(mii-exa-test-data-patient-3-molgen-msi-1)
* conclusion = "BRAF p.V600E Mutation liegt vor. Bitte Therapieoption mit einem BRAF-Inhibitor prüfen."