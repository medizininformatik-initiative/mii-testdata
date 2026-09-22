// ============================================================================
// ISiK Vitalparameter Test Data - sd-mii-icu-Monitoring-Familie (ISiK 6.0.0)
// Die ISiK-6.0.0-Spezifikation bettet die MII-ICU-Monitoring-Profile
// (sd-mii-icu-*) unter gematik-Canonicals ein (Co-Entwicklung ISiK/MII-ICU).
// Abgedeckt: Elternprofil sd-mii-icu-monitoring-und-vitaldaten (konkret),
// alle haemodynamischen Einzelwerte, O2-Saettigungen (Pulsoxymetrie x3),
// Percentilen sowie die pulsatile Druck-Familie
// (sd-mii-icu-sonstige-pulsatile-druecke-generisch + 5 Ableitungen,
// value[x] 0..0 - Werte in component SystolicBP/DiastolicBP/meanBP).
// Szenario: erweitertes haemodynamisches Monitoring am 2026-05-12 (technisch).
// ============================================================================

// Gemeinsames Geruest der Monitoring-Instanzen (Kategorie-Slice vs-cat)
RuleSet: IsikMuvBase(time)
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "{time}"
* performer.display = "Pflegefachkraft Station 14i"

// Gemeinsames Geruest der pulsatilen Druecke (category ohne Slicing)
RuleSet: IsikPulsatilBase(time)
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#vital-signs
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "{time}"
* performer.display = "Pflegefachkraft Station 14i"

// ---------------------------------------------------------------------------
// Elternprofil (konkret, generische Instanz): Herzfrequenz aus den
// required-Bindings vs-mii-icu-code-monitoring-und-vitaldaten-snomed/-loinc
// ---------------------------------------------------------------------------
Instance: mii-exa-test-data-isik-vitalparameter-muv-generisch-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-monitoring-und-vitaldaten
Usage: #example
Description: "MII-ICU Monitoring und Vitaldaten (generisch): Herzfrequenz 82/min"
* insert IsikMuvBase(2026-05-12T10:00:00+02:00)
* code.coding[sct] = $sct#364075005 "Heart rate (observable entity)"
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* valueQuantity = 82 '/min' "beats per minute"

// Puls: 76/min (kein LOINC-Coding erlaubt, loinc-Slice 0..0)
Instance: mii-exa-test-data-isik-vitalparameter-puls-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-puls
Usage: #example
Description: "MII-ICU Puls: 76/min (palpatorisch A. radialis)"
* insert IsikMuvBase(2026-05-12T10:00:00+02:00)
* code.coding[sct] = $sct#8499008 "Pulse, function (observable entity)"
* code.coding[IEEE-11073] = $11073-10101#149514
* valueQuantity = 76 '/min' "beats per minute"
* bodySite = $sct#11527006 "Structure of radial artery (body structure)"

// Herzzeitvolumen: 4.8 L/min
Instance: mii-exa-test-data-isik-vitalparameter-hzv-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-herzzeitvolumen
Usage: #example
Description: "MII-ICU Herzzeitvolumen: 4.8 L/min"
* insert IsikMuvBase(2026-05-12T10:05:00+02:00)
* code.coding[sct] = $sct#82799009 "Cardiac output (observable entity)"
* code.coding[loinc] = $loinc#8741-1 "Cardiac output"
* code.coding[IEEE-11073] = $11073-10101#150276
* valueQuantity = 4.8 'L/min' "liter per minute"

// Ideales Koerpergewicht: 63 kg (Devine-Formel, 172 cm, weiblich)
Instance: mii-exa-test-data-isik-vitalparameter-ideales-gewicht-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-ideales-koerpergewicht
Usage: #example
Description: "MII-ICU Ideales Koerpergewicht: 63 kg"
* insert IsikMuvBase(2026-05-12T10:05:00+02:00)
* code.coding[sct] = $sct#170804003 "Ideal body weight (observable entity)"
* code.coding[loinc] = $loinc#50064-5 "Ideal body weight"
* code.coding[IEEE-11073] = $11073-10101#188796
* valueQuantity = 63 'kg' "kilogram"

// Intrakranieller Druck (ICP): 12 mmHg
Instance: mii-exa-test-data-isik-vitalparameter-icp-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-intrakranieller-druck-icp
Usage: #example
Description: "MII-ICU Intrakranieller Druck (ICP): 12 mmHg"
* insert IsikMuvBase(2026-05-12T10:10:00+02:00)
* code.coding[sct] = $sct#250844005 "Intracranial pressure (observable entity)"
* code.coding[loinc] = $loinc#60956-0 "Intracranial pressure"
* code.coding[IEEE-11073] = $11073-10101#153608
* valueQuantity = 12 'mm[Hg]' "millimeter Mercury column"
* bodySite = $sct#731998000 "Entire intracranial subarachnoid space (body structure)"

// Koerpergewicht-Percentil (altersabhaengig): 45 %
Instance: mii-exa-test-data-isik-vitalparameter-gewicht-percentil-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpergewicht-percentil-altersabhaengig
Usage: #example
Description: "MII-ICU Koerpergewicht-Percentil (altersabhaengig): 45 %"
* insert IsikMuvBase(2026-05-12T10:10:00+02:00)
* category[sct] = $sct#248326004 "Body measure (observable entity)"
* code.coding[sct] = $sct#1153592008 "Weight for age percentile (observable entity)"
* code.coding[loinc] = $loinc#8336-0 "Body weight [Percentile] Per age"
* valueQuantity = 45 '%' "percent"

// Koerpergroesse-Percentil (altersabhaengig): 40 % (nur SNOMED-Coding, LOINC 0..0)
Instance: mii-exa-test-data-isik-vitalparameter-groesse-percentil-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpergroesse-percentil-altersabhaengig
Usage: #example
Description: "MII-ICU Koerpergroesse-Percentil (altersabhaengig): 40 %"
* insert IsikMuvBase(2026-05-12T10:10:00+02:00)
* category[sct] = $sct#248326004 "Body measure (observable entity)"
* code.coding[sct] = $sct#1153605006 "Body height for age percentile (observable entity)"
* valueQuantity = 40 '%' "percent"

// ---------------------------------------------------------------------------
// Linksventrikulaere Volumina und Indizes
// ---------------------------------------------------------------------------

// Linksventrikulaerer Herzindex: 2.9 L/min/m2
Instance: mii-exa-test-data-isik-vitalparameter-lv-herzindex-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventrikulaerer-herzindex
Usage: #example
Description: "MII-ICU Linksventrikulaerer Herzindex: 2.9 L/min/m2"
* insert IsikMuvBase(2026-05-12T10:15:00+02:00)
* code.coding[sct] = $sct#54993008 "Cardiac index (observable entity)"
* code.coding[loinc] = $loinc#75919-1 "Cardiac index by Indicator dilution"
* code.coding[IEEE-11073] = $11073-10101#149772
* valueQuantity = 2.9 'L/min/m2' "liter per minute and square meter"
* bodySite = $sct#87878005 "Left cardiac ventricular structure (body structure)"

// Linksventrikulaeres Schlagvolumen: 70 mL
Instance: mii-exa-test-data-isik-vitalparameter-lv-schlagvolumen-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventrikulaeres-schlagvolumen
Usage: #example
Description: "MII-ICU Linksventrikulaeres Schlagvolumen: 70 mL"
* insert IsikMuvBase(2026-05-12T10:15:00+02:00)
* code.coding[sct] = $sct#90096001 "Cardiac stroke volume (observable entity)"
* code.coding[loinc] = $loinc#20562-5 "Left ventricular Stroke volume"
* code.coding[IEEE-11073] = $11073-10101#150408
* valueQuantity = 70 'mL' "milliliter"
* bodySite = $sct#244385005 "Entire left ventricle (body structure)"

// Linksventrikulaerer Schlagvolumenindex: 37 mL/m2
Instance: mii-exa-test-data-isik-vitalparameter-lv-svi-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventrikulaeres-schlagvolumenindex
Usage: #example
Description: "MII-ICU Linksventrikulaerer Schlagvolumenindex: 37 mL/m2"
* insert IsikMuvBase(2026-05-12T10:15:00+02:00)
* code.coding[loinc] = $loinc#76297-1 "Stroke volume index"
* code.coding[IEEE-11073] = $11073-10101#150636
* valueQuantity = 37 'mL/m2' "milliliter per square meter"
* bodySite = $sct#87878005 "Left cardiac ventricular structure (body structure)"

// Herzindex durch Indikatorverduennung: 2.8 L/min/m2 (value[x] 1..1)
Instance: mii-exa-test-data-isik-vitalparameter-lv-hi-ind-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventri-herzindex-durch-indikatorverduennung
Usage: #example
Description: "MII-ICU Herzindex durch Indikatorverduennung: 2.8 L/min/m2"
* insert IsikMuvBase(2026-05-12T10:20:00+02:00)
* code.coding[loinc] = $loinc#8751-0 "Cardiac index by Indicator dilution"
* valueQuantity = 2.8 'L/min/m2' "liter per minute and square meter"

// Schlagvolumen durch Indikatorverduennung: 68 mL
Instance: mii-exa-test-data-isik-vitalparameter-lv-sv-ind-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventri-schlagvolumen-durch-indikatorverduennung
Usage: #example
Description: "MII-ICU Schlagvolumen durch Indikatorverduennung: 68 mL"
* insert IsikMuvBase(2026-05-12T10:20:00+02:00)
* code.coding[loinc] = $loinc#8771-8 "Stroke volume by Indicator dilution"
* valueQuantity = 68 'mL' "milliliter"

// Schlagvolumenindex durch Indikatorverduennung: 36 mL/m2
Instance: mii-exa-test-data-isik-vitalparameter-lv-svi-ind-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventri-schlagvolumenindex-durch-indikatorverd
Usage: #example
Description: "MII-ICU Schlagvolumenindex durch Indikatorverduennung: 36 mL/m2"
* insert IsikMuvBase(2026-05-12T10:20:00+02:00)
* code.coding[loinc] = $loinc#8791-6 "Stroke volume index by Indicator dilution"
* valueQuantity = 36 'mL/m2' "milliliter per square meter"

// Herzzeitvolumen durch Indikatorverduennung: 4.9 L/min
Instance: mii-exa-test-data-isik-vitalparameter-lv-hzv-ind-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventri-herzzeitvolumen-durch-indikatorverd
Usage: #example
Description: "MII-ICU Herzzeitvolumen durch Indikatorverduennung: 4.9 L/min"
* insert IsikMuvBase(2026-05-12T10:20:00+02:00)
* code.coding[loinc] = $loinc#8737-9 "Cardiac output by Indicator dilution"
* valueQuantity = 4.9 'L/min' "liter per minute"

// ---------------------------------------------------------------------------
// Sauerstoffsaettigungen (Pulsoxymetrie)
// ---------------------------------------------------------------------------

// O2-Saettigung arteriell (Pulsoxymetrie): 96 %
Instance: mii-exa-test-data-isik-vitalparameter-o2sat-art-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-o2saettigung-im-arteriellen-blut-durch-pulsoxymetrie
Usage: #example
Description: "MII-ICU O2-Saettigung im arteriellen Blut (Pulsoxymetrie): 96 %"
* insert IsikMuvBase(2026-05-12T10:25:00+02:00)
* code.coding[sct] = $sct#442476006 "Oxygen saturation in arterial blood (observable entity)"
* code.coding[loinc] = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* code.coding[IEEE-11073] = $11073-10101#150324
* valueQuantity = 96 '%' "percent"
* bodySite = $sct#11527006 "Structure of radial artery (body structure)"

// O2-Saettigung praeduktal (Pulsoxymetrie, rechte Hand): 97 %
Instance: mii-exa-test-data-isik-vitalparameter-o2sat-praeduktal-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-o2saettigung-im-blut-preduktal-durch-pulsoxymetrie
Usage: #example
Description: "MII-ICU O2-Saettigung praeduktal (Pulsoxymetrie): 97 %"
* insert IsikMuvBase(2026-05-12T10:25:00+02:00)
* code.coding[loinc] = $loinc#59407-7 "Oxygen saturation in Blood Preductal by Pulse oximetry"
* code.coding[IEEE-11073] = $11073-10101#160296
* valueQuantity = 97 '%' "percent"

// O2-Saettigung postduktal (Pulsoxymetrie, Fuss): 95 %
Instance: mii-exa-test-data-isik-vitalparameter-o2sat-postduktal-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-o2saettigung-im-blut-postduktal-durch-pulsoxymetrie
Usage: #example
Description: "MII-ICU O2-Saettigung postduktal (Pulsoxymetrie): 95 %"
* insert IsikMuvBase(2026-05-12T10:25:00+02:00)
* code.coding[loinc] = $loinc#59418-4 "Oxygen saturation in Blood Postductal by Pulse oximetry"
* code.coding[IEEE-11073] = $11073-10101#160300
* valueQuantity = 95 '%' "percent"

// ---------------------------------------------------------------------------
// Nicht-pulsatile Druecke und Widerstandsindizes
// ---------------------------------------------------------------------------

// Pulmonalarterieller Wedge-Druck: 12 mmHg
Instance: mii-exa-test-data-isik-vitalparameter-wedge-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-pulmonalarterieller-wedge-druck
Usage: #example
Description: "MII-ICU Pulmonalarterieller Wedge-Druck: 12 mmHg"
* insert IsikMuvBase(2026-05-12T10:30:00+02:00)
* code.coding[sct] = $sct#118433006 "Pulmonary artery wedge pressure (observable entity)"
* code.coding[loinc] = $loinc#75994-4 "Pulmonary artery Wedge pressure"
* code.coding[IEEE-11073] = $11073-10101#150052
* valueQuantity = 12 'mm[Hg]' "millimeter Mercury column"
* bodySite = $sct#430160002 "Structure of branch of pulmonary artery (body structure)"

// Pulmonalvaskulaerer Widerstandsindex: 220 dyn.s/cm5/m2
Instance: mii-exa-test-data-isik-vitalparameter-pvri-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-pulmonalvaskulaerer-widerstandsindex
Usage: #example
Description: "MII-ICU Pulmonalvaskulaerer Widerstandsindex: 220 dyn.s/cm5/m2"
* insert IsikMuvBase(2026-05-12T10:30:00+02:00)
* code.coding[sct] = $sct#276902009 "Pulmonary vascular resistance index (observable entity)"
* code.coding[loinc] = $loinc#8834-4 "Pulmonary vascular resistance index"
* code.coding[IEEE-11073] = $11073-10101#152852
* valueQuantity = 220 'dyn.s/cm5/m2' "dyne second per centimeter5 and square meter"

// Systemischer vaskulaerer Widerstandsindex: 1900 dyn.s/cm5/m2
Instance: mii-exa-test-data-isik-vitalparameter-svri-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-systemischer-vaskulaerer-widerstandsindex
Usage: #example
Description: "MII-ICU Systemischer vaskulaerer Widerstandsindex: 1900 dyn.s/cm5/m2"
* insert IsikMuvBase(2026-05-12T10:30:00+02:00)
* code.coding[sct] = $sct#276900001 "Systemic vascular resistance index (observable entity)"
* code.coding[loinc] = $loinc#8837-7 "Systemic vascular resistance index"
* code.coding[IEEE-11073] = $11073-10101#149760
* valueQuantity = 1900 'dyn.s/cm5/m2' "dyne second per centimeter5 and square meter"

// Zentralvenoeser Blutdruck (ZVD): 8 mmHg
Instance: mii-exa-test-data-isik-vitalparameter-zvd-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-zentralvenoeser-blutdruck
Usage: #example
Description: "MII-ICU Zentralvenoeser Blutdruck (ZVD): 8 mmHg"
* insert IsikMuvBase(2026-05-12T10:30:00+02:00)
* code.coding[sct] = $sct#71420008 "Central venous pressure (observable entity)"
* code.coding[loinc] = $loinc#60985-9 "Central venous pressure (CVP)"
* code.coding[IEEE-11073] = $11073-10101#150084
* valueQuantity = 8 'mm[Hg]' "millimeter Mercury column"
* bodySite = $sct#73829009 "Right atrial structure (body structure)"

// ---------------------------------------------------------------------------
// Pulsatile Druecke (value[x] 0..0, Werte in component Sys/Dia/Mean)
// ---------------------------------------------------------------------------

// Generisches Profil: systemisch-arterieller Druck 128/76 mmHg (MAD 93)
// code.coding: sct-generic fix 75367002 + offener sct-Slice (hier 364090009)
Instance: mii-exa-test-data-isik-vitalparameter-pulsatil-generisch-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-sonstige-pulsatile-druecke-generisch
Usage: #example
Description: "MII-ICU Sonstige pulsatile Druecke (generisch): systemisch-arteriell 128/76 mmHg, MAD 93 mmHg"
* insert IsikPulsatilBase(2026-05-12T10:35:00+02:00)
* code.coding[sct-generic] = $sct#75367002 "Blood pressure (observable entity)"
* code.coding[sct] = $sct#364090009 "Systemic arterial pressure (observable entity)"
* component[SystolicBP].code.coding[loinc] = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code.coding[sct] = $sct#271649006 "Systolic blood pressure (observable entity)"
* component[SystolicBP].valueQuantity = 128 'mm[Hg]' "millimeter Mercury column"
* component[DiastolicBP].code.coding[loinc] = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[sct] = $sct#271650006 "Diastolic blood pressure (observable entity)"
* component[DiastolicBP].valueQuantity = 76 'mm[Hg]' "millimeter Mercury column"
* component[meanBP].code.coding[loinc] = $loinc#8478-0 "Mean blood pressure"
* component[meanBP].code.coding[sct] = $sct#6797001 "Mean blood pressure (observable entity)"
* component[meanBP].valueQuantity = 93 'mm[Hg]' "millimeter Mercury column"

// Linksatrialer Druck: 12/8 mmHg, Mittel 10 mmHg
Instance: mii-exa-test-data-isik-vitalparameter-lap-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksatrialer-druck
Usage: #example
Description: "MII-ICU Linksatrialer Druck: 12/8 mmHg, Mittel 10 mmHg"
* insert IsikPulsatilBase(2026-05-12T10:35:00+02:00)
* code.coding[sct-generic] = $sct#75367002 "Blood pressure (observable entity)"
* code.coding[sct] = $sct#276760007 "Left atrial pressure (observable entity)"
* code.coding[loinc] = $loinc#60988-3 "Left atrial pressure"
* code.coding[IEEE11073] = $11073-10101#150064
* bodySite = $sct#82471001 "Left atrial structure (body structure)"
* component[SystolicBP].code.coding[loinc] = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code.coding[sct] = $sct#271649006 "Systolic blood pressure (observable entity)"
* component[SystolicBP].code.coding[IEEE-11073] = $11073-10101#150065
* component[SystolicBP].valueQuantity = 12 'mm[Hg]' "millimeter Mercury column"
* component[DiastolicBP].code.coding[loinc] = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[sct] = $sct#271650006 "Diastolic blood pressure (observable entity)"
* component[DiastolicBP].code.coding[IEEE-11073] = $11073-10101#150066
* component[DiastolicBP].valueQuantity = 8 'mm[Hg]' "millimeter Mercury column"
* component[meanBP].code.coding[loinc] = $loinc#8478-0 "Mean blood pressure"
* component[meanBP].code.coding[sct] = $sct#6797001 "Mean blood pressure (observable entity)"
* component[meanBP].code.coding[IEEE-11073] = $11073-10101#150067
* component[meanBP].valueQuantity = 10 'mm[Hg]' "millimeter Mercury column"

// Linksventrikulaerer Druck: 120/10 mmHg, Mittel 47 mmHg (kein LOINC-Slice)
Instance: mii-exa-test-data-isik-vitalparameter-lvp-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventrikulaerer-druck
Usage: #example
Description: "MII-ICU Linksventrikulaerer Druck: 120/10 mmHg, Mittel 47 mmHg"
* insert IsikPulsatilBase(2026-05-12T10:35:00+02:00)
* code.coding[sct-generic] = $sct#75367002 "Blood pressure (observable entity)"
* code.coding[sct] = $sct#276769008 "Left ventricular pressure (observable entity)"
* code.coding[IEEE11073] = $11073-10101#150100
* component[SystolicBP].code.coding[loinc] = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code.coding[sct] = $sct#271649006 "Systolic blood pressure (observable entity)"
* component[SystolicBP].code.coding[IEEE-11073] = $11073-10101#150101
* component[SystolicBP].valueQuantity = 120 'mm[Hg]' "millimeter Mercury column"
* component[DiastolicBP].code.coding[loinc] = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[sct] = $sct#271650006 "Diastolic blood pressure (observable entity)"
* component[DiastolicBP].code.coding[IEEE-11073] = $11073-10101#150102
* component[DiastolicBP].valueQuantity = 10 'mm[Hg]' "millimeter Mercury column"
* component[meanBP].code.coding[loinc] = $loinc#8478-0 "Mean blood pressure"
* component[meanBP].code.coding[sct] = $sct#6797001 "Mean blood pressure (observable entity)"
* component[meanBP].code.coding[IEEE-11073] = $11073-10101#150103
* component[meanBP].valueQuantity = 47 'mm[Hg]' "millimeter Mercury column"

// Rechtsatrialer Druck: 8/3 mmHg, Mittel 5 mmHg
Instance: mii-exa-test-data-isik-vitalparameter-rap-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-rechtsatrialer-druck
Usage: #example
Description: "MII-ICU Rechtsatrialer Druck: 8/3 mmHg, Mittel 5 mmHg"
* insert IsikPulsatilBase(2026-05-12T10:40:00+02:00)
* code.coding[sct-generic] = $sct#75367002 "Blood pressure (observable entity)"
* code.coding[sct] = $sct#276755008 "Right atrial pressure (observable entity)"
* code.coding[loinc] = $loinc#60996-6 "Right atrial pressure"
* code.coding[IEEE-11073] = $11073-10101#150068
* bodySite = $sct#73829009 "Right atrial structure (body structure)"
* component[SystolicBP].code.coding[loinc] = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code.coding[sct] = $sct#271649006 "Systolic blood pressure (observable entity)"
* component[SystolicBP].code.coding[IEEE-11073] = $11073-10101#150069
* component[SystolicBP].valueQuantity = 8 'mm[Hg]' "millimeter Mercury column"
* component[DiastolicBP].code.coding[loinc] = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[sct] = $sct#271650006 "Diastolic blood pressure (observable entity)"
* component[DiastolicBP].code.coding[IEEE-11073] = $11073-10101#150070
* component[DiastolicBP].valueQuantity = 3 'mm[Hg]' "millimeter Mercury column"
* component[meanBP].code.coding[loinc] = $loinc#8478-0 "Mean blood pressure"
* component[meanBP].code.coding[sct] = $sct#6797001 "Mean blood pressure (observable entity)"
* component[meanBP].code.coding[IEEE-11073] = $11073-10101#150071
* component[meanBP].valueQuantity = 5 'mm[Hg]' "millimeter Mercury column"

// Rechtsventrikulaerer Druck: 25/4 mmHg, Mittel 14 mmHg (kein LOINC-Slice)
Instance: mii-exa-test-data-isik-vitalparameter-rvp-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-rechtsventrikulaerer-druck
Usage: #example
Description: "MII-ICU Rechtsventrikulaerer Druck: 25/4 mmHg, Mittel 14 mmHg"
* insert IsikPulsatilBase(2026-05-12T10:40:00+02:00)
* code.coding[sct-generic] = $sct#75367002 "Blood pressure (observable entity)"
* code.coding[sct] = $sct#276756009 "Right ventricular pressure (observable entity)"
* code.coding[IEEE-11073] = $11073-10101#150104
* bodySite = $sct#53085002 "Right cardiac ventricular structure (body structure)"
* component[SystolicBP].code.coding[loinc] = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code.coding[sct] = $sct#271649006 "Systolic blood pressure (observable entity)"
* component[SystolicBP].code.coding[IEEE-11073] = $11073-10101#150105
* component[SystolicBP].valueQuantity = 25 'mm[Hg]' "millimeter Mercury column"
* component[DiastolicBP].code.coding[loinc] = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[sct] = $sct#271650006 "Diastolic blood pressure (observable entity)"
* component[DiastolicBP].code.coding[IEEE-11073] = $11073-10101#150106
* component[DiastolicBP].valueQuantity = 4 'mm[Hg]' "millimeter Mercury column"
* component[meanBP].code.coding[loinc] = $loinc#8478-0 "Mean blood pressure"
* component[meanBP].code.coding[sct] = $sct#6797001 "Mean blood pressure (observable entity)"
* component[meanBP].code.coding[IEEE-11073] = $11073-10101#150107
* component[meanBP].valueQuantity = 14 'mm[Hg]' "millimeter Mercury column"

// Pulmonalarterieller Blutdruck: 25/10 mmHg, Mittel 15 mmHg
Instance: mii-exa-test-data-isik-vitalparameter-pap-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-pulmonalarterieller-blutdruck
Usage: #example
Description: "MII-ICU Pulmonalarterieller Blutdruck: 25/10 mmHg, Mittel 15 mmHg"
* insert IsikPulsatilBase(2026-05-12T10:40:00+02:00)
* code.coding[sct-generic] = $sct#75367002 "Blood pressure (observable entity)"
* code.coding[sct] = $sct#250767002 "Pulmonary artery pressure (observable entity)"
* code.coding[loinc] = $loinc#76284-9 "Pulmonary artery Blood pressure panel"
* code.coding[IEEE-11073] = $11073-10101#150044
* bodySite = $sct#81040000 "Pulmonary artery structure (body structure)"
* component[SystolicBP].code.coding[loinc] = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code.coding[sct] = $sct#271649006 "Systolic blood pressure (observable entity)"
* component[SystolicBP].code.coding[IEEE-11073] = $11073-10101#150045
* component[SystolicBP].valueQuantity = 25 'mm[Hg]' "millimeter Mercury column"
* component[DiastolicBP].code.coding[loinc] = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[sct] = $sct#271650006 "Diastolic blood pressure (observable entity)"
* component[DiastolicBP].code.coding[IEEE-11073] = $11073-10101#150046
* component[DiastolicBP].valueQuantity = 10 'mm[Hg]' "millimeter Mercury column"
* component[meanBP].code.coding[loinc] = $loinc#8478-0 "Mean blood pressure"
* component[meanBP].code.coding[sct] = $sct#6797001 "Mean blood pressure (observable entity)"
* component[meanBP].code.coding[IEEE-11073] = $11073-10101#150047
* component[meanBP].valueQuantity = 15 'mm[Hg]' "millimeter Mercury column"
