// Patient-1
Instance: mii-exa-test-data-patient-1-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab|1.0.7-alpha1"
* insert AddDiagnosticReport(LDR_000001, mii-exa-test-data-patient-1)
* basedOn = Reference(mii-exa-test-data-patient-1-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T12:00:00+01:00"
* issued = "2024-02-15T12:00:00+01:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* result[0] = Reference(mii-exa-test-data-patient-1-labobs-1)
* result[1] = Reference(mii-exa-test-data-patient-1-labobs-2)
* result[2] = Reference(mii-exa-test-data-patient-1-labobs-3)
* result[3] = Reference(mii-exa-test-data-patient-1-labobs-4)
* result[4] = Reference(mii-exa-test-data-patient-1-labobs-5)
* result[5] = Reference(mii-exa-test-data-patient-1-labobs-6)
* conclusion = "Leukozyten hoch"