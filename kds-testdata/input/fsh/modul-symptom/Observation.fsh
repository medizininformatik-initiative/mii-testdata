// ============================================================================
// MII Symptom - Symptom/Befund als Observation (mii-pr-symptom-observation)
// MS-Abdeckung ueber vier Instanzen: identifier, status, category, code,
// subject, effective[x], issued, value[x], dataAbsentReason, interpretation,
// method, device, referenceRange, hasMember, derivedFrom, component sowie
// die Extension associatedSymptomOrCondition sowie specimen.
// ============================================================================

// Observation 1: Symptom Kopfschmerz (kodiertes Symptom mit Begleitsymptom)
Instance: mii-exa-test-data-symptom-observation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation
Usage: #example
Description: "Symptom Observation: Kopfschmerz mit Begleitsymptom und Schmerzintensitaet"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[associatedSymptomOrCondition].valueReference = Reference(mii-exa-test-data-symptom-condition-1)
* identifier.system = "https://www.charite.de/fhir/sid/symptom-observation"
* identifier.value = "SYMP-OBS-0001"
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#75325-1 "Symptom"
* subject = Reference(mii-exa-test-data-symptom-patient-1)
* effectiveDateTime = "2025-03-04"
* issued = "2025-03-04T10:30:00+01:00"
* valueCodeableConcept.coding = $sct#25064002 "Headache"
* valueCodeableConcept.text = "Drueckender, beidseitiger Kopfschmerz"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* bodySite = $sct#69536005 "Head structure"
* method = $sct#84100007 "History taking"
* hasMember = Reference(mii-exa-test-data-symptom-observation-2)
* component.code = $sct#260864003 "Frequency (attribute)"
* component.valueString = "Kopfschmerzen an mehr als 15 Tagen pro Monat"

// Observation 2: Schmerzintensitaet (NRS) aus dem digitalen Kopfschmerztagebuch
Instance: mii-exa-test-data-symptom-observation-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation
Usage: #example
Description: "Symptom Observation: Schmerzintensitaet NRS aus dem Kopfschmerztagebuch"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/symptom-observation"
* identifier.value = "SYMP-OBS-0002"
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* subject = Reference(mii-exa-test-data-symptom-patient-1)
* effectiveDateTime = "2025-03-03"
* issued = "2025-03-04T10:30:00+01:00"
* valueInteger = 6
* device = Reference(mii-exa-test-data-symptom-device-1)
* derivedFrom = Reference(mii-exa-test-data-symptom-questionnaireresponse-1)
* referenceRange.text = "0 (kein Schmerz) bis 10 (staerkster vorstellbarer Schmerz)"

// Observation 3: Belastungsdyspnoe (Befund zur Herzinsuffizienz, NYHA-Einschaetzung)
Instance: mii-exa-test-data-symptom-observation-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation
Usage: #example
Description: "Symptom Observation: Belastungsdyspnoe bei chronischer Herzinsuffizienz"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[associatedSymptomOrCondition].valueReference = Reference(mii-exa-test-data-symptom-condition-2)
* identifier.system = "https://www.charite.de/fhir/sid/symptom-observation"
* identifier.value = "SYMP-OBS-0003"
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#75325-1 "Symptom"
* subject = Reference(mii-exa-test-data-symptom-patient-1)
* effectiveDateTime = "2025-03-04"
* issued = "2025-03-04T11:00:00+01:00"
* valueCodeableConcept.coding = $sct#60845006 "Dyspnea on exertion"
* valueCodeableConcept.text = "Luftnot bei staerkerer Belastung (Treppensteigen ueber zwei Etagen)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* method = $sct#84100007 "History taking"

// Observation 4: Schwindel erfragt, Angabe nicht moeglich (dataAbsentReason)
Instance: mii-exa-test-data-symptom-observation-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation
Usage: #example
Description: "Symptom Observation: Schwindel erfragt, keine verwertbare Angabe (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/symptom-observation"
* identifier.value = "SYMP-OBS-0004"
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#404640003 "Dizziness"
* subject = Reference(mii-exa-test-data-symptom-patient-1)
* effectiveDateTime = "2025-03-04"
* issued = "2025-03-04T11:10:00+01:00"
* dataAbsentReason = $data-absent-reason#asked-unknown "Asked But Unknown"
* method = $sct#84100007 "History taking"

// Observation 5: Haematurie - berichtetes Symptom, am Urin verifiziert
// (deckt Observation.specimen ab)
Instance: mii-exa-test-data-symptom-observation-5
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation
Usage: #example
Description: "Symptom Observation: Haematurie, am Mittelstrahlurin bestaetigt (mit specimen)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/symptom-observation"
* identifier.value = "SYMP-OBS-0005"
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#75325-1 "Symptom"
* subject = Reference(mii-exa-test-data-symptom-patient-1)
* effectiveDateTime = "2025-03-04"
* issued = "2025-03-04T11:20:00+01:00"
* valueCodeableConcept.coding = $sct#34436003 "Haematuria"
* valueCodeableConcept.text = "Rotverfaerbter Urin, vom Patienten berichtet und im Mittelstrahlurin bestaetigt"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* specimen = Reference(mii-exa-test-data-symptom-specimen-1)
