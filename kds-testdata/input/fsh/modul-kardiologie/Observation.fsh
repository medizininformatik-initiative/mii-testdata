// ============================================================================
// MII Kardiologie Test Data - Observations
// LVEF, NYHA, mRS, Anzahl KH-Aufenthalte wg. Herzinsuffizienz,
// Atherosklerotisches Erstereignis, Diagnose/Prozedur Nein/Unbekannt,
// Raucherstatus, Geraeteprogrammierung
// ============================================================================

// Linksventrikulaere Ejektionsfraktion (echokardiographisch)
Instance: mii-exa-test-data-kardiologie-lvef-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-linksventrikulaere-ejektionsfraktion
Usage: #example
Description: "Kardio LVEF: 38 % (reduzierte Ejektionsfraktion, HFrEF)"
* insert TestDataLabel
* status = #final
* category[vs-cat] = $observation-category#imaging
* code.coding[sct] = $sct20260701#250908004 "Left ventricular ejection fraction (observable entity)"
* code.coding[loinc] = $loinc#10230-1 "Left ventricular Ejection fraction"
* code.coding[loinc].version = "2.83"
* subject = Reference(mii-exa-test-data-kardiologie-patient-1)
* effectiveDateTime = "2025-03-11T09:30:00+01:00"
* performer.display = "Facharzt fuer Kardiologie"
* valueQuantity = 38 '%' "%"
* interpretation = $v3-ObservationInterpretation#L "Low"
* bodySite = $sct20260701#87878005 "Left cardiac ventricular structure (body structure)"
* method = $sct20260701#433236007 "Transthoracic echocardiography (procedure)"
* referenceRange[reduced].high = 40 '%' "%"
* referenceRange[reduced].text = "Reduced"

// NYHA-Klasse
Instance: mii-exa-test-data-kardiologie-nyha-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-score-nyha
Usage: #example
Description: "Kardio Score NYHA: Klasse II"
* insert TestDataLabel
* status = #final
* category = $observation-category#survey
* code.coding[sct] = $sct20260701#762994006 "New York Heart Association Classification class (observable entity)"
* code.coding[loinc] = $loinc#93124-6 "New York Heart Association Functional Classification panel"
* code.coding[loinc].version = "2.83"
* subject = Reference(mii-exa-test-data-kardiologie-patient-1)
* encounter = Reference(mii-exa-test-data-kardiologie-encounter-1)
* effectiveDateTime = "2025-03-11T10:00:00+01:00"
* performer.display = "Facharzt fuer Kardiologie"
* valueCodeableConcept = $sct20260701#421704003 "New York Heart Association Classification - Class II (finding)"
* note.text = "Leichte Einschraenkung bei staerkerer koerperlicher Belastung, keine Ruhebeschwerden."

// Modifizierte Rankin-Skala (nach zerebrovaskulaerem Ereignis)
Instance: mii-exa-test-data-kardiologie-mrs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-score-modifizierte-rankin-skala
Usage: #example
Description: "Kardio Score mRS: 1 (keine relevante Beeintraechtigung)"
* insert TestDataLabel
* status = #final
* category = $observation-category#survey
* code.coding[sct] = $sct20260701#1255866005 "Modified Rankin Scale score (observable entity)"
* code.coding[loinc] = $loinc#75859-9 "Modified Rankin scale"
* code.coding[loinc].version = "2.83"
* subject = Reference(mii-exa-test-data-kardiologie-patient-1)
* encounter = Reference(mii-exa-test-data-kardiologie-encounter-1)
* effectiveDateTime = "2025-03-11T10:15:00+01:00"
* performer.display = "Facharzt fuer Neurologie"
* valueCodeableConcept = $kardio-cs-modifizierte-rankin-skala#mRS1
* valueCodeableConcept.coding.version = "2027.0.0-ballot"

// Anzahl Krankenhausaufenthalte wegen Herzinsuffizienz (letzte 12 Monate)
Instance: mii-exa-test-data-kardiologie-kh-aufenthalte-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf
Usage: #example
Description: "Kardio Anzahl KH-Aufenthalte wegen Herzinsuffizienz: 2 in den letzten 12 Monaten"
* insert TestDataLabel
* status = #final
* code.coding[sct] = $sct20260701#298060002 "Number of admissions (observable entity)"
* subject = Reference(mii-exa-test-data-kardiologie-patient-1)
* effectivePeriod.start = "2024-03-10"
* effectivePeriod.end = "2025-03-10"
* valueInteger = 2
* component[Grund].code = $sct20260701#406524005 "Reason for visit diagnosis (contextual qualifier) (qualifier value)"
* component[Grund].valueCodeableConcept = $sct20260701#84114007 "Heart failure (disorder)"

// Atherosklerotisches Erstereignis (KHK, Erstdiagnose 03/2020)
Instance: mii-exa-test-data-kardiologie-erstereignis-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-atherosklerotisches-erstereignis
Usage: #example
Description: "Kardio Atherosklerotisches Erstereignis: KHK, Erstdiagnose 03/2020"
* insert TestDataLabel
* status = #final
* code = $kardio-cs-atherosklerotisches-ereignis#ae "Atherosklerotisches Ereignis"
* code.coding.version = "2027.0.0-ballot"
* subject = Reference(mii-exa-test-data-kardiologie-patient-1)
* effectiveDateTime = "2025-03-11T10:30:00+01:00"
* performer.display = "Facharzt fuer Kardiologie"
* component[erkrankung].code = $sct20260701#439401001 "Diagnosis"
* component[erkrankung].valueCodeableConcept = $sct20260701#53741008 "Coronary arteriosclerosis (disorder)"
* component[datum].code = $sct20260701#432213005 "Date of diagnosis"
* component[datum].valueDateTime = "2020-03"

// Diagnose/Prozedur Nein/Unbekannt: Herztransplantation nie erfolgt
Instance: mii-exa-test-data-kardiologie-htx-nein-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose-prozedur-nein-unbekannt
Usage: #example
Description: "Kardio Nein/Unbekannt: Herztransplantation - nein"
* insert TestDataLabel
* status = #final
* category = $observation-category#survey
* code.coding[prozedurSnomed] = $sct20260701#32413006 "Transplantation of heart (procedure)"
* code.text = "Herztransplantation"
* subject = Reference(mii-exa-test-data-kardiologie-patient-1)
* effectiveDateTime = "2025-03-11T10:35:00+01:00"
* valueCodeableConcept = $v2-0532#N "No"
* method = $sct20260701#129431000 "History taking - action (qualifier value)"
* derivedFrom.display = "Anamnesebogen Kardiologie"

// Raucherstatus (Ex-Raucher)
Instance: mii-exa-test-data-kardiologie-rauchen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-observation-rauchen
Usage: #example
Description: "Kardio Raucherstatus: Ex-Raucher, 30 Packungsjahre"
* insert TestDataLabel
* status = #final
* category = $observation-category#social-history
* code.coding[loinc] = $loinc#72166-2 "Tobacco smoking status"
* code.coding[loinc].version = "2.83"
* subject = Reference(mii-exa-test-data-kardiologie-patient-1)
* effectiveDateTime = "2025-03-11T10:40:00+01:00"
* performer.display = "Facharzt fuer Kardiologie"
* valueCodeableConcept = $sct20260701#8517006 "Ex-smoker (finding)"
* component[packungsjahre].code = $sct20260701#401201003 "Cigarette pack-years (observable entity)"
* component[packungsjahre].valueQuantity = 30 '{pack-years}' "{pack-years}"
* component[zigarettenProTag].code = $loinc#63640-7 "How many cigarettes do you smoke per day now"
* component[zigarettenProTag].valueQuantity = 20 '{cigarettes-per-day}' "{cigarettes-per-day}"
* component[rauchbeginn].code = $sct20260701#266929003 "Smoking started (life style)"
* component[rauchbeginn].valueDateTime = "1975-01-01"
* component[rauchdauer].code = $sct20260701#228487000 "Time since stopped smoking (observable entity)"
* component[rauchdauer].valueQuantity = 30 'a' "year"

// Geraeteprogrammierung: Brady-Modus VVI des implantierten ICD
Instance: mii-exa-test-data-kardiologie-geraeteprogrammierung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-geraeteprogrammierung
Usage: #example
Description: "Kardio Geraeteprogrammierung: Brady Pacing Mode VVI"
* insert TestDataLabel
* status = #final
* code.coding[mdc] = $11073-10101#730752 "MDC_IDC_SET_BRADY_MODE"
* code.coding[mdc].version = "2024-12-05"
* code.text = "Programmierter Brady-Stimulationsmodus (NBG)"
* subject = Reference(mii-exa-test-data-kardiologie-device-1)
* focus = Reference(mii-exa-test-data-kardiologie-devicemetric-1)
* effectiveDateTime = "2025-03-12T14:00:00+01:00"
* valueCodeableConcept = $11073-10101#754773 "MDC_IDC_ENUM_BRADY_MODE_VVI"
* valueCodeableConcept.coding.version = "2024-12-05"
