// Patient-1
Instance: mii-exa-test-data-patient-1-icu-herzfrequenz-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-herzfrequenz
Usage: #example
Description: "ICU Observation: Herzfrequenz für Patient 1"
* insert TestDataLabel
* status = #final
* category[vs-cat] = $observation-category#vital-signs "Vital Signs"
* code.coding[sct] = $sct#364075005 "Heart rate (observable entity)"
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE-11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity.value = 78
* valueQuantity.unit = "beats per minute"
* valueQuantity.system = $ucum
* valueQuantity.code = #/min

// Atemfrequenz Patient-1
Instance: mii-exa-test-data-patient-1-icu-atemfrequenz-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-atemfrequenz
Usage: #example
Description: "ICU Observation: Atemfrequenz für Patient-1"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/icu-identifier"
* identifier.value = "234567890"
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code.coding[loinc] = $loinc#9279-1 "Respiratory rate"
* code.coding[snomed] = $sct#86290005 "Respiratory rate (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T09:30:10+01:00"
* valueQuantity.value = 18
* valueQuantity.unit = "breaths per minute"
* valueQuantity.system = $ucum
* valueQuantity.code = #/min

// Arterieller Druck (ECT) Patient-1
Instance: mii-exa-test-data-patient-1-icu-ect-art-druck-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-arterieller-druck
Usage: #example
Description: "ICU Observation: Arterieller Druck (ECT) für Patient-1"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/icu-identifier"
* identifier.value = "123456789"
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-verfahren-1)
* status = #final
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code.coding[sct] = $sct#386534000 "Arterial blood pressure (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T09:30:10+01:00"
* valueQuantity = 20 'mm[Hg]'
* device = Reference(mii-exa-test-data-icu-devicemetric-ect-1)

// Dauer Extrakorporaler Gasaustausch Patient-1
Instance: mii-exa-test-data-patient-1-icu-ect-dauer-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dauer-extrakorporaler-gasaustausch
Usage: #example
Description: "ICU Observation: Dauer Extrakorporaler Gasaustausch für Patient-1"
* insert TestDataLabel
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-verfahren-1)
* status = #final
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code.coding[sct] = $sct#251286000 "Extracorporeal gas exchange duration (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T09:30:10+01:00"
* valueQuantity = 72 'h'
* device = Reference(mii-exa-test-data-icu-devicemetric-ect-1)

// Bilanz Abnahme Haemofiltration Einzelmesswerte Patient-1
Instance: mii-exa-test-data-patient-1-icu-bilanz-haemo-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-abnahme-haemofiltration-einzelmesswerte
Usage: #example
Description: "ICU Observation: Bilanz Abnahme Haemofiltration Einzelmesswerte für Patient-1"
* insert TestDataLabel
* identifier.system = "https://simplifier.net/medizininformatikinitiative-modul-intensivmedizin/example-identifier"
* identifier.value = "bilanz-abnahme-haemofiltration-einzelmesswerte"
* status = #final
* category.coding[hl7-category] = $observation-category#vital-sign "Vital Signs"
* category.coding[kdsicu-category] = $sct#364396009 "Observing patient (regime/therapy)"
* code.coding[sct] = $sct#251850009 "Haemofiltration rate (observable entity)"
* code.coding[loinc] = $loinc#99741-1
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T09:30:10+01:00"
* issued = "2024-02-14T09:30:10+01:00"
* valueQuantity = 200 'mL'
* interpretation.coding = $v3-ObservationInterpretation#EX "outside threshold"
* bodySite.coding = $sct#368209003 "Right upper arm structure (body structure)"
* specimen = Reference(mii-exa-test-data-patient-1-icu-specimen-1)
* device = Reference(mii-exa-test-data-icu-device-1)
* referenceRange.low = 150 'mL'
* referenceRange.high = 250 'mL'
