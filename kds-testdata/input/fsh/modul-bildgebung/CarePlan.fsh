Instance: mii-exa-test-data-behandlungsempfehlung
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung
Usage: #example
Description: "CarePlan: Behandlungsempfehlung"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung"
* status = #completed
* intent = #proposal
* description = "The patient must receive vacuum biopsy"
* subject = Reference(mii-exa-test-data-patient-1)
* supportingInfo = Reference(mii-exa-test-data-befundbericht)

// CT Thorax scenario
Instance: mii-exa-test-data-behandlungsempfehlung-ct
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung
Usage: #example
Description: "CarePlan: CT Thorax Behandlungsempfehlung"
* insert TestDataLabel
* status = #active
* intent = #proposal
* category = $sct#410401003 "Nursing care/supplementary surveillance"
* description = "PET-CT zur weiteren Charakterisierung des Rundherdes sowie CT-gesteuerte transthorakale Biopsie empfohlen. Vorstellung im Thorax-Tumorboard."
* subject = Reference(mii-exa-test-data-patient-2)
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* period.start = "2024-11-05"
* author = Reference(mii-exa-test-data-practitioner-physician-1)
* addresses = Reference(mii-exa-test-data-patient-2-diagnose-1)
* supportingInfo = Reference(mii-exa-test-data-befundbericht-ct)
* activity.detail.status = #scheduled
* activity.detail.code = $sct#443897008 "Positron emission tomography with computed tomography (procedure)"
* activity.detail.description = "PET-CT Thorax zur Staging-Diagnostik und Beurteilung der metabolischen Aktivitaet des Rundherdes"