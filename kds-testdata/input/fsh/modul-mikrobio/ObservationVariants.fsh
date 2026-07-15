// ============================================================================
// MII Mikrobio Variant Instances — generated for 100% MS-coverage
// Alt-Value + dataAbsentReason variants per Observation profile
// ============================================================================

Instance: mii-exa-test-data-mikrobio-allgemeine-bestimmung-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung
Usage: #example
Description: "Mikrobio: allgemeine-bestimmung — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allgemeine-bestimmung-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#41852-5
* valueCodeableConcept.coding = $sct#260373001 "Detected (qualifier value)"
* method.coding = $sct#278289002
* method.coding.display = "Microscopy technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (allgemeine-bestimmung)"


Instance: mii-exa-test-data-mikrobio-allgemeine-bestimmung-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung
Usage: #example
Description: "Mikrobio: allgemeine-bestimmung — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allgemeine-bestimmung-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#41852-5
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#278289002
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


// allgemeine-kultur: dataAbsentReason variant already exists as mii-exa-test-data-mikrobio-allgemeine-kultur-dar-1
Instance: mii-exa-test-data-mikrobio-allgemeine-kultur-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur
Usage: #example
Description: "Mikrobio: allgemeine-kultur — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allgemeine-kultur-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#11475-1
* valueCodeableConcept.coding = $sct#264868006 "No growth (qualifier value)"
* method.coding = $sct#703750006
* method.coding.display = "Aerobic culture technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (allgemeine-kultur)"


Instance: mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ
Usage: #example
Description: "Mikrobio: antigen-antikoerper-quantitativ — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "antigen-antikoerper-quantitativ-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-immunoassay-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "IMMUNOASSAY-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#5060-9 "Borrelia burgdorferi Ab [Units/volume] in Serum by Immunoassay"
* valueQuantity.value = 8
* valueQuantity.comparator = #<
* valueQuantity.unit = "[IU]/mL"
* valueQuantity.system = $ucum
* valueQuantity.code = #[IU]/mL
* method.coding = $sct#726449005
* method.coding.display = "Immunoassay technique"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (antigen-antikoerper-quantitativ)"


Instance: mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ
Usage: #example
Description: "Mikrobio: antigen-antikoerper-quantitativ — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "antigen-antikoerper-quantitativ-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-immunoassay-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "IMMUNOASSAY-001"
* code.coding = $loinc#5060-9 "Borrelia burgdorferi Ab [Units/volume] in Serum by Immunoassay"
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#726449005
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-aviditaet-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet
Usage: #example
Description: "Mikrobio: aviditaet — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "aviditaet-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-immunoassay-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "IMMUNOASSAY-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#104428-8 "Measles virus IgG Ab avidity [Ratio] in Serum by Immunoassay"
* valueQuantity.value = 65
* valueQuantity.comparator = #>
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* method.coding = $sct#726449005
* method.coding.display = "Immunoassay technique"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (aviditaet)"


Instance: mii-exa-test-data-mikrobio-aviditaet-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet
Usage: #example
Description: "Mikrobio: aviditaet — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "aviditaet-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-immunoassay-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "IMMUNOASSAY-001"
* code.coding = $loinc#104428-8 "Measles virus IgG Ab avidity [Ratio] in Serum by Immunoassay"
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#726449005
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-barlett-score-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-barlett-score
Usage: #example
Description: "Mikrobio: barlett-score — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "barlett-score-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#75371-5
* valueCodeableConcept.coding = $loinc#LA21390-2 "+1 Active inflammation"
* method.coding = $sct#702661004
* method.coding.display = "Light microscopy technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (barlett-score)"


Instance: mii-exa-test-data-mikrobio-barlett-score-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-barlett-score
Usage: #example
Description: "Mikrobio: barlett-score — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "barlett-score-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#75371-5
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#702661004
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-ct-wert-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert
Usage: #example
Description: "Mikrobio: ct-wert — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "ct-wert-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#74039-9
* valueQuantity.value = 30.5
* valueQuantity.comparator = #<
* valueQuantity.unit = "Ct"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method.coding = $sct#70601000052104
* method.coding.display = "Real-time PCR technique"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (ct-wert)"


Instance: mii-exa-test-data-mikrobio-ct-wert-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert
Usage: #example
Description: "Mikrobio: ct-wert — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "ct-wert-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* code.coding = $loinc#74039-9
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#70601000052104
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-empfindlichkeit-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit
Usage: #example
Description: "Mikrobio: empfindlichkeit — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "empfindlichkeit-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#100045-4 "Cefozopran [Susceptibility]"
* valueQuantity.value = 8
* valueQuantity.comparator = #>
* valueQuantity.unit = "mg/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/L
* method.coding = $sct#708073008
* method.coding.display = "Minimum inhibitory concentration susceptibility test technique (qualifier value)"
* interpretation.extension[Norm].url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm"
* interpretation.extension[Norm].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm#CLSI "CLSI"
* interpretation.coding = $v3-ObservationInterpretation#R "Resistant"
* note[+].text = "Alt-Variante zur MS-Coverage (empfindlichkeit)"


Instance: mii-exa-test-data-mikrobio-empfindlichkeit-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit
Usage: #example
Description: "Mikrobio: empfindlichkeit — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "empfindlichkeit-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#100045-4 "Cefozopran [Susceptibility]"
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#708073008
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-keimzahl-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl
Usage: #example
Description: "Mikrobio: keimzahl — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "keimzahl-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#49223-1
* valueQuantity.value = 10000
* valueQuantity.comparator = #>=
* valueQuantity.unit = "/mL"
* valueQuantity.system = $ucum
* valueQuantity.code = #/mL
* method.coding = $sct#410681005
* method.coding.display = "Count of entities (property) (qualifier value)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (keimzahl)"


Instance: mii-exa-test-data-mikrobio-keimzahl-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl
Usage: #example
Description: "Mikrobio: keimzahl — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "keimzahl-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#49223-1
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#410681005
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-mikroskopie-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie
Usage: #example
Description: "Mikrobio: mikroskopie — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mikroskopie-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#105059-0
* valueCodeableConcept.coding = $sct#260373001 "Detected (qualifier value)"
* method.coding = $sct#702661004
* method.coding.display = "Light microscopy technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (mikroskopie)"


Instance: mii-exa-test-data-mikrobio-mikroskopie-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie
Usage: #example
Description: "Mikrobio: mikroskopie — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mikroskopie-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#105059-0
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#702661004
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-molekulare-pathogenlast-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast
Usage: #example
Description: "Mikrobio: molekulare-pathogenlast — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "molekulare-pathogenlast-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#66719-6 "Adenovirus DNA [Log #/volume] (viral load) in Urine by NAA with probe detection"
* valueQuantity.value = 5000
* valueQuantity.comparator = #>=
* valueQuantity.unit = "Copies/mL"
* valueQuantity.system = $ucum
* valueQuantity.code = #1/mL
* method.coding = $sct#70601000052104
* method.coding.display = "Real-time PCR technique"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (molekulare-pathogenlast)"


Instance: mii-exa-test-data-mikrobio-molekulare-pathogenlast-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast
Usage: #example
Description: "Mikrobio: molekulare-pathogenlast — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "molekulare-pathogenlast-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* code.coding = $loinc#66719-6 "Adenovirus DNA [Log #/volume] (viral load) in Urine by NAA with probe detection"
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#70601000052104
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-mre-klasse-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mre-klasse
Usage: #example
Description: "Mikrobio: mre-klasse — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mre-klasse-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $sct#1285113001
* valueCodeableConcept.coding = $sct#115329001 "Methicillin resistant Staphylococcus aureus (organism)"
* method.coding = $sct#708068002
* method.coding.display = "Molecular genetics technique (qualifier value)"
* note[+].text = "Alt-Variante zur MS-Coverage (mre-klasse)"


Instance: mii-exa-test-data-mikrobio-mre-klasse-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mre-klasse
Usage: #example
Description: "Mikrobio: mre-klasse — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mre-klasse-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* code.coding = $sct#1285113001
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#708068002
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-mrgn-klasse-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse
Usage: #example
Description: "Mikrobio: mrgn-klasse — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mrgn-klasse-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#99780-9
* valueCodeableConcept.coding = $loinc#LA33214-0 "2MRGN"
* note[+].text = "Alt-Variante zur MS-Coverage (mrgn-klasse)"


Instance: mii-exa-test-data-mikrobio-mrgn-klasse-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse
Usage: #example
Description: "Mikrobio: mrgn-klasse — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mrgn-klasse-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#99780-9
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-nugent-score-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score
Usage: #example
Description: "Mikrobio: nugent-score — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "nugent-score-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#101433-1
* valueQuantity.value = 2
* valueQuantity.comparator = #<=
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method.coding = $sct#702661004
* method.coding.display = "Light microscopy technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (nugent-score)"


Instance: mii-exa-test-data-mikrobio-nugent-score-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score
Usage: #example
Description: "Mikrobio: nugent-score — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "nugent-score-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#101433-1
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#702661004
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-resistenz-mech-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten
Usage: #example
Description: "Mikrobio: resistenzmechanismen-determinanten — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "resistenzmechanismen-determinanten-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#72891-5 "Staphylococcus protein A spa gene [Presence] in Isolate or Specimen by NAA with probe detection"
* valueCodeableConcept.coding = $sct#260373001 "Detected (qualifier value)"
* method.coding = $sct#708068002
* method.coding.display = "Molecular genetics technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (resistenzmechanismen-determinanten)"


Instance: mii-exa-test-data-mikrobio-resistenz-mech-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten
Usage: #example
Description: "Mikrobio: resistenzmechanismen-determinanten — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "resistenzmechanismen-determinanten-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* code.coding = $loinc#72891-5 "Staphylococcus protein A spa gene [Presence] in Isolate or Specimen by NAA with probe detection"
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#708068002
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-spezifische-bestimmung-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung
Usage: #example
Description: "Mikrobio: spezifische-bestimmung — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spezifische-bestimmung-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#105651-4 "Enterobacter cloacae complex DNA [Presence] in Specimen by NAA with probe detection"
* valueCodeableConcept.coding = $sct#260373001 "Detected (qualifier value)"
* method.coding = $sct#70601000052104
* method.coding.display = "Real-time polymerase chain reaction technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (spezifische-bestimmung)"


Instance: mii-exa-test-data-mikrobio-spezifische-bestimmung-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung
Usage: #example
Description: "Mikrobio: spezifische-bestimmung — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spezifische-bestimmung-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* code.coding = $loinc#61398-4 "Escherichia coli DNA [Presence] in Specimen by NAA with probe detection"
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#70601000052104
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-titer-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer
Usage: #example
Description: "Mikrobio: titer — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "titer-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#23648-9 "Actinobacillus pleuropneumoniae Ab [Titer] in Serum"
* valueRatio.numerator.value = 1
* valueRatio.numerator.unit = "{titer}"
* valueRatio.numerator.system = $ucum
* valueRatio.numerator.code = #{titer}
* valueRatio.denominator.value = 64
* valueRatio.denominator.unit = "{titer}"
* valueRatio.denominator.system = $ucum
* valueRatio.denominator.code = #{titer}
* method.coding = $sct#708104000
* method.coding.display = "Agglutination technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (titer)"


Instance: mii-exa-test-data-mikrobio-titer-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer
Usage: #example
Description: "Mikrobio: titer — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "titer-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#23648-9 "Actinobacillus pleuropneumoniae Ab [Titer] in Serum"
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#708104000
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-virulenzfaktor-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor
Usage: #example
Description: "Mikrobio: virulenzfaktor — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "virulenzfaktor-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#87402-4
* valueCodeableConcept.coding = $sct#260373001 "Detected (qualifier value)"
* method.coding = $sct#70601000052104
* method.coding.display = "Real-time polymerase chain reaction technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (virulenzfaktor)"


Instance: mii-exa-test-data-mikrobio-virulenzfaktor-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor
Usage: #example
Description: "Mikrobio: virulenzfaktor — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "virulenzfaktor-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* code.coding = $loinc#87402-4
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#70601000052104
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."


Instance: mii-exa-test-data-mikrobio-voraus-empf-alt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit
Usage: #example
Description: "Mikrobio: voraussichtliche-empfindlichkeit — Alt-Variante zur MS-Coverage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "voraussichtliche-empfindlichkeit-alt-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118127007 "Specimen lipemic (finding)"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #repeat
* code.coding = $loinc#92255-9 "Methicillin [Susceptibility] by Genotype method"
* valueCodeableConcept.coding = $v3-ObservationInterpretation#S "Susceptible"
* method.coding = $sct#708060009
* method.coding.display = "Genotype determination technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Alt-Variante zur MS-Coverage (voraussichtliche-empfindlichkeit)"


Instance: mii-exa-test-data-mikrobio-voraus-empf-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit
Usage: #example
Description: "Mikrobio: voraussichtliche-empfindlichkeit — Probe nicht auswertbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "voraussichtliche-empfindlichkeit-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* code.coding = $loinc#92255-9 "Methicillin [Susceptibility] by Genotype method"
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#708060009
* note[+].text = "Probe nicht auswertbar — Ergebnis nicht verfügbar."

