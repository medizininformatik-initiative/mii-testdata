// Patient-1
Instance: mii-exa-test-data-patient-1-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab|1.0.7-alpha1"
* status = #completed
* intent = #order
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/Laboranforderungen"
* identifier[anforderung].value = "LA_000001"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* category.coding[laboratory] = $observation-category#laboratory
* code = $loinc#55429-5 "Short blood count panel - Blood"
* code.text = "kleines Blutbild"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* authoredOn = "2024-02-15T10:28:00+01:00"
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)

// Patient-2 ServiceRequest (Complete Blood Count - alle hämatologischen Parameter)
Instance: mii-exa-test-data-patient-2-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/lab-requests"
* identifier[anforderung].value = "LAB_000002"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* status = #completed
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
* subject = Reference(mii-exa-test-data-patient-2)
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* authoredOn = "2024-03-04T07:00:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#182840001 "Drug monitoring"
* specimen = Reference(mii-exa-test-data-patient-2-specimen-1)

// Patient-3 ServiceRequest 1 (Complete Blood Count)
Instance: mii-exa-test-data-patient-3-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/lab-requests"
* identifier[anforderung].value = "LAB_000003"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* status = #completed
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $loinc#24360-0 "Hepatic function panel"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* authoredOn = "2022-04-05T07:30:00+02:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#235856003 "Disease of liver"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-2)

// Patient-4 ServiceRequest 1 (Basic Metabolic Panel)
Instance: mii-exa-test-data-patient-4-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/lab-requests"
* identifier[anforderung].value = "LAB_000004"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* status = #completed
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $loinc#24323-8 "Comprehensive metabolic 2000 panel - Serum or Plasma"
* subject = Reference(mii-exa-test-data-patient-4)
* encounter = Reference(mii-exa-test-data-patient-4-encounter-1)
* authoredOn = "2020-09-17T06:45:00+02:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#183932001 "Procedure contraindicated"
* specimen = Reference(mii-exa-test-data-patient-4-specimen-3)

// Patient-5 ServiceRequest 1 (CBC + Basic Metabolic)
Instance: mii-exa-test-data-patient-5-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/lab-requests"
* identifier[anforderung].value = "LAB_000005"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* status = #completed
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $loinc#24362-6 "Glucose and Hemoglobin A1c panel"
* subject = Reference(mii-exa-test-data-patient-5)
* encounter = Reference(mii-exa-test-data-patient-5-encounter-1)
* authoredOn = "2023-07-12T06:15:00+02:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#73211009 "Diabetes mellitus"
* specimen = Reference(mii-exa-test-data-patient-5-specimen-2)

// Patient-6 ServiceRequest 1 (Liver Function Panel)
Instance: mii-exa-test-data-patient-6-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/lab-requests"
* identifier[anforderung].value = "LAB_000006"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* status = #completed
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $loinc#24360-0 "Hepatic function panel"
* subject = Reference(mii-exa-test-data-patient-6)
* encounter = Reference(mii-exa-test-data-patient-6-encounter-1)
* authoredOn = "2022-03-14T06:30:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#4556007 "Gastritis"
* specimen = Reference(mii-exa-test-data-patient-6-specimen-2)

// Patient-7 ServiceRequest 1 (CBC + Inflammation markers)
Instance: mii-exa-test-data-patient-7-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/lab-requests"
* identifier[anforderung].value = "LAB_000007"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* status = #completed
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $loinc#33747-0 "General health panel"
* subject = Reference(mii-exa-test-data-patient-7)
* encounter = Reference(mii-exa-test-data-patient-7-encounter-1)
* authoredOn = "2024-01-10T07:45:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#10509002 "Acute bronchitis"
* specimen = Reference(mii-exa-test-data-patient-7-specimen-2)

// Patient-8 ServiceRequest 1 (Cardiac markers panel)
Instance: mii-exa-test-data-patient-8-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/lab-requests"
* identifier[anforderung].value = "LAB_000008"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* status = #completed
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $loinc#lipid-profile "Lipid profile"
* subject = Reference(mii-exa-test-data-patient-8)
* encounter = Reference(mii-exa-test-data-patient-8-encounter-1)
* authoredOn = "2023-11-12T06:00:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#22298006 "Myocardial infarction"
* specimen = Reference(mii-exa-test-data-patient-8-specimen-2)

// Patient-9 ServiceRequest 1 (Hormone panel)
Instance: mii-exa-test-data-patient-9-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/lab-requests"
* identifier[anforderung].value = "LAB_000009"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* status = #completed
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $loinc#24364-2 "Reproductive endocrine panel"
* subject = Reference(mii-exa-test-data-patient-9)
* encounter = Reference(mii-exa-test-data-patient-9-encounter-1)
* authoredOn = "2024-02-22T06:45:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#79876008 "Ovarian cyst"
* specimen = Reference(mii-exa-test-data-patient-9-specimen-2)

// Patient-10 ServiceRequest 1 (Basic panel)
Instance: mii-exa-test-data-patient-10-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/lab-requests"
* identifier[anforderung].value = "LAB_000010"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* status = #completed
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $loinc#24323-8 "Comprehensive metabolic 2000 panel - Serum or Plasma"
* subject = Reference(mii-exa-test-data-patient-10)
* encounter = Reference(mii-exa-test-data-patient-10-encounter-1)
* authoredOn = "2019-05-16T08:00:00+02:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#37796009 "Migraine"
* specimen = Reference(mii-exa-test-data-patient-10-specimen-2)