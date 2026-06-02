// ============================================================================
// MII Mikrobio Test Data - Observations (one per profile, MS-enriched)
// Klinisches Szenario: Sepsis-Patient mit MRSA-Blutkultur
// ============================================================================

// ----------------------------------------------------------------------------
// 1. Allgemeine Kultur — Blutkultur positiv für S. aureus
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-allgemeine-kultur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur
Usage: #example
Description: "Mikrobio: Allgemeine Kultur (Blutkultur) — positiv"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allg-kultur-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-02T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T14:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* code.coding = $loinc#11475-1 "Microorganism identified in Blood by Aerobic culture"
* valueCodeableConcept.coding = $sct#10828004 "Positive (qualifier value)"
* method.coding = $sct#703750006 "Bacterial culture (procedure)"
* method.coding.display = "Bacterial culture (procedure)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* note[+].text = "Wuchs nach 18h aerob; weitere Differenzierung folgt."

// ----------------------------------------------------------------------------
// 2. Spezifische Bestimmung — S. aureus Identifikation
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-spezifische-bestimmung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung
Usage: #example
Description: "Mikrobio: Spezifische Bestimmung — S. aureus identifiziert"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spez-bestimmung-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-03T15:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T16:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #reflex
* code.coding = $loinc#92253-4 "Microorganism or agent identified in Specimen"
* valueCodeableConcept.coding = $sct#3092008 "Staphylococcus aureus (organism)"
* method.coding = $sct#258066000 "MALDI-TOF mass spectrometry technique (qualifier value)"
* method.coding.display = "MALDI-TOF mass spectrometry technique (qualifier value)"
* note[+].text = "Identifikation via MALDI-TOF (Score 2.4)."

// ----------------------------------------------------------------------------
// 3. Allgemeine Bestimmung — Erreger-Nachweis (qualitativ)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-allgemeine-bestimmung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung
Usage: #example
Description: "Mikrobio: Allgemeine Bestimmung — Bakterien-Nachweis"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allg-bestimmung-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-03T15:30:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T16:30:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* code.coding = $loinc#41852-5 "Microorganism or agent identified in Specimen"
* code.coding.display = "Microorganism or agent identified in Specimen"
* valueCodeableConcept.coding = $sct#52499004 "Bacteria detected (finding)"
* method.coding = $sct#278289002 "Microscopy (procedure)"
* method.coding.display = "Microscopy (procedure)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Bakteriennachweis in Gram-Faerbung; weitere Typisierung folgt."

// ----------------------------------------------------------------------------
// 4. Mikroskopie — Gram-positive Kokken in Haufen
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-mikroskopie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie
Usage: #example
Description: "Mikrobio: Mikroskopie — Gram-positive Kokken in Haufen"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mikroskopie-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-02T10:30:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-02T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* code.coding = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen by Light microscopy"
* code.coding.display = "Microscopic observation in Specimen"
* valueCodeableConcept.coding = $sct#70003006 "Gram-positive cocci in clusters (finding)"
* valueCodeableConcept.coding.display = "Gram-positive cocci in clusters (finding)"
* method.coding = $sct#278289002 "Microscopy (procedure)"
* method.coding.display = "Microscopy (procedure)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Mikroskopisch typisches Bild fuer S. aureus."

// ----------------------------------------------------------------------------
// 5. Keimzahl — Quantitative Urinkultur (E. coli, signifikant)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-keimzahl-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl
Usage: #example
Description: "Mikrobio: Keimzahl Urinkultur (E. coli, signifikant)"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "keimzahl-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-03T14:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T15:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-2)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "URINE-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#167569004 "Urine culture - mixed growth (finding)"
* code.coding = $loinc#49223-1 "Microorganism identified in Urine by Aerobic culture"
* code.coding.display = "Microorganism identified in Urine by Aerobic culture"
* valueQuantity.value = 100000
* valueQuantity.value.extension[+].url = "http://hl7.org/fhir/StructureDefinition/quantity-precision"
* valueQuantity.value.extension[=].valueInteger = 0
* valueQuantity.comparator = #>=
* valueQuantity.unit = "/mL"
* valueQuantity.system = $ucum
* valueQuantity.code = #/mL
* method.coding = $sct#410681005 "Total count technique (qualifier value)"
* method.coding.display = "Total count technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low.value = 0
* referenceRange.low.unit = "/mL"
* referenceRange.low.system = $ucum
* referenceRange.low.code = #/mL
* referenceRange.high.value = 100000
* referenceRange.high.unit = "/mL"
* referenceRange.high.system = $ucum
* referenceRange.high.code = #/mL
* note[+].text = "Signifikante Bakteriurie."

// ----------------------------------------------------------------------------
// 6. Empfindlichkeit — Antibiogramm Vancomycin (MHK, S)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-empfindlichkeit-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit
Usage: #example
Description: "Mikrobio: Empfindlichkeit Vancomycin (MHK 1 mg/L, S)"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "empfindlichkeit-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-04T09:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-04T10:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #reflex
* code.coding = $loinc#29576-6 "Vancomycin [Susceptibility]"
* code.coding.display = "Vancomycin [Susceptibility]"
* valueQuantity.value = 1
* valueQuantity.value.extension[+].url = "http://hl7.org/fhir/StructureDefinition/quantity-precision"
* valueQuantity.value.extension[=].valueInteger = 1
* valueQuantity.comparator = #<=
* valueQuantity.unit = "mg/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/L
* interpretation.extension[Norm].url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm"
* interpretation.extension[Norm].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm#EUCAST "EUCAST"
* interpretation.coding = $v3-ObservationInterpretation#S "Susceptible"
* method.coding = $sct#700461007 "Antimicrobial susceptibility by minimum inhibitory concentration technique (qualifier value)"
* method.coding.display = "Antimicrobial susceptibility by MIC technique"
* referenceRange.low.value = 0
* referenceRange.low.unit = "mg/L"
* referenceRange.low.system = $ucum
* referenceRange.low.code = #mg/L
* referenceRange.high.value = 2
* referenceRange.high.unit = "mg/L"
* referenceRange.high.system = $ucum
* referenceRange.high.code = #mg/L
* note[+].text = "Vancomycin als empirische Therapie geeignet; gemaess EUCAST-Kriterien empfindlich."

// ----------------------------------------------------------------------------
// 7. Voraussichtliche Empfindlichkeit — Genotype-basiert
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit
Usage: #example
Description: "Mikrobio: Voraussichtliche Empfindlichkeit Methicillin (R via mecA)"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "voraus-empfindlichkeit-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-04T07:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-04T08:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-resistenzmechanismen-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #reflex
* code.coding = $loinc#89489-9 "Antimicrobial susceptibility predicted from genotype"
* code.coding.display = "Antimicrobial susceptibility predicted from genotype"
* valueCodeableConcept.coding = $v3-ObservationInterpretation#R "Resistant"
* method.coding = $sct#258066000 "MALDI-TOF mass spectrometry technique (qualifier value)"
* method.coding.display = "Molecular detection technique"
* note[+].text = "Prognose der Methicillin-Resistenz aufgrund mecA-Nachweis."

// ----------------------------------------------------------------------------
// 8. MRE-Klasse — Multiresistenter Erreger (MRSA)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-mre-klasse-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mre-klasse
Usage: #example
Description: "Mikrobio: MRE-Klasse MRSA"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mre-klasse-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-04T10:30:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-04T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-spezifische-bestimmung-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #reflex
* code.coding = $sct#1285113001 "Type of antimicrobial resistant organism (observable entity)"
* valueCodeableConcept.coding = $sct#409795000 "Methicillin resistant Staphylococcus aureus (organism)"
* method.coding = $sct#258066000 "MALDI-TOF mass spectrometry technique (qualifier value)"
* method.coding.display = "MALDI-TOF mass spectrometry technique"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* note[+].text = "MRSA-Befund — Isolation noetig."

// ----------------------------------------------------------------------------
// 9. MRGN-Klasse — E. coli (2MRGN)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-mrgn-klasse-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse
Usage: #example
Description: "Mikrobio: MRGN-Klasse 2MRGN (E. coli)"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mrgn-klasse-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-04T11:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-04T11:30:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-2)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "URINE-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* code.coding = $loinc#99780-9 "Multidrug resistant gram-negative organism classification [Type]"
* valueCodeableConcept.coding = $loinc#LA33214-0 "2MRGN"
* method.coding = $sct#700452006 "Susceptibility to antimicrobial (observable entity)"
* method.coding.display = "Susceptibility to antimicrobial"
* interpretation = $v3-ObservationInterpretation#R "Resistant"
* note[+].text = "2MRGN gemaess KRINKO 2012; Cephalosporin-Resistenz nachgewiesen."

// ----------------------------------------------------------------------------
// 10. Resistenzmechanismen / Determinanten — mecA-Gen
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-resistenzmechanismen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten
Usage: #example
Description: "Mikrobio: Resistenzmechanismus mecA nachgewiesen"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "resistenz-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-04T07:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-04T07:30:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-spezifische-bestimmung-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #reflex
* code.coding = $loinc#92249-2 "Genetic variation [Identifier] in Specimen by Molecular method"
* code.coding.display = "Genetic variation in Specimen by Molecular method"
* valueCodeableConcept.coding = $sct#260373001 "Detected (qualifier value)"
* valueCodeableConcept.coding.display = "Detected (qualifier value)"
* method.coding = $sct#258066000 "MALDI-TOF mass spectrometry technique (qualifier value)"
* method.coding.display = "Molecular detection technique"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* note[+].text = "mecA-Gen via PCR nachgewiesen."

// ----------------------------------------------------------------------------
// 11. Virulenzfaktor — PVL nicht nachgewiesen
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-virulenzfaktor-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor
Usage: #example
Description: "Mikrobio: Virulenzfaktor PVL nicht nachgewiesen"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "virulenz-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-04T08:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-04T08:30:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* code.coding = $loinc#87402-4 "Virulence factor [Identifier] in Specimen by Molecular method"
* code.coding.display = "Virulence factor [Identifier] in Specimen by Molecular method"
* valueCodeableConcept.coding = $sct#260415000 "Not detected (qualifier value)"
* valueCodeableConcept.coding.display = "Not detected (qualifier value)"
* method.coding = $sct#258066000 "Molecular detection technique"
* method.coding.display = "Molecular detection technique"
* interpretation = $v3-ObservationInterpretation#NEG "Negative"
* note[+].text = "Panton-Valentine-Leukocidin (PVL) nicht nachgewiesen — kein Hinweis auf erhoehte Virulenz."

// ----------------------------------------------------------------------------
// 12. Antigen-/Antikörper-Bestimmung (quantitativ)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-antigen-antikoerper-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ
Usage: #example
Description: "Mikrobio: Antikörper-Titer (IgG) quantitativ"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "antigen-ak-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T09:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T10:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118128002 "Specimen hemolyzed (finding)"
* code.coding = $loinc#94507-1 "Serotype [Identifier] of Microorganism in Specimen by Immunoassay"
* code.coding.display = "Serotype identifier by immunoassay"
* valueQuantity.value = 42
* valueQuantity.value.extension[+].url = "http://hl7.org/fhir/StructureDefinition/quantity-precision"
* valueQuantity.value.extension[=].valueInteger = 1
* valueQuantity.comparator = #>
* valueQuantity.unit = "[IU]/mL"
* valueQuantity.system = $ucum
* valueQuantity.code = #[IU]/mL
* method.coding = $sct#726449005 "Immunoassay technique (qualifier value)"
* method.coding.display = "Immunoassay technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low.value = 0
* referenceRange.low.unit = "[IU]/mL"
* referenceRange.low.system = $ucum
* referenceRange.low.code = #[IU]/mL
* referenceRange.high.value = 10
* referenceRange.high.unit = "[IU]/mL"
* referenceRange.high.system = $ucum
* referenceRange.high.code = #[IU]/mL
* note[+].text = "IgG-Titer erhoeht; Verdachtsdiagnose passt zu durchgemachter Infektion. Haemolyse der Probe beachten!"

// ----------------------------------------------------------------------------
// 13. Avidität
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-aviditaet-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet
Usage: #example
Description: "Mikrobio: Avidität IgG niedrig (frische Infektion)"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "aviditaet-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T10:30:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* code.coding = $loinc#92657-6 "Antibody avidity [Mass fraction] in Specimen"
* code.coding.display = "Antibody avidity mass fraction in Specimen"
* valueQuantity.value = 35
* valueQuantity.value.extension[+].url = "http://hl7.org/fhir/StructureDefinition/quantity-precision"
* valueQuantity.value.extension[=].valueInteger = 0
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* method.coding = $sct#726449005 "Immunoassay technique (qualifier value)"
* method.coding.display = "Immunoassay technique"
* interpretation = $v3-ObservationInterpretation#L "Low"
* referenceRange.low.value = 40
* referenceRange.low.unit = "%"
* referenceRange.low.system = $ucum
* referenceRange.low.code = #%
* referenceRange.high.value = 100
* referenceRange.high.unit = "%"
* referenceRange.high.system = $ucum
* referenceRange.high.code = #%
* note[+].text = "Niedrige Avidität spricht fuer kuerzlich durchgemachte Infektion."

// ----------------------------------------------------------------------------
// 14. Titer
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-titer-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer
Usage: #example
Description: "Mikrobio: Antikörper-Titer (1:128)"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "titer-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-05T11:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T12:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* code.coding = $loinc#53655-7 "Antibody titer in Serum"
* code.coding.display = "Antibody titer in Serum"
* valueQuantity.value = 128
* valueQuantity.value.extension[+].url = "http://hl7.org/fhir/StructureDefinition/quantity-precision"
* valueQuantity.value.extension[=].valueInteger = 0
* valueQuantity.unit = "{titer}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{titer}
* method.coding = $sct#708104000 "Serological agglutination (qualifier value)"
* method.coding.display = "Serological agglutination"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low.value = 0
* referenceRange.low.unit = "{titer}"
* referenceRange.low.system = $ucum
* referenceRange.low.code = #{titer}
* referenceRange.high.value = 32
* referenceRange.high.unit = "{titer}"
* referenceRange.high.system = $ucum
* referenceRange.high.code = #{titer}
* note[+].text = "Titerstufe 1:128"

// ----------------------------------------------------------------------------
// 15. CT-Wert (PCR)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-ct-wert-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert
Usage: #example
Description: "Mikrobio: CT-Wert PCR (21.3)"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "ct-wert-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-03T17:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T18:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* code.coding = $loinc#74039-9 "Threshold cycle time"
* code.coding.display = "Threshold cycle time"
* valueQuantity.value = 21.3
* valueQuantity.value.extension[+].url = "http://hl7.org/fhir/StructureDefinition/quantity-precision"
* valueQuantity.value.extension[=].valueInteger = 1
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method.coding = $sct#70601000052104 "Real-time polymerase chain reaction technique (qualifier value)"
* method.coding.display = "Real-time PCR technique"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low.value = 0
* referenceRange.low.unit = "1"
* referenceRange.low.system = $ucum
* referenceRange.low.code = #1
* referenceRange.high.value = 35
* referenceRange.high.unit = "1"
* referenceRange.high.system = $ucum
* referenceRange.high.code = #1
* note[+].text = "Niedriger CT-Wert (21.3) spricht fuer hohe Erregerlast."

// ----------------------------------------------------------------------------
// 16. Molekulare Pathogenlast
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-molekulare-pathogenlast-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast
Usage: #example
Description: "Mikrobio: Molekulare Pathogenlast (350.000 Copies/mL)"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "pathogenlast-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-03T18:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T19:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* code.coding = $loinc#94009-8 "SARS-CoV-2 RNA [#/volume] in Specimen by NAA with probe detection"
* code.coding.display = "Pathogen RNA copies per volume"
* valueQuantity.value = 350000
* valueQuantity.value.extension[+].url = "http://hl7.org/fhir/StructureDefinition/quantity-precision"
* valueQuantity.value.extension[=].valueInteger = 0
* valueQuantity.comparator = #>=
* valueQuantity.unit = "Copies/mL"
* valueQuantity.system = $ucum
* valueQuantity.code = #1/mL
* method.coding = $sct#70601000052104 "Real-time polymerase chain reaction technique (qualifier value)"
* method.coding.display = "Real-time PCR technique"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low.value = 0
* referenceRange.low.unit = "Copies/mL"
* referenceRange.low.system = $ucum
* referenceRange.low.code = #1/mL
* referenceRange.high.value = 1000
* referenceRange.high.unit = "Copies/mL"
* referenceRange.high.system = $ucum
* referenceRange.high.code = #1/mL
* note[+].text = "Hohe Pathogenlast — klinische Relevanz mit Behandelndem besprechen."

// ----------------------------------------------------------------------------
// 17. Barlett-Score
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-barlett-score-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-barlett-score
Usage: #example
Description: "Mikrobio: Barlett-Score (verwertbar)"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "barlett-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-02T11:15:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-02T11:30:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* code.coding = $loinc#75371-5 "Bartlett quality assessment of sputum smear"
* code.coding.display = "Bartlett quality assessment of sputum smear"
* valueCodeableConcept.coding = $loinc#LA21390-2 "Good quality sputum sample for culture"
* method.coding = $sct#702661004 "Microscopy by Gram stain (procedure)"
* method.coding.display = "Microscopy by Gram stain"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* note[+].text = "Sputum-Probe verwertbar (Barlett-Score positiv)."

// ----------------------------------------------------------------------------
// 18. Nugent-Score
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-nugent-score-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score
Usage: #example
Description: "Mikrobio: Nugent-Score (7 — bakterielle Vaginose)"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "nugent-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-02T11:30:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-02T12:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* code.coding = $loinc#101433-1 "Nugent score"
* code.coding.display = "Nugent score"
* valueQuantity.value = 7
* valueQuantity.value.extension[+].url = "http://hl7.org/fhir/StructureDefinition/quantity-precision"
* valueQuantity.value.extension[=].valueInteger = 0
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method.coding = $sct#702661004 "Microscopy by Gram stain (procedure)"
* method.coding.display = "Microscopy by Gram stain (procedure)"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low.value = 0
* referenceRange.low.unit = "1"
* referenceRange.low.system = $ucum
* referenceRange.low.code = #1
* referenceRange.high.value = 3
* referenceRange.high.unit = "1"
* referenceRange.high.system = $ucum
* referenceRange.high.code = #1
* note[+].text = "Nugent-Score 7 spricht fuer bakterielle Vaginose."

// ----------------------------------------------------------------------------
// 19. Variante: dataAbsentReason (anstelle value[x]) für allgemeine-kultur
//     (deckt das mutually-exclusive dataAbsentReason-MS-Element ab)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-allgemeine-kultur-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur
Usage: #example
Description: "Mikrobio: Allgemeine Kultur — Ergebnis fehlt (Probe abgelaufen)"
* insert TestDataLabel
* meta.source = "https://example.org/fhir/mikrobio-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allg-kultur-dar-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* status = #final
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-02T11:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T15:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "VITEK2-001"
* code.coding = $loinc#11475-1 "Microorganism identified in Blood by Aerobic culture"
* code.coding.display = "Microorganism identified in Blood by Aerobic culture"
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#703750006 "Bacterial culture (procedure)"
* method.coding.display = "Bacterial culture (procedure)"
* note[+].text = "Kultur konnte nicht ausgewertet werden (Probe abgelaufen)."
