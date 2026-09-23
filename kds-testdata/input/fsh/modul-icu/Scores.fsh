// ============================================================================
// ICU - Scores (ballot.3-neu)
// Sedierungs-/Delir-Szenario Tag 6 (2024-05-06): RASS -3, CAM-ICU positiv,
// ICDSC 6, GCS 8 (E2V2M4), SOFA 9; Schmerz-Assessments zu verschiedenen Zeiten.
// Hinweis: mii-pr-icu-score ist abstrakt und wird ueber die abgeleiteten
// Score-Profile abgedeckt (keine direkte Instanz moeglich).
// ============================================================================

// --- Glasgow Coma Scale ---

Instance: mii-exa-test-data-patient-1-icu-score-gcs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-gcs
Usage: #example
Description: "ICU Score: Glasgow Coma Scale 8 (E2 V2 M4) unter Sedierung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[loinc] = $loinc#9269-2 "Glasgow coma score total"
* code.coding[sct] = $sct#248241002
* code.coding[ieee11073] = $11073-10101#153728
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T08:15:00+02:00"
* valueQuantity = 8 '{score}' "{score}"
* component[GCSeyes].code.coding = $loinc#9267-6 "Glasgow coma score eye opening"
* component[GCSeyes].valueCodeableConcept = $loinc#LA6554-5 "Eye opening to pain"
* component[GCSverbal].code.coding = $loinc#9270-0 "Glasgow coma score verbal"
* component[GCSverbal].valueCodeableConcept = $loinc#LA6558-6 "Incomprehensible sounds"
* component[GCSmotor].code.coding = $loinc#9268-4 "Glasgow coma score motor"
* component[GCSmotor].valueCodeableConcept = $loinc#LA6565-1 "Withdrawal from pain"
* issued = "2024-05-06T10:15:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* code.coding[sct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* hasMember = Reference(mii-exa-test-data-patient-1-icu-pupille-befund-1)

// --- Richmond Agitation-Sedation Scale ---
Instance: mii-exa-test-data-patient-1-icu-score-rass-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-rass
Usage: #example
Description: "ICU Score: RASS -3 (moderate Sedierung)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[exam] = $observation-category#exam "Exam"
* code.coding = $sct#1345050000 "Richmond Agitation Sedation Scale score (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T08:00:00+02:00"
* valueCodeableConcept.coding[Loinc] = $loinc#LA33965-7 "Moderate sedation -3"
* issued = "2024-05-06T10:00:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note.text = "RASS -3: Bewegung/Augenoeffnung auf Ansprache, kein Blickkontakt (moderate Sedierung unter ECMO)."

// --- Sequential Organ Failure Assessment ---
Instance: mii-exa-test-data-patient-1-icu-score-sofa-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-sofa
Usage: #example
Description: "ICU Score: SOFA 9 (Respiration 3, Gerinnung 1, Leber 0, Kreislauf 1, ZNS 3, Niere 1)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[loinc] = $loinc#96789-3 "Sequential Organ Failure Assessment SOFA"
* code.coding[sct] = $sct#1187491009 "Sequential Organ Failure Assessment score (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T09:00:00+02:00"
* valueInteger = 9
// Subscore-Codes: nur LOINC — die SNOMED-Patterns des Profils enthalten den
// Platzhalter-Code "xxx" (Upstream-Findung, siehe docs/research-icu-scores.md)
* component[respiratory].code.coding[loinc] = $loinc#96823-0 "Respiration [Score] SOFA"
* component[respiratory].valueInteger = 3
* component[coagulation].code.coding[loinc] = $loinc#96824-8 "Coagulation [Score] SOFA"
* component[coagulation].valueInteger = 1
* component[hepatic].code.coding[loinc] = $loinc#96825-5 "Liver [Score] SOFA"
* component[hepatic].valueInteger = 0
* component[cardiovascular].code.coding[loinc] = $loinc#96826-3 "Cardiovascular [Score] SOFA"
* component[cardiovascular].valueInteger = 1
* component[neurological].code.coding[loinc] = $loinc#96827-1 "Central nervous system [Score] SOFA"
* component[neurological].valueInteger = 3
* component[renal].code.coding[loinc] = $loinc#96828-9 "Renal [Score] SOFA"
* component[renal].valueInteger = 1
* issued = "2024-05-06T11:00:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* interpretation = $v3-ObservationInterpretation#H "High"
* code.coding[sct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* hasMember = Reference(mii-exa-test-data-patient-1-icu-score-gcs-1)
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-icu-score-gcs-1)
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-icu-vent-horowitz-1)

// --- Confusion Assessment Method for the ICU ---
Instance: mii-exa-test-data-patient-1-icu-score-cam-icu-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-cam-icu
Usage: #example
Description: "ICU Score: CAM-ICU positiv (Feature 1-3 vorhanden, Feature 4 nicht beurteilt positiv)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[loinc] = $loinc#99844-5 "Confusion Assessment Method for the ICU"
* code.coding[sct] = $sct#450740000 "Confusion Assessment Method for the intensive care unit score"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T08:30:00+02:00"
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"
// component.code.text ist im Profil fixiert (englische Feature-Bezeichnungen)
* component[feature1-acute-change].code.coding = $loinc#85634-4 "Is there evidence of an acute change in mental status from the patient's baseline [CAM.CMS]"
* component[feature1-acute-change].code.text = "Acute change from mental status baseline or Fluctuation in mental status in past 24 hours [CAM.ICU]"
* component[feature1-acute-change].valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* component[feature2-inattention].code.coding = $loinc#85631-0 "Did the patient have difficulty focusing attention [CAM.CMS]"
* component[feature2-inattention].code.text = "Feature 2: Inattention"
* component[feature2-inattention].valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* component[feature3-altered-loc].code.coding = $loinc#95815-7 "Altered level of consciousness during assessment period [CAM.CMS]"
* component[feature3-altered-loc].code.text = "Feature 3: Altered level of consciousness"
* component[feature3-altered-loc].valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* component[feature4-disorganized-thinking].code.coding = $loinc#85651-8 "Was the patient's thinking disorganized or incoherent [CAM.CMS]"
* component[feature4-disorganized-thinking].code.text = "Feature 4: Disorganized thinking"
* component[feature4-disorganized-thinking].valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* issued = "2024-05-06T10:30:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* code.coding[sct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* hasMember = Reference(mii-exa-test-data-patient-1-icu-score-rass-1)
* derivedFrom = Reference(mii-exa-test-data-patient-1-icu-score-rass-1)

// --- Intensive Care Delirium Screening Checklist ---
Instance: mii-exa-test-data-patient-1-icu-score-icdsc-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-icdsc
Usage: #example
Description: "ICU Score: ICDSC 6 (Delir-Schwelle ueberschritten)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[sct] = $sct#1351995008 "Intensive Care Delirium Screening Checklist score (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T20:00:00+02:00"
* valueInteger = 6
// component.code.text ist im Profil fixiert (englische Item-Bezeichnungen)
* component[altered-consciousness].code.text = "Altered level of consciousness"
* component[altered-consciousness].valueInteger = 1
* component[inattention].code.text = "Inattention"
* component[inattention].valueInteger = 1
* component[disorientation].code.text = "Disorientation"
* component[disorientation].valueInteger = 1
* component[hallucination-delusion].code.text = "Hallucination, delusion, or psychosis"
* component[hallucination-delusion].valueInteger = 0
* component[psychomotor-agitation-retardation].code.text = "Psychomotor agitation or retardation"
* component[psychomotor-agitation-retardation].valueInteger = 1
* component[inappropriate-speech-mood].code.text = "Inappropriate speech or mood"
* component[inappropriate-speech-mood].valueInteger = 0
* component[sleep-wake-disturbance].code.text = "Sleep/wake cycle disturbance"
* component[sleep-wake-disturbance].valueInteger = 1
* component[symptom-fluctuation].code.text = "Symptom fluctuation"
* component[symptom-fluctuation].valueInteger = 1
* issued = "2024-05-06T22:00:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* code.coding[sct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* hasMember = Reference(mii-exa-test-data-patient-1-icu-score-rass-1)
* derivedFrom = Reference(mii-exa-test-data-patient-1-icu-score-rass-1)

// --- Numerische Ratingskala (Schmerz) ---
Instance: mii-exa-test-data-patient-1-icu-score-nrs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-numerische-ratingskala
Usage: #example
Description: "ICU Score: Numerische Ratingskala Schmerz 4/10"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[sct] = $sct#1284857008
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T10:00:00+02:00"
* valueInteger = 4
* issued = "2024-05-06T12:00:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* code.coding[sct].version = "http://snomed.info/sct/900000000000207008/version/20260701"

// --- Visuelle Analogskala (Schmerz) ---
Instance: mii-exa-test-data-patient-1-icu-score-vas-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-visuelle-analogskala
Usage: #example
Description: "ICU Score: Visuelle Analogskala Schmerz 45 mm"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[loinc] = $loinc#38214-3 "Pain severity [Score] Visual analog score"
* code.coding[sct] = $sct#443394008
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T10:05:00+02:00"
* valueQuantity = 45 'mm' "mm"
* issued = "2024-05-06T12:05:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* code.coding[sct].version = "http://snomed.info/sct/900000000000207008/version/20260701"

// --- Wong-Baker FACES Schmerzskala ---
Instance: mii-exa-test-data-patient-1-icu-score-wbf-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-wong-baker-faces-schmerzskala
Usage: #example
Description: "ICU Score: Wong-Baker FACES Schmerzskala 6/10"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#survey "Assessment"
* code.coding[Loinc] = $loinc#38221-8
* code.coding[Snomed] = $sct#718581005
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T10:10:00+02:00"
* valueQuantity = 6 '{score}' "{score}"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)

// --- Faces Pain Scale - Revised ---
Instance: mii-exa-test-data-patient-1-icu-score-fpsr-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-faces-pain-scale-revised
Usage: #example
Description: "ICU Score: Faces Pain Scale - Revised 6/10"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[sct] = $sct#1284909003 "Faces Pain Scale - Revised score (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T10:15:00+02:00"
* valueQuantity = 6 '{score}' "{score}"
* issued = "2024-05-06T12:15:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* code.coding[sct].version = "http://snomed.info/sct/900000000000207008/version/20260701"

// --- Zurich Observation Pain Assessment ---
Instance: mii-exa-test-data-patient-1-icu-score-zopa-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-zopa
Usage: #example
Description: "ICU Score: ZOPA - Schmerzverhalten vorhanden (sedierte Patientin)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[dgai] = http://dgai.de#DGAI-ZOPA "Zuerich Observation Pain Assessment (ZOPA)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T08:45:00+02:00"
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* issued = "2024-05-06T10:45:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
// dataAbsentReason-Variante (repraesentativ fuer die Score-Profilfamilie):
// NRS bei sedierter Patientin nicht erhebbar
Instance: mii-exa-test-data-patient-1-icu-score-nrs-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-numerische-ratingskala
Usage: #example
Description: "ICU Score: Numerische Ratingskala nicht erhebbar (Sedierung, dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[sct] = $sct#1284857008
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-05T10:00:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* dataAbsentReason = $data-absent-reason#temp-unknown "Temporarily Unknown"
* note.text = "Selbstauskunft unter Sedierung (RASS -3) nicht erhebbar; Fremdeinschaetzung via ZOPA."
