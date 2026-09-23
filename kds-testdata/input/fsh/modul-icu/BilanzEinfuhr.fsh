// ============================================================================
// ICU - Bilanz Einfuhr (Milch-/Saeuglingsprofile + orale Fluessigkeit)
// und generisches Bilanz-Elternprofil (nicht abstrakt -> direkte Instanz).
// ============================================================================

// Technische Abdeckung — klinisch plausibles NICU-Szenario ist als eigenes Patientenbundle vorgemerkt (.claude/todo)
Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-mumi-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-muttermilch
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Einfuhr Muttermilch (technische Abdeckung)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = $observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#1204299001 "Measured volume of intake of breast milk (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T06:00:00+02:00"
* valueQuantity = 40 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-einf-mumi-1"
* issued = "2024-05-06T08:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"

// Technische Abdeckung — klinisch plausibles NICU-Szenario ist als eigenes Patientenbundle vorgemerkt (.claude/todo)
Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-mumi-abgep-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-abgepumpte-muttermilch
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Einfuhr Abgepumpte Muttermilch (technische Abdeckung)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = $observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#819975003 "Intake of maternal expressed breast milk (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T06:00:00+02:00"
* valueQuantity = 35 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-einf-mumi-abgep-1"
* issued = "2024-05-06T08:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"

// Technische Abdeckung — klinisch plausibles NICU-Szenario ist als eigenes Patientenbundle vorgemerkt (.claude/todo)
Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-spendermilch-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-spendermilch
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Einfuhr Spendermilch (technische Abdeckung)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = $observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#819973005 "Donor breastmilk intake (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T06:00:00+02:00"
* valueQuantity = 30 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-einf-spendermilch-1"
* issued = "2024-05-06T08:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"

// Technische Abdeckung — klinisch plausibles NICU-Szenario ist als eigenes Patientenbundle vorgemerkt (.claude/todo)
Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-saeugling-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-saeuglingsnahrung
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Einfuhr Saeuglingsnahrung (technische Abdeckung)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = $observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#1204305004 "Measured volume of intake of infant formula"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T06:00:00+02:00"
* valueQuantity = 60 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-einf-saeugling-1"
* issued = "2024-05-06T08:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"

Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-oral-fluess-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-orale-fluessigkeit
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Einfuhr Orale Fluessigkeit"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = $observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251853006 "Oral fluid input (observable entity)"
* code.coding[loinc] = $loinc#9000-1 "Fluid intake oral Measured"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T06:00:00+02:00"
* valueQuantity = 150 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-einf-oral-fluess-1"
* issued = "2024-05-06T08:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"

// Generisches Bilanz-Profil (Elternprofil, abstract=false -> direkte Instanz)
Instance: mii-exa-test-data-patient-1-icu-bilanz-status-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz (generisch) - Fluessigkeitsbilanz-Status"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = $observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251856003 "Fluid balance status (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T06:00:00+02:00"
* valueQuantity = 300 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-status-1"
* issued = "2024-05-06T08:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
