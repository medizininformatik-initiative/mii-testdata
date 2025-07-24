// Patient-1
Instance: mii-exa-test-data-patient-1-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Laborbericht für Patient 1"
* insert TestDataLabel
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

// Patient-2 DiagnosticReport
Instance: mii-exa-test-data-patient-2-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Laborbericht für Patient 2"
* insert TestDataLabel
* insert AddDiagnosticReport(LDR_000002, mii-exa-test-data-patient-2)
* basedOn = Reference(mii-exa-test-data-patient-2-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* effectiveDateTime = "2024-03-04T07:30:00+01:00"
* issued = "2024-03-04T11:30:00+01:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* specimen = Reference(mii-exa-test-data-patient-2-specimen-1)
* result[0] = Reference(mii-exa-test-data-patient-2-labobs-1)
* result[1] = Reference(mii-exa-test-data-patient-2-labobs-2)
* result[2] = Reference(mii-exa-test-data-patient-2-labobs-3)
* result[3] = Reference(mii-exa-test-data-patient-2-labobs-4)
* conclusion = "Panzytopenie bei Tumorpatient: Leukopenie (3,2/nL), Anämie (Hb 9,2 g/dL), Thrombozytopenie (120/nL). Chemotherapie-assoziierte Knochenmarkssuppression."

// Patient-3 DiagnosticReport
Instance: mii-exa-test-data-patient-3-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Laborbericht für Patient 3"
* insert TestDataLabel
* insert AddDiagnosticReport(LDR_000003, mii-exa-test-data-patient-3)
* basedOn = Reference(mii-exa-test-data-patient-3-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectiveDateTime = "2022-04-05T08:00:00+02:00"
* issued = "2022-04-05T13:00:00+02:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* specimen[0] = Reference(mii-exa-test-data-patient-3-specimen-2)
* specimen[1] = Reference(mii-exa-test-data-patient-3-specimen-3)
* result[0] = Reference(mii-exa-test-data-patient-3-labobs-1)
* result[1] = Reference(mii-exa-test-data-patient-3-labobs-2)
* result[2] = Reference(mii-exa-test-data-patient-3-labobs-3)
* conclusion = "Cholestatisches Leberschädigungsmuster: Erhöhte alkalische Phosphatase (156 U/L) und Hyperbilirubinämie (2,8 mg/dL). Leukozytose (12,5/nL). Vereinbar mit maligner Infiltration bei bekanntem Anorektalkarzinom."

// Patient-4 DiagnosticReport
Instance: mii-exa-test-data-patient-4-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Laborbericht für Patient 4"
* insert TestDataLabel
* insert AddDiagnosticReport(LDR_000004, mii-exa-test-data-patient-4)
* basedOn = Reference(mii-exa-test-data-patient-4-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-4-encounter-1)
* effectiveDateTime = "2020-09-17T07:15:00+02:00"
* issued = "2020-09-17T12:00:00+02:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* specimen[0] = Reference(mii-exa-test-data-patient-4-specimen-3)
* specimen[1] = Reference(mii-exa-test-data-patient-4-specimen-4)
* result[0] = Reference(mii-exa-test-data-patient-4-labobs-1)
* result[1] = Reference(mii-exa-test-data-patient-4-labobs-2)
* result[2] = Reference(mii-exa-test-data-patient-4-labobs-3)
* conclusion = "Hypercholesterinämie (6,2 mmol/L) bei normalem Kreatinin (0,9 mg/dL). Kardiovaskuläres Risikoprofil erhöht. Statin-Therapie empfohlen."

// Patient-5 DiagnosticReport
Instance: mii-exa-test-data-patient-5-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Laborbericht für Patient 5"
* insert TestDataLabel
* insert AddDiagnosticReport(LDR_000005, mii-exa-test-data-patient-5)
* basedOn = Reference(mii-exa-test-data-patient-5-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-5-encounter-1)
* effectiveDateTime = "2023-07-12T06:45:00+02:00"
* issued = "2023-07-12T10:15:00+02:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* specimen[0] = Reference(mii-exa-test-data-patient-5-specimen-1)
* specimen[1] = Reference(mii-exa-test-data-patient-5-specimen-2)
* result[0] = Reference(mii-exa-test-data-patient-5-labobs-1)
* result[1] = Reference(mii-exa-test-data-patient-5-labobs-2)
* result[2] = Reference(mii-exa-test-data-patient-5-labobs-3)
* conclusion = "Leichte Anämie (Hb 11,8 g/dL) bei normoglykämischen Nüchternwerten (92 mg/dL). Eisenmangel-Anämie bei Endometriose-Patientin wahrscheinlich."

// Patient-6 DiagnosticReport
Instance: mii-exa-test-data-patient-6-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Laborbericht für Patient 6"
* insert TestDataLabel
* insert AddDiagnosticReport(LDR_000006, mii-exa-test-data-patient-6)
* basedOn = Reference(mii-exa-test-data-patient-6-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-6-encounter-1)
* effectiveDateTime = "2022-03-14T07:00:00+01:00"
* issued = "2022-03-14T11:45:00+01:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* specimen[0] = Reference(mii-exa-test-data-patient-6-specimen-1)
* specimen[1] = Reference(mii-exa-test-data-patient-6-specimen-2)
* result[0] = Reference(mii-exa-test-data-patient-6-labobs-1)
* result[1] = Reference(mii-exa-test-data-patient-6-labobs-2)
* result[2] = Reference(mii-exa-test-data-patient-6-labobs-3)
* conclusion = "Hepatozelluläres Schädigungsmuster: Erhöhte Transaminasen (ALT 45 U/L, AST 38 U/L) bei chronischer Gastritis. Medikamenten-toxische oder inflammatorische Genese möglich."

// Patient-7 DiagnosticReport
Instance: mii-exa-test-data-patient-7-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Laborbericht für Patient 7"
* insert TestDataLabel
* insert AddDiagnosticReport(LDR_000007, mii-exa-test-data-patient-7)
* basedOn = Reference(mii-exa-test-data-patient-7-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-7-encounter-1)
* effectiveDateTime = "2024-01-10T08:15:00+01:00"
* issued = "2024-01-10T12:30:00+01:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* specimen[0] = Reference(mii-exa-test-data-patient-7-specimen-1)
* specimen[1] = Reference(mii-exa-test-data-patient-7-specimen-2)
* result[0] = Reference(mii-exa-test-data-patient-7-labobs-1)
* result[1] = Reference(mii-exa-test-data-patient-7-labobs-2)
* result[2] = Reference(mii-exa-test-data-patient-7-labobs-3)
* conclusion = "Akute bakterielle Infektion: Leukozytose (15,2/nL) und stark erhöhtes CRP (25,6 mg/L) bei akuter Bronchitis. Antibiotische Therapie indiziert."

// Patient-8 DiagnosticReport
Instance: mii-exa-test-data-patient-8-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Laborbericht für Patient 8"
* insert TestDataLabel
* insert AddDiagnosticReport(LDR_000008, mii-exa-test-data-patient-8)
* basedOn = Reference(mii-exa-test-data-patient-8-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-8-encounter-1)
* effectiveDateTime = "2023-11-12T06:30:00+01:00"
* issued = "2023-11-12T10:45:00+01:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* specimen[0] = Reference(mii-exa-test-data-patient-8-specimen-1)
* specimen[1] = Reference(mii-exa-test-data-patient-8-specimen-2)
* result[0] = Reference(mii-exa-test-data-patient-8-labobs-1)
* result[1] = Reference(mii-exa-test-data-patient-8-labobs-2)
* result[2] = Reference(mii-exa-test-data-patient-8-labobs-3)
* conclusion = "ST-Hebungsinfarkt (STEMI): Kritisch erhöhtes Troponin T (2,8 ng/mL) und CK-MB (85 U/L) bestätigen akuten Myokardinfarkt. Sofortige Reperfusionstherapie erforderlich."

// Patient-9 DiagnosticReport
Instance: mii-exa-test-data-patient-9-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Laborbericht für Patient 9"
* insert TestDataLabel
* insert AddDiagnosticReport(LDR_000009, mii-exa-test-data-patient-9)
* basedOn = Reference(mii-exa-test-data-patient-9-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-9-encounter-1)
* effectiveDateTime = "2024-02-22T07:15:00+01:00"
* issued = "2024-02-22T11:00:00+01:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* specimen[0] = Reference(mii-exa-test-data-patient-9-specimen-1)
* specimen[1] = Reference(mii-exa-test-data-patient-9-specimen-2)
* result[0] = Reference(mii-exa-test-data-patient-9-labobs-1)
* result[1] = Reference(mii-exa-test-data-patient-9-labobs-2)
* result[2] = Reference(mii-exa-test-data-patient-9-labobs-3)
* conclusion = "Normale Blutbild-Parameter bei prämenopausaler Frau. Estradiol-Spiegel (285 pmol/L) im Normbereich für reproduktive Phase. Ovarialzyste ohne Hormonaktivität."

// Patient-10 DiagnosticReport
Instance: mii-exa-test-data-patient-10-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Laborbericht für Patient 10"
* insert TestDataLabel
* insert AddDiagnosticReport(LDR_000010, mii-exa-test-data-patient-10)
* basedOn = Reference(mii-exa-test-data-patient-10-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-10-encounter-1)
* effectiveDateTime = "2019-05-16T08:30:00+02:00"
* issued = "2019-05-16T13:15:00+02:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* specimen[0] = Reference(mii-exa-test-data-patient-10-specimen-1)
* specimen[1] = Reference(mii-exa-test-data-patient-10-specimen-2)
* result[0] = Reference(mii-exa-test-data-patient-10-labobs-1)
* result[1] = Reference(mii-exa-test-data-patient-10-labobs-2)
* result[2] = Reference(mii-exa-test-data-patient-10-labobs-3)
* conclusion = "Unauffällige Routine-Laborwerte bei Migräne-Patientin: Blutbild und Nierenfunktion (Kreatinin 1,1 mg/dL) im Normbereich. Keine sekundäre Ursache der Kopfschmerzen erkennbar."