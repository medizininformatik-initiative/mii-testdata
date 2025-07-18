// Diagnose Patient-1
Instance: mii-exa-test-data-patient-1-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(B05.3, 2023, mii-exa-test-data-patient-1, 2024-02-12, Masernotitis)
* code.coding[icd10-gm].extension[0].url = "http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen"
* code.coding[icd10-gm].extension[0].valueCoding = $mehrfachcodierungs-kennzeichen#†
* code.coding[icd10-gm].extension[1].url = "http://fhir.de/StructureDefinition/seitenlokalisation"
* code.coding[icd10-gm].extension[1].valueCoding = $seitenlokalisation#B "beiderseits"
* code.coding[icd10-gm].extension[2].url = "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit"
* code.coding[icd10-gm].extension[2].valueCoding = $diagnosesicherheit#G "gesicherte Diagnose"
* code.coding[alpha-id] = $alpha-id|2023#I29578 "Masern mit Otitis"
* code.coding[sct] = $sct#13420004 "Post measles otitis media (disorder)"
* bodySite.coding[snomed-ct] = $sct#25342003 "Middle ear structure (body structure)"
* onsetDateTime = "2024-02-21"
* recordedDate = "2024-02-21"

Instance: mii-exa-test-data-patient-1-diagnose-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(H67.1, 2023, mii-exa-test-data-patient-1, 2024-02-12, Masernotitis)
* code.coding[icd10-gm].display = "Otitis media bei anderenorts klassifizierten Viruskrankheiten"
* onsetDateTime = "2024-02-21"
* recordedDate = "2024-02-21"
* extension[ReferenzPrimaerdiagnose].url = "http://hl7.org/fhir/StructureDefinition/condition-related"
* extension[ReferenzPrimaerdiagnose].valueReference = Reference(mii-exa-test-data-patient-1-diagnose-1)

// Patient-2
Instance: mii-exa-test-data-patient-2-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(C34.1, 2024, mii-exa-test-data-patient-2, 2024-03-02, Bösartige Neubildung: Oberlappen-Bronchus)
* code.coding[alpha-id] = $alpha-id|2024#I30011 "Bösartige Neubildung des Lungenoberlappens"
* code.coding[sct] = $sct#254637007 "Non-small cell lung cancer (disorder)"
* bodySite.coding[snomed-ct] = $sct#45653009 "Structure of upper lobe of lung (body structure)"
* recordedDate = "2024-03-02"

// Patient-3
Instance: mii-exa-test-data-patient-3-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(C21.8, 2022, mii-exa-test-data-patient-3, 2022-04-02, Bösartige anorektale Neubildung)
* code.coding[alpha-id] = $alpha-id|2022#I29975 "Bösartige anorektale Neubildung"
* code.coding[sct] = $sct#447886005 "Adenocarcinoma of anorectum (disorder)"
//* code.coding[icd-o-3] = $icd-o-3#8140/3 "Adenokarzinom o.n.A."
* bodySite.coding[snomed-ct] = $sct#281088000 "Structure of anus and/or rectum (body structure)"
//* bodySite.coding[icd-o-3] = $icd-o-3#C21.8
* recordedDate = "2022-04-02"

// Patient-4
Instance: mii-exa-test-data-patient-4-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(C16.9, 2022, mii-exa-test-data-patient-4, 2022-11-30, Bösartige Neubildung des Magens nicht näher bezeichnet)

// Patient-5
Instance: mii-exa-test-data-patient-5-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(N80.1, 2023, mii-exa-test-data-patient-5, 2023-07-10, Endometriose des Ovars)
* code.coding[alpha-id] = $alpha-id|2023#I32145 "Endometriose des Ovars"
* code.coding[sct] = $sct#129103003 "Endometriosis (disorder)"
* bodySite.coding[snomed-ct] = $sct#15497006 "Ovarian structure (body structure)"
* recordedDate = "2023-07-10"

// Patient-6
Instance: mii-exa-test-data-patient-6-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(K29.5, 2022, mii-exa-test-data-patient-6, 2022-03-12, Chronische Gastritis\, nicht näher bezeichnet)
* code.coding[alpha-id] = $alpha-id|2022#I30016 "Chronische Gastritis"
* code.coding[sct] = $sct#4556007 "Gastritis (disorder)"
* bodySite.coding[snomed-ct] = $sct#69695003 "Stomach structure (body structure)"
* recordedDate = "2022-03-12"

// Patient-7
Instance: mii-exa-test-data-patient-7-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(J20.9, 2024, mii-exa-test-data-patient-7, 2024-01-08, Akute Bronchitis\, nicht näher bezeichnet)
* code.coding[alpha-id] = $alpha-id|2024#I25780 "Akute Bronchitis"
* code.coding[sct] = $sct#10509002 "Acute bronchitis (disorder)"
* bodySite.coding[snomed-ct] = $sct#955009 "Bronchial structure (body structure)"
* recordedDate = "2024-01-08"

// Patient-8
Instance: mii-exa-test-data-patient-8-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(I25.9, 2023, mii-exa-test-data-patient-8, 2023-11-10, Chronische ischämische Herzkrankheit\, nicht näher bezeichnet)
* code.coding[alpha-id] = $alpha-id|2023#I26852 "Chronische ischämische Herzkrankheit"
* code.coding[sct] = $sct#413838009 "Chronic ischemic heart disease (disorder)"
* bodySite.coding[snomed-ct] = $sct#80891009 "Heart structure (body structure)"
* recordedDate = "2023-11-10"

// Patient-9
Instance: mii-exa-test-data-patient-9-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(N83.2, 2024, mii-exa-test-data-patient-9, 2024-02-20, Sonstige und nicht näher bezeichnete Ovarialzysten)
* code.coding[alpha-id] = $alpha-id|2024#I20743 "Ovarialzyste"
* code.coding[sct] = $sct#79883001 "Cyst of ovary (disorder)"
* bodySite.coding[snomed-ct] = $sct#15497006 "Ovarian structure (body structure)"
* recordedDate = "2024-02-20"

// Patient-10
Instance: mii-exa-test-data-patient-10-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(G43.9, 2019, mii-exa-test-data-patient-10, 2019-05-14, Migräne\, nicht näher bezeichnet)
* code.coding[alpha-id] = $alpha-id|2019#I18412 "Migräne"
* code.coding[sct] = $sct#37796009 "Migraine (disorder)"
* bodySite.coding[snomed-ct] = $sct#281231009 "Vascular structure of head (body structure)"
* recordedDate = "2019-05-14"