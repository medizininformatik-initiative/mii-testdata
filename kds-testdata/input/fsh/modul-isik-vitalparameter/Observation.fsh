// ============================================================================
// ISiK Vitalparameter Test Data - Observations
// Deckt alle 10 Vitalparameter-Profile aus de.gematik.isik 6.0.0 ab:
// Atemfrequenz, Blutdruck, EKG, GCS, Herzfrequenz, Koerpergewicht,
// Koerpergroesse, Koerperkerntemperatur, Kopfumfang, Sauerstoffsaettigung.
// Alle Instanzen: Messung am 2026-05-12 im Rahmen des stationaeren
// Aufenthalts (Encounter-1) von Viktoria Vogel (Patient-1).
// ============================================================================

// Atemfrequenz: 18/min
Instance: mii-exa-test-data-isik-vitalparameter-atemfrequenz-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKAtemfrequenz
Usage: #example
Description: "ISiK Atemfrequenz: 18/min"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#9279-1 "Respiratory rate"
* code.coding[snomed] = $sct#86290005 "Respiratory rate (observable entity)"
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "2026-05-12T08:00:00+02:00"
* performer.display = "Pflegefachkraft Station 14i"
* valueQuantity = 18 '/min' "/min"
* method = $sct#32750006 "Inspection (procedure)"
* device.display = "Vitaldatenmonitor Bettplatz 3"

// Herzfrequenz: 76/min
Instance: mii-exa-test-data-isik-vitalparameter-herzfrequenz-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKHerzfrequenz
Usage: #example
Description: "ISiK Herzfrequenz: 76/min"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[snomed] = $sct#364075005 "Heart rate (observable entity)"
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "2026-05-12T08:00:00+02:00"
* performer.display = "Pflegefachkraft Station 14i"
* valueQuantity = 76 '/min' "/min"
* method = $sct#113011001 "Palpation (procedure)"
* device.display = "Vitaldatenmonitor Bettplatz 3"

// Blutdruck systemisch arteriell: 132/84 mmHg (MAD 100 mmHg)
Instance: mii-exa-test-data-isik-vitalparameter-blutdruck-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell
Usage: #example
Description: "ISiK Blutdruck systemisch arteriell: 132/84 mmHg, MAD 100 mmHg"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.coding[snomed] = $sct#75367002 "Blood pressure (observable entity)"
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "2026-05-12T08:05:00+02:00"
* performer.display = "Pflegefachkraft Station 14i"
* method = $sct#371911009 "Measurement of blood pressure using cuff method (procedure)"
* device.display = "Oberarm-Blutdruckmessgeraet, Manschette Groesse M"
* component[SystolicBP].code.coding[LOINC] = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code.coding[SCT] = $sct#271649006 "Systolic blood pressure (observable entity)"
* component[SystolicBP].valueQuantity = 132 'mm[Hg]' "mmHg"
* component[DiastolicBP].code.coding[LOINC] = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[SCT] = $sct#271650006 "Diastolic blood pressure (observable entity)"
* component[DiastolicBP].valueQuantity = 84 'mm[Hg]' "mmHg"
* component[meanBP].code.coding[LOINC] = $loinc#8478-0 "Mean blood pressure"
* component[meanBP].code.coding[SCT] = $sct#6797001 "Mean blood pressure (observable entity)"
* component[meanBP].valueQuantity = 100 'mm[Hg]' "mmHg"

// Sauerstoffsaettigung arteriell (pulsoxymetrisch): 96 %
Instance: mii-exa-test-data-isik-vitalparameter-sauerstoffsaettigung-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKSauerstoffsaettigungArteriell
Usage: #example
Description: "ISiK Sauerstoffsaettigung arteriell: 96 % (pulsoxymetrisch)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[snomed] = $sct#431314004 "Peripheral oxygen saturation (observable entity)"
* code.coding[loinc-zusatzcode] = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "2026-05-12T08:00:00+02:00"
* performer.display = "Pflegefachkraft Station 14i"
* valueQuantity = 96 '%' "%"
* method = $sct#252465000 "Pulse oximetry (procedure)"
* device.display = "Pulsoximeter, Fingersensor"

// Koerpergewicht: 78 kg
Instance: mii-exa-test-data-isik-vitalparameter-koerpergewicht-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpergewicht
Usage: #example
Description: "ISiK Koerpergewicht: 78 kg"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#29463-7 "Body weight"
* code.coding[snomed] = $sct#27113001 "Body weight (observable entity)"
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "2026-05-11T18:30:00+02:00"
* performer.display = "Pflegefachkraft Station 14i"
* valueQuantity = 78 'kg' "kg"
* method = $sct#39857003 "Weighing patient (procedure)"
* device.display = "Standwaage, geeicht"

// Koerpergroesse: 172 cm
Instance: mii-exa-test-data-isik-vitalparameter-koerpergroesse-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpergroesse
Usage: #example
Description: "ISiK Koerpergroesse: 172 cm"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8302-2 "Body height"
* code.coding[snomed] = $sct#1153637007 "Body height (observable entity)"
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "2026-05-11T18:30:00+02:00"
* performer.display = "Pflegefachkraft Station 14i"
* valueQuantity = 172 'cm' "cm"
* method = $sct#14456009 "Measuring height of patient (procedure)"
* device.display = "Stadiometer"

// Koerperkerntemperatur: 37.8 GradC (Doppel-LOINC 8310-5 + 8329-5 lt. Profil)
Instance: mii-exa-test-data-isik-vitalparameter-koerperkerntemperatur-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerperkerntemperatur
Usage: #example
Description: "ISiK Koerperkerntemperatur: 37.8 Grad Celsius (rektal)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[snomed] = $sct#307047009 "Rectal temperature (observable entity)"
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "2026-05-12T08:10:00+02:00"
* performer.display = "Pflegefachkraft Station 14i"
* valueQuantity = 37.8 'Cel' "°C"
* method = $sct#18649001 "Rectal temperature taking (procedure)"
* device.display = "Digitalthermometer"

// Kopfumfang: 56 cm
Instance: mii-exa-test-data-isik-vitalparameter-kopfumfang-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKKopfumfang
Usage: #example
Description: "ISiK Kopfumfang: 56 cm"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#9843-4 "Head Occipital-frontal circumference"
* code.coding[snomed] = $sct#363812007 "Head circumference (observable entity)"
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "2026-05-11T18:35:00+02:00"
* performer.display = "Pflegefachkraft Station 14i"
* valueQuantity = 56 'cm' "cm"
* method = $sct#170112004 "Head circumference measured (procedure)"
* device.display = "Massband"

// Glasgow Coma Scale: 12 Punkte (E3 V4 M5)
Instance: mii-exa-test-data-isik-vitalparameter-gcs-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKGCS
Usage: #example
Description: "ISiK GCS: 12 Punkte (Augen 3, verbal 4, motorisch 5) nach Synkope"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey
* code.coding[loinc] = $loinc#9269-2 "Glasgow coma score total"
* code.coding[snomed] = $sct#248241002 "Glasgow coma score (observable entity)"
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "2026-05-11T17:45:00+02:00"
* performer.display = "Dienstarzt Notaufnahme"
* valueQuantity = 12 '1' "Punkte"
* method = $sct#225398001 "Neurological assessment (procedure)"
* device.display = "Klinisches Dokumentationssystem der Notaufnahme"
* component[Eye].code = $loinc#9267-6 "Glasgow coma score eye opening"
* component[Eye].valueCodeableConcept = $loinc#LA6555-2 "Eye opening to verbal command"
* component[Verbal].code = $loinc#9270-0 "Glasgow coma score verbal"
* component[Verbal].valueCodeableConcept = $loinc#LA6560-2 "Confused"
* component[Motor].code = $loinc#9268-4 "Glasgow coma score motor"
* component[Motor].valueCodeableConcept = $loinc#LA6566-9 "Localizing pain"

// 12-Kanal-Ruhe-EKG, dokumentiert mit 3 Extremitaetenableitungen als
// SampledData-Kanaele (500 Hz, period 2 ms, Amplituden in uV)
Instance: mii-exa-test-data-isik-vitalparameter-ekg-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKEKG
Usage: #example
Description: "ISiK EKG: Ruhe-EKG mit den Ableitungen I, II und III als SampledData-Kanaele (500 Hz)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#procedure
* code.coding[loinc] = $loinc#11524-6 "EKG study"
* code.coding[snomed] = $sct#106073009
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "2026-05-12T09:15:00+02:00"
* performer.display = "MTA Funktionsdiagnostik"
* method = $sct#29303009 "Electrocardiographic procedure (procedure)"
* device.display = "12-Kanal-EKG-Schreiber"
* component[ekgLeads][+].code = $sct#272729005 "Lead I"
* component[ekgLeads][=].valueSampledData.origin = 0 'uV' "uV"
* component[ekgLeads][=].valueSampledData.period = 2
* component[ekgLeads][=].valueSampledData.factor = 4.88
* component[ekgLeads][=].valueSampledData.dimensions = 1
* component[ekgLeads][=].valueSampledData.data = "0 -1 0 2 4 3 1 0 -6 42 118 36 -12 -2 0 1 3 6 9 11 9 6 3 1 0"
* component[ekgLeads][+].code = $sct#272730000 "Lead II"
* component[ekgLeads][=].valueSampledData.origin = 0 'uV' "uV"
* component[ekgLeads][=].valueSampledData.period = 2
* component[ekgLeads][=].valueSampledData.factor = 4.88
* component[ekgLeads][=].valueSampledData.dimensions = 1
* component[ekgLeads][=].valueSampledData.data = "0 1 2 4 6 4 2 0 -8 64 176 52 -16 -3 0 2 5 9 13 15 13 8 4 2 0"
* component[ekgLeads][+].code = $sct#272731001 "Lead III"
* component[ekgLeads][=].valueSampledData.origin = 0 'uV' "uV"
* component[ekgLeads][=].valueSampledData.period = 2
* component[ekgLeads][=].valueSampledData.factor = 4.88
* component[ekgLeads][=].valueSampledData.dimensions = 1
* component[ekgLeads][=].valueSampledData.data = "0 1 1 2 3 2 1 0 -4 24 60 18 -6 -1 0 1 2 3 5 6 5 3 2 1 0"
