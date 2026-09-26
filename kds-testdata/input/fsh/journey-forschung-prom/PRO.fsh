// ============================================================================
// JOURNEY Patient-11 — Modul PRO (Patient-Reported Outcomes)
//
// DAS ist der eigentliche Zugewinn dieser Journey: ein LONGITUDINALER
// PROM-Verlauf. Das PRO-Modulbundle hat alle Scores auf EINEM Zeitpunkt —
// damit lässt sich keine Verlaufsauswertung testen. Hier: EQ-5D-5L zu T0/T3/T6
// und PHQ-9 zu T0/T6, jeweils mit eigener QuestionnaireResponse, an die
// derivedFrom korrekt gebunden ist.
//
// Verlauf: unter optimierter HFrEF-Therapie verbessern sich Lebensqualität
// (EQ-5D-5L Index 0.512 -> 0.712 -> 0.823) und depressive Symptomatik
// (PHQ-9 14 -> 8). Die Indexwerte sind mit dem deutschen Wertesatz
// (Ludwig et al. 2018) plausibilisiert, aber synthetisch.
//
// Studienbezug: Observation.partOf kann in R4 NICHT auf ResearchStudy zeigen
// (erlaubt sind nur MedicationAdministration|Procedure|Immunization|
// ImagingStudy). Die Zuordnung zum Forschungsvorhaben läuft daher über den
// ResearchSubject (patient-11-proband-1) und den Visiten-Encounter — nicht
// über die einzelne Observation. Das ist der korrekte Weg im aktuellen
// Modellstand und eine Stelle, an der ein KDS-Erweiterungswunsch entstehen
// könnte.
// ============================================================================

// Hinweis zu den Displays: Das CodeSystem mii-cs-pro-eq-5d-value-set fuehrt je
// Antwortstufe FUENF deutsche Designations — eine pro EQ-5D-Dimension. Der
// Validator akzeptiert nur die Designation der jeweils passenden Dimension,
// wortgleich. Zwei Fallen dabei: es heisst "... oder anzuziehen" (nicht "oder
// mich anzuziehen") und "Taetigkeiten nachzugehen" (nicht "nachzukommen").
Alias: $pro-eq5d-vs = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set

RuleSet: JourneyProBase
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* subject = Reference(mii-exa-test-data-patient-11)
* focus = Reference(mii-exa-test-data-patient-11-diagnose-1)
* performer = Reference(mii-exa-test-data-patient-11)

// ============================================================================
// T0 — Baseline-Visite 2025-02-10
// ============================================================================

Instance: mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
Description: "PRO QuestionnaireResponse: EQ-5D-5L T0 (Patient 11, Profil 33232)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* language = #de
* subject = Reference(mii-exa-test-data-patient-11)
* encounter = Reference(mii-exa-test-data-patient-11-encounter-2)
* authored = "2025-02-10T09:20:00+01:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable"
* item[+].linkId = "euroqol-eq5d5l-q01-MO"
* item[=].answer.valueCoding = $pro-eq5d-vs#3 "Ich habe mäßige Probleme herumzugehen"
* item[+].linkId = "euroqol-eq5d5l-q02-SC"
* item[=].answer.valueCoding = $pro-eq5d-vs#3 "Ich habe mäßige Probleme, mich selbst zu waschen oder anzuziehen"
* item[+].linkId = "euroqol-eq5d5l-q03-UA"
* item[=].answer.valueCoding = $pro-eq5d-vs#2 "Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[+].linkId = "euroqol-eq5d5l-q04-PD"
* item[=].answer.valueCoding = $pro-eq5d-vs#3 "Ich habe mäßige Schmerzen oder Beschwerden"
* item[+].linkId = "euroqol-eq5d5l-q05-AD"
* item[=].answer.valueCoding = $pro-eq5d-vs#2 "Ich bin ein wenig ängstlich oder deprimiert"
* item[+].linkId = "euroqol-eq5d5l-score-profile"
* item[=].answer.valueInteger = 33232
* item[+].linkId = "euroqol-eq5d5l-score-index"
* item[=].answer.valueDecimal = 0.512
* item[+].linkId = "euroqol-eq5d5l-vas"
* item[=].answer.valueInteger = 45

Instance: mii-exa-test-data-patient-11-pro-eq5d5l-index-t0
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index
Usage: #example
Description: "PRO Observation: EQ-5D-5L Indexwert T0 (Patient 11, 0.512)"
* insert JourneyProBase
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-EQ5D-IDX-PAT11-T0"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-2)
* effectiveDateTime = "2025-02-10T09:20:00+01:00"
* valueQuantity.value = 0.512
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method = $sct#73041000052103 "EuroQoL five dimension five level questionnaire"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* interpretation.text = "Deutlich reduzierter Gesundheitszustand"
* note[+].text = "Deutscher Wertesatz: Ludwig, K., Graf von der Schulenburg, JM. & Greiner, W. German Value Set for the EQ-5D-5L. PharmacoEconomics 36, 663-674 (2018)."
* derivedFrom = Reference(mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index"

Instance: mii-exa-test-data-patient-11-pro-eq5d5l-vas-t0
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas
Usage: #example
Description: "PRO Observation: EQ-5D-5L VAS T0 (Patient 11, 45)"
* insert JourneyProBase
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-EQ5D-VAS-PAT11-T0"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-2)
* effectiveDateTime = "2025-02-10T09:20:00+01:00"
* valueQuantity.value = 45
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method = $sct#73041000052103 "EuroQoL five dimension five level questionnaire"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* interpretation.text = "Selbsteinschätzung deutlich unter Altersnorm"
* note[+].text = "VAS 0-100, höhere Werte bedeuten besseren Gesundheitszustand"
* derivedFrom = Reference(mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"

Instance: mii-exa-test-data-patient-11-pro-eq5d5l-profil-t0
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile
Usage: #example
Description: "PRO Observation: EQ-5D-5L Profil T0 (Patient 11, 33232)"
* insert JourneyProBase
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-EQ5D-PROF-PAT11-T0"
* code = $pro-sc#euroqol-eq5d5l-profile "EuroQol EQ-5D-5L Profile"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-2)
* effectiveDateTime = "2025-02-10T09:20:00+01:00"
* valueString = "33232"
* method = $sct#73041000052103 "EuroQoL five dimension five level questionnaire"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* interpretation.text = "Mäßige Einschränkung in Mobilität, Selbstversorgung und Schmerz"
* note[+].text = "Profil: Mobilität=3, Selbstversorgung=3, Alltagstätigkeiten=2, Schmerz=3, Angst/Niedergeschlagenheit=2"
* derivedFrom = Reference(mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile"

Instance: mii-exa-test-data-patient-11-pro-phq9-qr-t0
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
Description: "PRO QuestionnaireResponse: PHQ-9 T0 (Patient 11, Summenwert 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* language = #de
* subject = Reference(mii-exa-test-data-patient-11)
* encounter = Reference(mii-exa-test-data-patient-11-encounter-2)
* authored = "2025-02-10T09:35:00+01:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9"
// 2 + 2 + 3 + 3 + 1 + 1 + 1 + 0 + 1 = 14 (moderate Depression)
* item[+].linkId = "phq-phq2a"
* item[=].answer.valueCoding = $loinc#LA6570-1 "More than half the days"
* item[+].linkId = "phq-phq2b"
* item[=].answer.valueCoding = $loinc#LA6570-1 "More than half the days"
* item[+].linkId = "phq-phq2c"
* item[=].answer.valueCoding = $loinc#LA6571-9 "Nearly every day"
* item[+].linkId = "phq-phq2d"
* item[=].answer.valueCoding = $loinc#LA6571-9 "Nearly every day"
* item[+].linkId = "phq-phq2e"
* item[=].answer.valueCoding = $loinc#LA6569-3 "Several days"
* item[+].linkId = "phq-phq2f"
* item[=].answer.valueCoding = $loinc#LA6569-3 "Several days"
* item[+].linkId = "phq-phq2g"
* item[=].answer.valueCoding = $loinc#LA6569-3 "Several days"
* item[+].linkId = "phq-phq2h"
* item[=].answer.valueCoding = $loinc#LA6568-5 "Not at all"
* item[+].linkId = "phq-phq2i"
* item[=].answer.valueCoding = $loinc#LA6569-3 "Several days"
* item[+].linkId = "phq-phq9-score-total"
* item[=].answer.valueDecimal = 14
* item[+].linkId = "phq-phq9-difficulty"
* item[=].answer.valueCoding = $loinc#LA6575-0 "Very difficult"

Instance: mii-exa-test-data-patient-11-pro-phq9-score-t0
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9
Usage: #example
Description: "PRO Observation: PHQ-9 Summenwert T0 (Patient 11, 14 - moderate Depression)"
* insert JourneyProBase
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-PHQ9-PAT11-T0"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-2)
* effectiveDateTime = "2025-02-10T09:35:00+01:00"
* valueQuantity.value = 14
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* interpretation.text = "Moderate Depression (10-14)"
* note[+].text = "Screening im Rahmen der Studien-Baseline; Vorstellung in der Psychokardiologie empfohlen."
* derivedFrom = Reference(mii-exa-test-data-patient-11-pro-phq9-qr-t0)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9"

// ============================================================================
// T3 — Visite 2025-05-12 (nur EQ-5D-5L)
// ============================================================================

Instance: mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
Description: "PRO QuestionnaireResponse: EQ-5D-5L T3 (Patient 11, Profil 22222)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* language = #de
* subject = Reference(mii-exa-test-data-patient-11)
* encounter = Reference(mii-exa-test-data-patient-11-encounter-3)
* authored = "2025-05-12T09:25:00+02:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable"
* item[+].linkId = "euroqol-eq5d5l-q01-MO"
* item[=].answer.valueCoding = $pro-eq5d-vs#2 "Ich habe leichte Probleme herumzugehen"
* item[+].linkId = "euroqol-eq5d5l-q02-SC"
* item[=].answer.valueCoding = $pro-eq5d-vs#2 "Ich habe leichte Probleme, mich selbst zu waschen oder anzuziehen"
* item[+].linkId = "euroqol-eq5d5l-q03-UA"
* item[=].answer.valueCoding = $pro-eq5d-vs#2 "Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[+].linkId = "euroqol-eq5d5l-q04-PD"
* item[=].answer.valueCoding = $pro-eq5d-vs#2 "Ich habe leichte Schmerzen oder Beschwerden"
* item[+].linkId = "euroqol-eq5d5l-q05-AD"
* item[=].answer.valueCoding = $pro-eq5d-vs#2 "Ich bin ein wenig ängstlich oder deprimiert"
* item[+].linkId = "euroqol-eq5d5l-score-profile"
* item[=].answer.valueInteger = 22222
* item[+].linkId = "euroqol-eq5d5l-score-index"
* item[=].answer.valueDecimal = 0.712
* item[+].linkId = "euroqol-eq5d5l-vas"
* item[=].answer.valueInteger = 60

Instance: mii-exa-test-data-patient-11-pro-eq5d5l-index-t3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index
Usage: #example
Description: "PRO Observation: EQ-5D-5L Indexwert T3 (Patient 11, 0.712)"
* insert JourneyProBase
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-EQ5D-IDX-PAT11-T3"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-3)
* effectiveDateTime = "2025-05-12T09:25:00+02:00"
* valueQuantity.value = 0.712
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method = $sct#73041000052103 "EuroQoL five dimension five level questionnaire"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Gegenüber T0 um 0.200 verbessert (MCID überschritten)"
* derivedFrom = Reference(mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index"

Instance: mii-exa-test-data-patient-11-pro-eq5d5l-vas-t3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas
Usage: #example
Description: "PRO Observation: EQ-5D-5L VAS T3 (Patient 11, 60)"
* insert JourneyProBase
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-EQ5D-VAS-PAT11-T3"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-3)
* effectiveDateTime = "2025-05-12T09:25:00+02:00"
* valueQuantity.value = 60
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method = $sct#73041000052103 "EuroQoL five dimension five level questionnaire"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Gegenüber T0 um 15 Punkte verbessert"
* derivedFrom = Reference(mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"

Instance: mii-exa-test-data-patient-11-pro-eq5d5l-profil-t3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile
Usage: #example
Description: "PRO Observation: EQ-5D-5L Profil T3 (Patient 11, 22222)"
* insert JourneyProBase
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-EQ5D-PROF-PAT11-T3"
* code = $pro-sc#euroqol-eq5d5l-profile "EuroQol EQ-5D-5L Profile"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-3)
* effectiveDateTime = "2025-05-12T09:25:00+02:00"
* valueString = "22222"
* method = $sct#73041000052103 "EuroQoL five dimension five level questionnaire"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Durchgehend nur noch leichte Probleme"
* note[+].text = "Profil: Mobilität=2, Selbstversorgung=2, Alltagstätigkeiten=2, Schmerz=2, Angst/Niedergeschlagenheit=2"
* derivedFrom = Reference(mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile"

// ============================================================================
// T6 — Visite 2025-08-11 (EQ-5D-5L + PHQ-9-Kontrolle)
// ============================================================================

Instance: mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
Description: "PRO QuestionnaireResponse: EQ-5D-5L T6 (Patient 11, Profil 22121)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* language = #de
* subject = Reference(mii-exa-test-data-patient-11)
* encounter = Reference(mii-exa-test-data-patient-11-encounter-4)
* authored = "2025-08-11T09:10:00+02:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable"
* item[+].linkId = "euroqol-eq5d5l-q01-MO"
* item[=].answer.valueCoding = $pro-eq5d-vs#2 "Ich habe leichte Probleme herumzugehen"
* item[+].linkId = "euroqol-eq5d5l-q02-SC"
* item[=].answer.valueCoding = $pro-eq5d-vs#2 "Ich habe leichte Probleme, mich selbst zu waschen oder anzuziehen"
* item[+].linkId = "euroqol-eq5d5l-q03-UA"
* item[=].answer.valueCoding = $pro-eq5d-vs#1 "Ich habe keine Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[+].linkId = "euroqol-eq5d5l-q04-PD"
* item[=].answer.valueCoding = $pro-eq5d-vs#2 "Ich habe leichte Schmerzen oder Beschwerden"
* item[+].linkId = "euroqol-eq5d5l-q05-AD"
* item[=].answer.valueCoding = $pro-eq5d-vs#1 "Ich bin nicht ängstlich oder deprimiert"
* item[+].linkId = "euroqol-eq5d5l-score-profile"
* item[=].answer.valueInteger = 22121
* item[+].linkId = "euroqol-eq5d5l-score-index"
* item[=].answer.valueDecimal = 0.823
* item[+].linkId = "euroqol-eq5d5l-vas"
* item[=].answer.valueInteger = 70

Instance: mii-exa-test-data-patient-11-pro-eq5d5l-index-t6
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index
Usage: #example
Description: "PRO Observation: EQ-5D-5L Indexwert T6 (Patient 11, 0.823)"
* insert JourneyProBase
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-EQ5D-IDX-PAT11-T6"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-4)
* effectiveDateTime = "2025-08-11T09:10:00+02:00"
* valueQuantity.value = 0.823
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method = $sct#73041000052103 "EuroQoL five dimension five level questionnaire"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Guter Gesundheitszustand, Verlauf über sechs Monate anhaltend verbessert"
* derivedFrom = Reference(mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index"

Instance: mii-exa-test-data-patient-11-pro-eq5d5l-vas-t6
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas
Usage: #example
Description: "PRO Observation: EQ-5D-5L VAS T6 (Patient 11, 70)"
* insert JourneyProBase
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-EQ5D-VAS-PAT11-T6"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-4)
* effectiveDateTime = "2025-08-11T09:10:00+02:00"
* valueQuantity.value = 70
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method = $sct#73041000052103 "EuroQoL five dimension five level questionnaire"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Gegenüber T0 um 25 Punkte verbessert"
* derivedFrom = Reference(mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"

Instance: mii-exa-test-data-patient-11-pro-eq5d5l-profil-t6
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile
Usage: #example
Description: "PRO Observation: EQ-5D-5L Profil T6 (Patient 11, 22121)"
* insert JourneyProBase
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-EQ5D-PROF-PAT11-T6"
* code = $pro-sc#euroqol-eq5d5l-profile "EuroQol EQ-5D-5L Profile"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-4)
* effectiveDateTime = "2025-08-11T09:10:00+02:00"
* valueString = "22121"
* method = $sct#73041000052103 "EuroQoL five dimension five level questionnaire"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Alltagstätigkeiten und Stimmung ohne Einschränkung"
* note[+].text = "Profil: Mobilität=2, Selbstversorgung=2, Alltagstätigkeiten=1, Schmerz=2, Angst/Niedergeschlagenheit=1"
* derivedFrom = Reference(mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile"

Instance: mii-exa-test-data-patient-11-pro-phq9-qr-t6
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
Description: "PRO QuestionnaireResponse: PHQ-9 T6 (Patient 11, Summenwert 8)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* language = #de
* subject = Reference(mii-exa-test-data-patient-11)
* encounter = Reference(mii-exa-test-data-patient-11-encounter-4)
* authored = "2025-08-11T09:30:00+02:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9"
// 1 + 1 + 2 + 2 + 1 + 0 + 1 + 0 + 0 = 8 (leichte Depression)
* item[+].linkId = "phq-phq2a"
* item[=].answer.valueCoding = $loinc#LA6569-3 "Several days"
* item[+].linkId = "phq-phq2b"
* item[=].answer.valueCoding = $loinc#LA6569-3 "Several days"
* item[+].linkId = "phq-phq2c"
* item[=].answer.valueCoding = $loinc#LA6570-1 "More than half the days"
* item[+].linkId = "phq-phq2d"
* item[=].answer.valueCoding = $loinc#LA6570-1 "More than half the days"
* item[+].linkId = "phq-phq2e"
* item[=].answer.valueCoding = $loinc#LA6569-3 "Several days"
* item[+].linkId = "phq-phq2f"
* item[=].answer.valueCoding = $loinc#LA6568-5 "Not at all"
* item[+].linkId = "phq-phq2g"
* item[=].answer.valueCoding = $loinc#LA6569-3 "Several days"
* item[+].linkId = "phq-phq2h"
* item[=].answer.valueCoding = $loinc#LA6568-5 "Not at all"
* item[+].linkId = "phq-phq2i"
* item[=].answer.valueCoding = $loinc#LA6568-5 "Not at all"
* item[+].linkId = "phq-phq9-score-total"
* item[=].answer.valueDecimal = 8
* item[+].linkId = "phq-phq9-difficulty"
* item[=].answer.valueCoding = $loinc#LA6573-5 "Somewhat difficult"

Instance: mii-exa-test-data-patient-11-pro-phq9-score-t6
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9
Usage: #example
Description: "PRO Observation: PHQ-9 Summenwert T6 (Patient 11, 8 - leichte Depression)"
* insert JourneyProBase
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-PHQ9-PAT11-T6"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-4)
* effectiveDateTime = "2025-08-11T09:30:00+02:00"
* valueQuantity.value = 8
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* interpretation = $v3-ObservationInterpretation#L "Low"
* interpretation.text = "Leichte Depression (5-9), gegenüber T0 um 6 Punkte gebessert"
* note[+].text = "Kontrolle nach sechs Monaten; keine antidepressive Pharmakotherapie erfolgt."
* derivedFrom = Reference(mii-exa-test-data-patient-11-pro-phq9-qr-t6)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9"
