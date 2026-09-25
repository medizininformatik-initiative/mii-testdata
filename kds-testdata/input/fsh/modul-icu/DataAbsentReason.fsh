// ============================================================================
// ICU - dataAbsentReason-Varianten
//
// Belegt die Must-Support-Elemente dataAbsentReason (Observation- und
// Komponentenebene) der ICU-Profile. obs-6 bzw. die ICU-Invarianten
// mii-icu-val-xor-dar / mii-icu-comp-xor-val verlangen, dass value[x] und
// dataAbsentReason einander ausschliessen - jede Instanz hier traegt daher
// KEINEN Wert, sondern nur den Grund fuer das Fehlen.
//
// Klinischer Rahmen:
//  * 07.05.2024, 06:00 Uhr - Spontanatmungsversuch am T-Stueck: Respirator
//    diskonnektiert bzw. im Standby -> Beatmungsparameter fehlen.
//  * 06.05.2024, 19:30 Uhr - periorbitales Lidoedem -> Pupillen nicht einsehbar.
//  * 06.05.2024, 12:00 Uhr - Analgosedierung/Relaxierung -> Selbsteinschaetzung
//    von Schmerz und Vigilanz nicht erhebbar.
//
// DAR-Codes ausschliesslich aus
// http://terminology.hl7.org/CodeSystem/data-absent-reason (extensible Binding
// auf http://hl7.org/fhir/ValueSet/data-absent-reason).
// ============================================================================

// ----------------------------------------------------------------------------
// Beatmungsparameter (mii-pr-icu-vent-*, mii-pr-icu-parameter-von-beatmung)
// ----------------------------------------------------------------------------

Instance: mii-exa-test-data-patient-1-icu-vent-atemdr-mitt-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-atemwegsdruck-bei-mittlerem-expiratorischem-gasfluss
Usage: #example
Description: "ICU Observation (dataAbsentReason): Atemwegsdruck bei mittlerem expiratorischem Gasfluss - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#20056-8 "Pressure.airway^at mean expiratory flow on ventilator"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-atemdr-mitt-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-atemdr-null-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-atemwegsdruck-bei-null-expiratorischem-gasfluss
Usage: #example
Description: "ICU Observation (dataAbsentReason): Atemwegsdruck bei Null-Gasfluss (exspiratorisch) - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#20060-0 "Pressure.airway^at zero inspiratory flow on ventilator"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-atemdr-null-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-vt-einst-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-atemzugvolumen-einstellung
Usage: #example
Description: "ICU Observation (dataAbsentReason): Atemzugvolumen (Einstellung) - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#416811008 "Tidal volume setting (observable entity)"
* code.coding[loinc] = $loinc#20112-9 "Tidal volume setting Ventilator"
* code.coding[IEEE-11073] = $11073-10101#16929196 "MDC_VENT_VOL_TIDAL_SETTING"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-vt-einst-dar-1"
* dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
* note.text = "Nicht anwendbar: Beatmungsgeraet am 07.05.2024 um 06:00 Uhr im Standby (Spontanatmungsversuch am T-Stueck) - es war kein Beatmungsparameter eingestellt."

Instance: mii-exa-test-data-patient-1-icu-vent-vt-beat-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-atemzugvolumen-waehrend-beatmung
Usage: #example
Description: "ICU Observation (dataAbsentReason): Atemzugvolumen waehrend Beatmung - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250874002 "Ventilator delivered tidal volume (observable entity)"
* code.coding[loinc] = $loinc#76222-9 "Tidal volume Ventilator --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151980 "Volume of gas delivered through the patient-connection port during a respiratory cycle."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-vt-beat-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-mv-masch-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-beatmungsvolumen-pro-minute-maschineller-beatmung
Usage: #example
Description: "ICU Observation (dataAbsentReason): Beatmungsvolumen pro Minute (maschinelle Beatmung) - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250875001 "Ventilator delivered minute volume (observable entity)"
* code.coding[loinc] = $loinc#76009-0 "Inspired minute Volume during Mechanical ventilation"
* code.coding[IEEE-11073] = $11073-10101#152004 "Total volume of gas breathed in during 1 min during mechanical ventilation."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-mv-masch-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-zeit-hoch-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-beatmungszeit-hohem-druck
Usage: #example
Description: "ICU Observation (dataAbsentReason): Beatmungszeit bei hohem Druck - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#76190-8 "High pressure hold time setting Ventilator"
* code.coding[IEEE-11073] = $11073-10101#16929860 "MDC_VENT_TIME_PD_INSP_THIGH_SETTING"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-zeit-hoch-dar-1"
* dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
* note.text = "Nicht anwendbar: Beatmungsgeraet am 07.05.2024 um 06:00 Uhr im Standby (Spontanatmungsversuch am T-Stueck) - es war kein Beatmungsparameter eingestellt."

Instance: mii-exa-test-data-patient-1-icu-vent-zeit-niedrig-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-beatmungszeit-niedrigem-druck
Usage: #example
Description: "ICU Observation (dataAbsentReason): Beatmungszeit bei niedrigem Druck - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#76229-4 "Low pressure hold time setting Ventilator"
* code.coding[IEEE-11073] = $11073-10101#16929864 "MDC_VENT_TIME_PD_EXP_TLOW_SETTING"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-zeit-niedrig-dar-1"
* dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
* note.text = "Nicht anwendbar: Beatmungsgeraet am 07.05.2024 um 06:00 Uhr im Standby (Spontanatmungsversuch am T-Stueck) - es war kein Beatmungsparameter eingestellt."

Instance: mii-exa-test-data-patient-1-icu-vent-dp-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-druckdifferenz-beatmung
Usage: #example
Description: "ICU Observation (dataAbsentReason): Druckdifferenz der Beatmung - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#76154-4 "Airway pressure delta^on ventilator"
* code.coding[IEEE-11073] = $11073-10101#152720 "Inspiratory airway pressure relative to PEEP or BAP."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-dp-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-compliance-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-dynamische-kompliance
Usage: #example
Description: "ICU Observation (dataAbsentReason): Dynamische Kompliance - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250823005 "Total dynamic compliance (observable entity)"
* code.coding[IEEE-11073] = $11073-10101#151692 "Change of tidal volume per unit change of transthoracic pressure."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-compliance-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-insp-flow-set-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-eingestellter-inspiratorischer-gasfluss
Usage: #example
Description: "ICU Observation (dataAbsentReason): Eingestellter inspiratorischer Gasfluss - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#76275-7 "Inspiratory flow setting Ventilator"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-insp-flow-set-dar-1"
* dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
* note.text = "Nicht anwendbar: Beatmungsgeraet am 07.05.2024 um 06:00 Uhr im Standby (Spontanatmungsversuch am T-Stueck) - es war kein Beatmungsparameter eingestellt."

Instance: mii-exa-test-data-patient-1-icu-vent-te-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-einstellung-ausatmungszeit-beatmung
Usage: #example
Description: "ICU Observation (dataAbsentReason): Einstellung Ausatmungszeit - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250820008 "Expiratory time (observable entity)"
* code.coding[loinc] = $loinc#76187-4 "Expiratory hold time setting"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-te-dar-1"
* dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
* note.text = "Nicht anwendbar: Beatmungsgeraet am 07.05.2024 um 06:00 Uhr im Standby (Spontanatmungsversuch am T-Stueck) - es war kein Beatmungsparameter eingestellt."

Instance: mii-exa-test-data-patient-1-icu-vent-ti-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-einstellung-einatmungszeit-beatmung
Usage: #example
Description: "ICU Observation (dataAbsentReason): Einstellung Einatmungszeit - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250819002 "Inspiratory time (observable entity)"
* code.coding[loinc] = $loinc#76334-2 "Inspiratory time setting"
* code.coding[IEEE-11073] = $11073-10101#16929632 "MDC_VENT_TIME_PD_INSP_SETTING"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-ti-dar-1"
* dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
* note.text = "Nicht anwendbar: Beatmungsgeraet am 07.05.2024 um 06:00 Uhr im Standby (Spontanatmungsversuch am T-Stueck) - es war kein Beatmungsparameter eingestellt."

Instance: mii-exa-test-data-patient-1-icu-vent-etco2-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-endexpiratorischer-kohlendioxidpartialdruck
Usage: #example
Description: "ICU Observation (dataAbsentReason): Endexspiratorischer Kohlendioxidpartialdruck - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250790007 "End tidal carbon dioxide tension (observable entity)"
* code.coding[loinc] = $loinc#19891-1 "Carbon dioxide^at end expiration"
* code.coding[IEEE-11073] = $11073-10101#151708 "Partial pressure of carbon dioxide in airway gas measured at the end of expiration."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-etco2-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-exp-flow-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-exspiratorischer-gasfluss
Usage: #example
Description: "ICU Observation (dataAbsentReason): Exspiratorischer Gasfluss - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#60792-9 "Expiratory gas flow Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151944 "Expiratory gas flow during mechanical ventilation. "
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-exp-flow-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-event-o2-partial-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-exspiratorischer-sauerstoffpartialdruck
Usage: #example
Description: "ICU Observation (dataAbsentReason): Exspiratorischer Sauerstoffpartialdruck - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#442720002 "Expired oxygen tension (observable entity)"
* code.coding[loinc] = $loinc#3147-6 "Oxygen [Partial pressure] in Exhaled gas"
* code.coding[IEEE-11073] = $11073-10101#153132 "Partial pressure of oxygen in airway gas measured during expiration."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-event-o2-partial-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-horowitz-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-horowitz-in-arteriellem-blut
Usage: #example
Description: "ICU Observation (dataAbsentReason): Horowitz-Index in arteriellem Blut - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#50984-4 "Horowitz index in Arterial blood"
* code.coding[IEEE-11073] = $11073-10101#150656 "Oxygenation Ratio, calculated as the ratio of PaO2 (partial pressure of arterial oxygen) divided by FiO2 (the fractional of inspired oxygen, e.g., FiO2 in air = 0.21)."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-horowitz-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-fio2-gem-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-inspiratorische-sauerstofffraktion
Usage: #example
Description: "ICU Observation (dataAbsentReason): Inspiratorische Sauerstofffraktion (gemessen) - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250774007 "Inspired oxygen concentration (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-fio2-gem-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-insp-flow-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-inspiratorischer-gasfluss
Usage: #example
Description: "ICU Observation (dataAbsentReason): Inspiratorischer Gasfluss - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#60794-5 "Inspiratory gas flow Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151948 "MDC_VENT_FLOW_INSP"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-insp-flow-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-pip-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-maximaler-beatmungsdruck
Usage: #example
Description: "ICU Observation (dataAbsentReason): Maximaler Beatmungsdruck - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#27913002 "Maximum inspiratory pressure"
* code.coding[loinc] = $loinc#76531-3 "Pressure.max Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151957 "Maximum airway pressure during mechanical ventilation."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-pip-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-pmax-insp-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-maximaler-inspiratorischer-beatmungsdruck
Usage: #example
Description: "ICU Observation (dataAbsentReason): Maximaler inspiratorischer Beatmungsdruck - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#27913002 "Maximum inspiratory pressure (observable entity)"
* code.coding[IEEE-11073] = $11073-10101#151973 "Maximum inspiratory airway pressure."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-pmax-insp-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-freq-mech-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-mechanische-atemfrequenz-beatmet
Usage: #example
Description: "ICU Observation (dataAbsentReason): Mechanische Atemfrequenz - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250876000 "Ventilator rate (observable entity)"
* code.coding[loinc] = $loinc#33438-3 "Breath rate mechanical --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151586 "Rate of mechanical ventilation; method not specified."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-freq-mech-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-map-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-mittlerer-beatmungsdruck
Usage: #example
Description: "ICU Observation (dataAbsentReason): Mittlerer Beatmungsdruck - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#698821009 "Mean inspiratory airway pressure (observable entity)"
* code.coding[loinc] = $loinc#76530-5 "Mean pressure Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151975 "Mean inspiratory airway pressure."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-map-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-pmean-insp-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-mittlerer-inspiratorischer-beatmungsdruck
Usage: #example
Description: "ICU Observation (dataAbsentReason): Mittlerer inspiratorischer Beatmungsdruck - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#698821009 "Mean inspiratory airway pressure (observable entity)"
* code.coding[loinc] = $loinc#60952-9 "Mean airway pressure --during inspiration"
* code.coding[IEEE-11073] = $11073-10101#151975 "Mean inspiratory airway pressure."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-pmean-insp-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-pplat-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-plateau-beatmungsdruck
Usage: #example
Description: "ICU Observation (dataAbsentReason): Plateau-Beatmungsdruck - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#698822002 "Airway plateau pressure (observable entity)"
* code.coding[loinc] = $loinc#76259-1 "Pressure.plateau Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#152424 "Pressure in airway in plateau phase during mechanical ventilation."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-pplat-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-peep-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-positiv-endexpiratorischer-druck
Usage: #example
Description: "ICU Observation (dataAbsentReason): Positiv-endexspiratorischer Druck (PEEP) - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250854009 "Positive end expiratory pressure (observable entity)"
* code.coding[loinc] = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151976 "Positive end expiratory pressure applied to the airway."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-peep-dar-1"
* dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
* note.text = "Nicht anwendbar: Beatmungsgeraet am 07.05.2024 um 06:00 Uhr im Standby (Spontanatmungsversuch am T-Stueck) - es war kein Beatmungsparameter eingestellt."

Instance: mii-exa-test-data-patient-1-icu-vent-freq-spont-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-spontane-atemfrequenz-beatmet
Usage: #example
Description: "ICU Observation (dataAbsentReason): Spontane Atemfrequenz (beatmet) - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[IEEE-11073] = $11073-10101#152498 "Rate of breaths or inspiratory gas flow initiated and terminated by the patient where pressure and flow/volume delivery are determined by the patient without support or assistance by the ventilator. Includes unassisted breaths that are superimposed on the intermittently elevated baseline pressure with APRV, bilevel or spontaneous-only modes."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-freq-spont-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-freq-spont-mech-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-spontane-mechanische-atemfrequenz-beatmet
Usage: #example
Description: "ICU Observation (dataAbsentReason): Spontane und mechanische Atemfrequenz (beatmet) - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250810003 "Total breath rate (observable entity)"
* code.coding[loinc] = $loinc#19840-8 "Breath rate spontaneous and mechanical --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#152490 "Total rate of breaths or inspiratory gas flow comprised of unassisted (P), supported (S), assisted (A), synchronized assisted (Z) and controlled (C) breath types."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-freq-spont-mech-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-vt-spont-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-spontanes-atemzugvolumen
Usage: #example
Description: "ICU Observation (dataAbsentReason): Spontanes Atemzugvolumen - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250816009 "Spontaneous tidal volume (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-vt-spont-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-vt-spont-mech-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-spontanes-mechanisches-atemzugvolumen-waehrend-beatmung
Usage: #example
Description: "ICU Observation (dataAbsentReason): Spontanes und mechanisches Atemzugvolumen - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#20118-6 "Tidal volume.spontaneous+mechanical --on ventilator"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-vt-spont-mech-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

Instance: mii-exa-test-data-patient-1-icu-vent-ps-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-unterstuetzungsdruck-beatmung
Usage: #example
Description: "ICU Observation (dataAbsentReason): Unterstuetzungsdruck der Beatmung - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#20079-0 "Pressure support setting Ventilator"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-ps-dar-1"
* dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
* note.text = "Nicht anwendbar: Beatmungsgeraet am 07.05.2024 um 06:00 Uhr im Standby (Spontanatmungsversuch am T-Stueck) - es war kein Beatmungsparameter eingestellt."

Instance: mii-exa-test-data-patient-1-icu-vent-ie-ratio-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-zeitverhaeltnis-ein-ausatmung
Usage: #example
Description: "ICU Observation (dataAbsentReason): Zeitverhaeltnis Ein-/Ausatmung (I:E) - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250822000 "Inspiration/expiration time ratio (observable entity)"
* code.coding[loinc] = $loinc#75931-6 "Inspiration/Expiration time Ratio"
* code.coding[IEEE-11073] = $11073-10101#151832 "Ratio of durations of inspiratory and expiratory phases."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-ie-ratio-dar-1"
* dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
* note.text = "Nicht anwendbar: Beatmungsgeraet am 07.05.2024 um 06:00 Uhr im Standby (Spontanatmungsversuch am T-Stueck) - es war kein Beatmungsparameter eingestellt."

Instance: mii-exa-test-data-patient-1-icu-vent-param-generisch-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-parameter-von-beatmung
Usage: #example
Description: "ICU Observation (dataAbsentReason): Parameter von Beatmung (generisch, inspiratorisches Minutenvolumen) - waehrend Diskonnektion nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#426102006 "Inspiratory minute volume (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
* effectiveDateTime = "2024-05-07T06:00:00+02:00"
* issued = "2024-05-07T06:10:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-param-generisch-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."

// ----------------------------------------------------------------------------
// Koerpermasse und Vigilanz (mii-pr-icu-muv-*, mii-pr-icu-score-rass)
// ----------------------------------------------------------------------------

Instance: mii-exa-test-data-patient-1-icu-muv-groesse-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-koerpergroesse
Usage: #example
Description: "ICU Observation (dataAbsentReason): Koerpergroesse bei beatmeter Patientin nicht messbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* category[VSCat].coding.display = "Vital Signs"
* category[sct] = $sct#248326004 "Body measure (observable entity)"
* code.coding[loinc] = $loinc#8302-2 "Body height"
* code.coding[snomed] = $sct#1153637007 "Body height"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-05T08:30:00+02:00"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-muv-groesse-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Stehend gemessene Koerpergroesse bei analgosedierter, beatmeter Patientin nicht erhebbar; stattdessen wurde die liegende Koerperlaenge dokumentiert."

Instance: mii-exa-test-data-patient-1-icu-muv-kopfumfang-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-kopfumfang
Usage: #example
Description: "ICU Observation (dataAbsentReason): Kopfumfang nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* category[sct] = $sct#248326004 "Body measure (observable entity)"
* code.coding[loinc] = $loinc#9843-4 "Head Occipital-frontal circumference"
* code.coding[snomed] = $sct#363812007
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
// Workaround wie bei mii-exa-test-data-patient-1-icu-muv-kopfumfang-1: der
// generierte Kopfumfang-Snapshot hat einen defekten effective[x]-Typslice,
// deshalb effectivePeriod statt effectiveDateTime.
* effectivePeriod.start = "2024-05-05T08:30:00+02:00"
* effectivePeriod.end = "2024-05-05T08:35:00+02:00"
* bodySite = $sct#69536005 "Head structure (body structure)"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-muv-kopfumfang-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Kopfumfang nicht gemessen: bei der erwachsenen Intensivpatientin nicht Bestandteil der Routineerhebung."

Instance: mii-exa-test-data-patient-1-icu-score-rass-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-rass
Usage: #example
Description: "ICU Score (dataAbsentReason): RASS unter Muskelrelaxierung nicht beurteilbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[exam] = $observation-category#exam "Exam"
* code.coding = $sct#1345050000 "Richmond Agitation Sedation Scale score (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T12:00:00+02:00"
* issued = "2024-05-06T12:10:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-score-rass-dar-1"
* dataAbsentReason = $data-absent-reason#temp-unknown "Temporarily Unknown"
* note.text = "RASS unter kontinuierlicher Muskelrelaxierung (Cisatracurium-Perfusor) nicht beurteilbar; Neubewertung nach Relaxansstopp."

// ----------------------------------------------------------------------------
// Komponenten-dataAbsentReason (Observation.component.dataAbsentReason)
// ----------------------------------------------------------------------------

// Herzfrequenz: waehrend des Transports war weder das EKG-Monitoring noch die
// palpatorische Kontrollmessung verfuegbar -> DAR auf Observation UND Komponente.
Instance: mii-exa-test-data-patient-1-icu-muv-herzfreq-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-herzfrequenz
Usage: #example
Description: "ICU Observation (dataAbsentReason): Herzfrequenz waehrend Transport nicht abgeleitet"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[sct] = $sct#364075005 "Heart rate"
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE-11073] = $11073-10101#147842 "MDC_ECG_HEART_RATE"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T14:00:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* method = $sct#29303009 "Electrocardiographic procedure"
* bodySite = $sct#80891009 "Heart structure (body structure)"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-muv-herzfreq-dar-1"
* dataAbsentReason = $data-absent-reason#temp-unknown "Temporarily Unknown"
* component[+].code.coding = $loinc#8867-4 "Heart rate"
* component[=].code.text = "Herzfrequenz, palpatorische Kontrollmessung"
* component[=].dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "EKG-Monitoring waehrend des Transports zur CT-Diagnostik abgesteckt; auch die palpatorische Kontrollmessung wurde nicht durchgefuehrt."

// Koerperlaenge: Messung in Bauchlage nicht durchfuehrbar; die stehend
// gemessene Koerpergroesse (Komponente) scheidet bei Beatmung ebenfalls aus.
Instance: mii-exa-test-data-patient-1-icu-muv-laenge-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-koerperlaenge
Usage: #example
Description: "ICU Observation (dataAbsentReason): Koerperlaenge in Bauchlage nicht messbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[sct] = $sct#1149101003
* code.coding[loinc] = $loinc#8306-3 "Body height --lying"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T14:00:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* method = $sct#102538003 "Recumbent body position (finding)"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-muv-laenge-dar-1"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* component[+].code.coding = $loinc#8302-2 "Body height"
* component[=].code.text = "Stehend gemessene Koerpergroesse"
* component[=].dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Laengenmessung waehrend der 16-stuendigen Bauchlagerung nicht durchfuehrbar; die stehende Koerpergroesse ist bei beatmeter Patientin ebenfalls nicht erhebbar."

// Arterieller Blutdruck: value[x] UND Observation.dataAbsentReason sind im
// Profil auf 0..0 fixiert (Panel-Profil), obwohl dataAbsentReason als
// Must-Support markiert ist -> der Observation-Knoten ist strukturell nicht
// belegbar. Der Nachweis erfolgt daher auf Komponentenebene: beim Wechsel des
// Druckaufnehmers fehlen alle drei Komponentenwerte.
Instance: mii-exa-test-data-patient-1-icu-muv-blutdruck-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-arterieller-blutdruck
Usage: #example
Description: "ICU Observation (dataAbsentReason): Arterieller Blutdruck beim Wechsel des Druckaufnehmers nicht verfuegbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.coding[snomed] = $sct#75367002 "Blood pressure"
* code.coding[sct] = $sct#364090009 "Systemic arterial pressure"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T14:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-monitor-1)
* method = $sct#17146006 "Arterial pressure monitoring, invasive method (regime/therapy)"
* bodySite = $sct#45631007 "Structure of radial artery (body structure)"
* component[SystolicBP].code.coding[loinc] = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code.coding[sct] = $sct#271649006 "Systolic blood pressure"
* component[SystolicBP].code.coding[IEEE-11073] = $11073-10101#150017 "MDC_PRESS_BLD_NONINV_SYS"
* component[SystolicBP].dataAbsentReason = $data-absent-reason#temp-unknown "Temporarily Unknown"
* component[DiastolicBP].code.coding[loinc] = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[sct] = $sct#271650006 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[IEEE-11073] = $11073-10101#150018 "MDC_PRESS_BLD_NONINV_DIA"
* component[DiastolicBP].dataAbsentReason = $data-absent-reason#temp-unknown "Temporarily Unknown"
* component[meanBP].code.coding[loinc] = $loinc#8478-0 "Mean blood pressure"
* component[meanBP].code.coding[sct] = $sct#6797001 "Mean blood pressure"
* component[meanBP].code.coding[IEEE-11073] = $11073-10101#150019 "MDC_PRESS_BLD_NONINV_MEAN"
* component[meanBP].dataAbsentReason = $data-absent-reason#temp-unknown "Temporarily Unknown"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-muv-blutdruck-dar-1"
* note.text = "Arterielle Druckmessung waehrend des Wechsels von Druckaufnehmer und Spuelsystem (14:00 Uhr) fuer ca. 5 Minuten unterbrochen; nicht-invasive Ersatzmessung erst um 14:10 Uhr."

// GCS: value[x] ist min=1, der Gesamtscore muss daher gesetzt bleiben. Der
// klassische DAR-Fall liegt in der Komponente: die verbale Reaktion ist beim
// intubierten Patienten nicht beurteilbar ("GCS 6T").
Instance: mii-exa-test-data-patient-1-icu-score-gcs-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-gcs
Usage: #example
Description: "ICU Score (dataAbsentReason): GCS 6T - verbale Reaktion bei intubierter Patientin nicht beurteilbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[loinc] = $loinc#9269-2 "Glasgow coma score total"
* code.coding[sct] = $sct#248241002
* code.coding[sct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.coding[ieee11073] = $11073-10101#153728
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T12:00:00+02:00"
* issued = "2024-05-06T12:10:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* valueQuantity = 6 '{score}' "{score}"
* component[GCSeyes].code.coding = $loinc#9267-6 "Glasgow coma score eye opening"
* component[GCSeyes].valueCodeableConcept = $loinc#LA6554-5 "Eye opening to pain"
* component[GCSmotor].code.coding = $loinc#9268-4 "Glasgow coma score motor"
* component[GCSmotor].valueCodeableConcept = $loinc#LA6565-1 "Withdrawal from pain"
* component[GCSverbal].code.coding = $loinc#9270-0 "Glasgow coma score verbal"
* component[GCSverbal].dataAbsentReason = $data-absent-reason#not-applicable "Not Applicable"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-score-gcs-dar-1"
* note.text = "Verbale Reaktion bei orotracheal intubierter und beatmeter Patientin nicht beurteilbar; Gesamtscore als Summe aus Augenoeffnen (2) und motorischer Reaktion (4) = 6T dokumentiert."

// Visuelle Analogskala: value[x] min=0, daher DAR auf Observation UND Komponente.
Instance: mii-exa-test-data-patient-1-icu-score-vas-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-visuelle-analogskala
Usage: #example
Description: "ICU Score (dataAbsentReason): Visuelle Analogskala unter Analgosedierung nicht erhebbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[loinc] = $loinc#38214-3 "Pain severity [Score] Visual analog score"
* code.coding[sct] = $sct#443394008
* code.coding[sct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T12:00:00+02:00"
* issued = "2024-05-06T12:10:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* dataAbsentReason = $data-absent-reason#temp-unknown "Temporarily Unknown"
* component[+].code.coding = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* component[=].code.text = "Numerische Ratingskala als Gegenprobe"
* component[=].dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-score-vas-dar-1"
* note.text = "Selbsteinschaetzung unter Analgosedierung (RASS -4) weder per VAS noch per NRS erhebbar; Fremdeinschaetzung erfolgte ueber ZOPA."

// Faces Pain Scale - Revised: value[x] min=1, daher Wert erhalten; der
// DAR-Nachweis erfolgt in der Komponente.
Instance: mii-exa-test-data-patient-1-icu-score-fpsr-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-faces-pain-scale-revised
Usage: #example
Description: "ICU Score (dataAbsentReason): FPS-R 4/10, NRS-Gegenprobe nicht erhoben"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[sct] = $sct#1284909003 "Faces Pain Scale - Revised score (observable entity)"
* code.coding[sct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-07T10:15:00+02:00"
* issued = "2024-05-07T10:25:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* valueQuantity = 4 '{score}' "{score}"
* component[+].code.coding = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* component[=].code.text = "Numerische Ratingskala als Gegenprobe"
* component[=].dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-score-fpsr-dar-1"
* note.text = "Bildgestuetzte Selbsteinschaetzung (FPS-R) gelang, die zusaetzliche numerische Gegenprobe wurde bei Erschoepfung der Patientin nicht durchgefuehrt."

// ZOPA: value[x] min=1 (Fremdeinschaetzung liegt vor); die Selbsteinschaetzung
// per NRS als Komponente ist beim intubierten Patienten nicht erhebbar.
Instance: mii-exa-test-data-patient-1-icu-score-zopa-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-zopa
Usage: #example
Description: "ICU Score (dataAbsentReason): ZOPA erhoben, NRS-Selbsteinschaetzung nicht moeglich"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[dgai] = http://dgai.de#DGAI-ZOPA "Zuerich Observation Pain Assessment (ZOPA)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T12:00:00+02:00"
* issued = "2024-05-06T12:10:00+02:00"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* component[+].code.coding = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* component[=].code.text = "Numerische Ratingskala (Selbsteinschaetzung)"
* component[=].dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-score-zopa-dar-1"
* note.text = "ZOPA als Fremdeinschaetzung erhoben, weil die Selbsteinschaetzung per NRS bei intubierter, analgosedierter Patientin nicht moeglich ist."

// ----------------------------------------------------------------------------
// Pupillenbefund 06.05.2024, 19:30 Uhr - periorbitales Lidoedem nach
// Volumentherapie, die Pupillen sind beidseits nicht einsehbar. Der Grouper
// verlangt hasMember 9/9, daher traegt jeder der neun Einzelbefunde seinen
// eigenen dataAbsentReason.
// Hinweis: im Grouper-Profil mii-pr-icu-untersuchung-pupillenbefund sind
// value[x] UND dataAbsentReason auf 0..0 fixiert (dataAbsentReason ist
// dennoch Must-Support) - der Grund steckt deshalb ausschliesslich in den
// neun Einzelbefunden und in note.text.
// ----------------------------------------------------------------------------

Instance: mii-exa-test-data-patient-1-icu-pupille-befund-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenbefund
Usage: #example
Description: "ICU Pupillenbefund (dataAbsentReason): Grouper - Pupillen bei Lidoedem nicht beurteilbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding[Snomed] = $sct#247010007 "Pupil finding (finding)"
* code.coding[Loinc] = $loinc#80310-6 "Pupil assessment panel"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T19:30:00+02:00"
* hasMember[PupillenlichtreaktionDirekt][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-licht-dir-re-dar-1)
* hasMember[PupillenlichtreaktionDirekt][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-licht-dir-li-dar-1)
* hasMember[PupillenlichtreaktionIndirekt][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-licht-ind-re-dar-1)
* hasMember[PupillenlichtreaktionIndirekt][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-licht-ind-li-dar-1)
* hasMember[Pupillengroesse][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-groesse-re-dar-1)
* hasMember[Pupillengroesse][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-groesse-li-dar-1)
* hasMember[Pupillenform][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-form-re-dar-1)
* hasMember[Pupillenform][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-form-li-dar-1)
* hasMember[Pupillensymmetrie] = Reference(mii-exa-test-data-patient-1-icu-pupille-symmetrie-dar-1)
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-befund-dar-1"
* note.text = "Pupillenstatus um 19:30 Uhr bei ausgepraegtem periorbitalem Lidoedem beidseits nicht durchfuehrbar; alle neun Einzelbefunde tragen denselben Grund."

Instance: mii-exa-test-data-patient-1-icu-pupille-form-re-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenform
Usage: #example
Description: "ICU Pupillenbefund (dataAbsentReason): Pupillenform rechts nicht beurteilbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#363954009 "Pupil shape"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T19:30:00+02:00"
* bodySite = $sct#52378001 "Structure of pupil of right eye"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-form-re-dar-1"
* note.text = "Pupille rechts bei ausgepraegtem periorbitalem Lidoedem nicht einsehbar."

Instance: mii-exa-test-data-patient-1-icu-pupille-form-li-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenform
Usage: #example
Description: "ICU Pupillenbefund (dataAbsentReason): Pupillenform links nicht beurteilbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#363954009 "Pupil shape"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T19:30:00+02:00"
* bodySite = $sct#16089004 "Structure of pupil of left eye"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-form-li-dar-1"
* note.text = "Pupille links bei ausgepraegtem periorbitalem Lidoedem nicht einsehbar."

Instance: mii-exa-test-data-patient-1-icu-pupille-groesse-re-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillengroesse
Usage: #example
Description: "ICU Pupillenbefund (dataAbsentReason): Pupillengroesse rechts nicht messbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#363953003 "Size of pupil"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T19:30:00+02:00"
* bodySite = $sct#52378001 "Structure of pupil of right eye"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-groesse-re-dar-1"
* note.text = "Pupillometrie rechts bei ausgepraegtem periorbitalem Lidoedem nicht durchfuehrbar."

Instance: mii-exa-test-data-patient-1-icu-pupille-groesse-li-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillengroesse
Usage: #example
Description: "ICU Pupillenbefund (dataAbsentReason): Pupillengroesse links nicht messbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#363953003 "Size of pupil"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T19:30:00+02:00"
* bodySite = $sct#16089004 "Structure of pupil of left eye"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-groesse-li-dar-1"
* note.text = "Pupillometrie links bei ausgepraegtem periorbitalem Lidoedem nicht durchfuehrbar."

Instance: mii-exa-test-data-patient-1-icu-pupille-licht-dir-re-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenlichtreaktion-direkt
Usage: #example
Description: "ICU Pupillenbefund (dataAbsentReason): direkte Lichtreaktion rechts nicht pruefbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#45832002
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T19:30:00+02:00"
* bodySite = $sct#52378001 "Structure of pupil of right eye"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-licht-dir-re-dar-1"
* note.text = "Direkte Lichtreaktion rechts bei ausgepraegtem periorbitalem Lidoedem nicht pruefbar."

Instance: mii-exa-test-data-patient-1-icu-pupille-licht-dir-li-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenlichtreaktion-direkt
Usage: #example
Description: "ICU Pupillenbefund (dataAbsentReason): direkte Lichtreaktion links nicht pruefbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#45832002
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T19:30:00+02:00"
* bodySite = $sct#16089004 "Structure of pupil of left eye"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-licht-dir-li-dar-1"
* note.text = "Direkte Lichtreaktion links bei ausgepraegtem periorbitalem Lidoedem nicht pruefbar."

Instance: mii-exa-test-data-patient-1-icu-pupille-licht-ind-re-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenlichtreaktion-indirekt
Usage: #example
Description: "ICU Pupillenbefund (dataAbsentReason): indirekte Lichtreaktion rechts nicht pruefbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#84917001
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T19:30:00+02:00"
* bodySite = $sct#52378001 "Structure of pupil of right eye"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-licht-ind-re-dar-1"
* note.text = "Konsensuelle Lichtreaktion rechts bei ausgepraegtem periorbitalem Lidoedem nicht pruefbar."

Instance: mii-exa-test-data-patient-1-icu-pupille-licht-ind-li-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenlichtreaktion-indirekt
Usage: #example
Description: "ICU Pupillenbefund (dataAbsentReason): indirekte Lichtreaktion links nicht pruefbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#84917001
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T19:30:00+02:00"
* bodySite = $sct#16089004 "Structure of pupil of left eye"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-licht-ind-li-dar-1"
* note.text = "Konsensuelle Lichtreaktion links bei ausgepraegtem periorbitalem Lidoedem nicht pruefbar."

Instance: mii-exa-test-data-patient-1-icu-pupille-symmetrie-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillensymmetrie
Usage: #example
Description: "ICU Pupillenbefund (dataAbsentReason): Pupillensymmetrie nicht beurteilbar"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#301942005 "Finding of proportion of pupil (finding)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T19:30:00+02:00"
* bodySite.coding = $sct#67019001 "Structure of pupil of both eyes (body structure)"
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-symmetrie-dar-1"
* note.text = "Seitenvergleich bei beidseits nicht einsehbaren Pupillen (periorbitales Lidoedem) nicht moeglich."
