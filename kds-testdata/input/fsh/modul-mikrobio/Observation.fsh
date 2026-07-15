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
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allg-kultur-1"
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
* effectiveDateTime = "2026-04-02T10:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T14:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* valueCodeableConcept.coding = $sct#10828004 "Positive (qualifier value)"
* method.coding = $sct#703750006 "Aerobic culture technique (qualifier value)"
* method.coding.display = "Aerobic culture technique (qualifier value)"
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
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spez-bestimmung-1"
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
* effectiveDateTime = "2026-04-03T15:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T16:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-maldi-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "MALDI-TOF-001"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #reflex
* code.coding = $loinc#100897-8 "Staphylococcus aureus [Presence] in Specimen by Organism specific culture"
* valueCodeableConcept.coding = $sct#3092008 "Staphylococcus aureus (organism)"
* method.coding = $sct#703752003 "Organism specific culture technique (qualifier value)"
* method.coding.display = "Organism specific culture technique (qualifier value)"
* note[+].text = "Identifikation via spezifische Kultur."

// ----------------------------------------------------------------------------
// 3. Allgemeine Bestimmung — Erreger-Nachweis (qualitativ)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-allgemeine-bestimmung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung
Usage: #example
Description: "Mikrobio: Allgemeine Bestimmung — Bakterien-Nachweis"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allg-bestimmung-1"
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
* effectiveDateTime = "2026-04-03T15:30:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T16:30:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#41852-5 "Microorganism or agent identified in Specimen"
* code.coding.display = "Microorganism or agent identified in Specimen"
* valueCodeableConcept.coding = $sct#3092008 "Staphylococcus aureus (organism)"
* method.coding = $sct#278289002 "Microscopy technique (qualifier value)"
* method.coding.display = "Microscopy technique (qualifier value)"
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
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mikroskopie-1"
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
* effectiveDateTime = "2026-04-02T10:30:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-02T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen by Light microscopy"
* code.coding.display = "Microscopic observation [Identifier] in Specimen"
* valueCodeableConcept.coding = $sct#70003006 "Gram-positive cocci in clusters (finding)"
* valueCodeableConcept.coding.display = "Gram-positive cocci in clusters (finding)"
* method.coding = $sct#702661004 "Light microscopy technique (qualifier value)"
* method.coding.display = "Light microscopy technique (qualifier value)"
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
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "keimzahl-1"
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
* effectiveDateTime = "2026-04-03T14:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T15:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-2)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "URINE-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#167569004 "Urine culture - mixed growth (finding)"
* code.coding = $loinc#49223-1 "Colony count [#/volume] in Specimen by Visual count"
* code.coding.display = "Colony count [#/volume] in Specimen by Visual count"
* valueQuantity.value = 100000
* valueQuantity.value.extension[+].url = "http://hl7.org/fhir/StructureDefinition/quantity-precision"
* valueQuantity.value.extension[=].valueInteger = 0
* valueQuantity.comparator = #>=
* valueQuantity.unit = "/mL"
* valueQuantity.system = $ucum
* valueQuantity.code = #/mL
* method.coding = $sct#410681005 "Count of entities (property) (qualifier value)"
* method.coding.display = "Count of entities (property) (qualifier value)"
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
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "empfindlichkeit-1"
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
* effectiveDateTime = "2026-04-04T09:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-04T10:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #reflex
* code.coding = $loinc#19000-9 "Vancomycin [Susceptibility]"
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
* method.coding = $sct#708073008 "Minimum inhibitory concentration susceptibility test technique (qualifier value)"
* method.coding.display = "Minimum inhibitory concentration susceptibility test technique (qualifier value)"
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
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "voraus-empfindlichkeit-1"
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
* effectiveDateTime = "2026-04-04T07:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-04T08:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-resistenzmechanismen-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #reflex
* code.coding = $loinc#92255-9 "Methicillin [Susceptibility] by Genotype method"
* code.coding.display = "Methicillin [Susceptibility] by Genotype method"
* valueCodeableConcept.coding = $v3-ObservationInterpretation#R "Resistant"
* method.coding = $sct#708060009 "Genotype determination technique (qualifier value)"
* method.coding.display = "Genotype determination technique (qualifier value)"
* note[+].text = "Prognose der Methicillin-Resistenz aufgrund mecA-Nachweis."

// ----------------------------------------------------------------------------
// 8. MRE-Klasse — Multiresistenter Erreger (MRSA)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-mre-klasse-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mre-klasse
Usage: #example
Description: "Mikrobio: MRE-Klasse MRSA"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mre-klasse-1"
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
* effectiveDateTime = "2026-04-04T10:30:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-04T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-spezifische-bestimmung-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #reflex
* code.coding = $sct#1285113001 "Type of antimicrobial resistant organism (observable entity)"
* valueCodeableConcept.coding = $sct#115329001 "Methicillin resistant Staphylococcus aureus (organism)"
* method.coding = $sct#708068002 "Molecular genetics technique (qualifier value)"
* method.coding.display = "Molecular genetics technique (qualifier value)"
* note[+].text = "MRSA-Befund — Isolation noetig."

// ----------------------------------------------------------------------------
// 9. MRGN-Klasse — E. coli (2MRGN)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-mrgn-klasse-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse
Usage: #example
Description: "Mikrobio: MRGN-Klasse 3MRGN (E. coli)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mrgn-klasse-1"
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
* effectiveDateTime = "2026-04-04T11:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-04T11:30:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-2)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "URINE-001"
* code.coding = $loinc#99780-9 "Multidrug resistant gram-negative organism classification [Type]"
* valueCodeableConcept.coding = $loinc#LA33215-7 "3MRGN"
* note[+].text = "3MRGN gemaess KRINKO 2012; Cephalosporin, Acylureidopenicilline, Fluorchinolone -Resistenz nachgewiesen."

// ----------------------------------------------------------------------------
// 10. Resistenzmechanismen / Determinanten — mecA-Gen
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-resistenzmechanismen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten
Usage: #example
Description: "Mikrobio: Resistenzmechanismus mecA nachgewiesen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "resistenz-1"
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
* effectiveDateTime = "2026-04-04T07:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-04T07:30:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-mikrobio-spezifische-bestimmung-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #reflex
* code.coding = $loinc#48813-0 "Methicillin resistance mecA gene [Presence] by Molecular method"
* code.coding.display = "Methicillin resistance mecA gene [Presence] by Molecular method"
* valueCodeableConcept.coding = $sct#260373001 "Detected (qualifier value)"
* valueCodeableConcept.coding.display = "Detected (qualifier value)"
* method.coding = $sct#708068002 "Molecular genetics technique (qualifier value)"
* method.coding.display = "Molecular genetics technique (qualifier value)"
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
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "virulenz-1"
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
* effectiveDateTime = "2026-04-04T08:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-04T08:30:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* code.coding = $loinc#48816-3 "Staphylococcus aureus Panton-Valentine leukocidin gene [Presence] in Isolate or Specimen by Molecular genetics method"
* code.coding.display = "Staphylococcus aureus Panton-Valentine leukocidin gene [Presence] in Isolate or Specimen by Molecular genetics method"
* valueCodeableConcept.coding = $sct#260415000 "Not detected (qualifier value)"
* valueCodeableConcept.coding.display = "Not detected (qualifier value)"
* method.coding = $sct#70601000052104 "Real-time polymerase chain reaction technique (qualifier value)"
* method.coding.display = "Real-time polymerase chain reaction technique (qualifier value)"
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
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "antigen-ak-1"
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
* effectiveDateTime = "2026-04-05T09:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T10:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-immunoassay-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "IMMUNOASSAY-001"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $sct#118128002 "Specimen hemolyzed (finding)"
* code.coding = $loinc#5060-9 "Borrelia burgdorferi Ab [Units/volume] in Serum by Immunoassay"
* code.coding.display = "Borrelia burgdorferi Ab [Units/volume] in Serum by Immunoassay"
* valueQuantity.value = 42
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
* note[+].text = "Borrelien-Antikörper nachweisbar. Klinische Korrelation empfohlen."

// ----------------------------------------------------------------------------
// 13. Avidität
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-aviditaet-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet
Usage: #example
Description: "Mikrobio: Avidität IgG niedrig (frische Infektion)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "aviditaet-1"
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
* effectiveDateTime = "2026-04-05T10:30:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T11:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-immunoassay-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "IMMUNOASSAY-001"
* code.coding = $loinc#56990-5 "Toxoplasma gondii IgG Ab avidity [Ratio] in Serum by Immunoassay"
* code.coding.display = "Toxoplasma gondii IgG Ab avidity [Ratio] in Serum by Immunoassay"
* valueQuantity.value = 14
* valueQuantity.comparator = #<
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
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "titer-1"
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
* effectiveDateTime = "2026-04-05T11:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T12:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#22080-6 "Adenovirus Ab [Titer] in Serum"
* code.coding.display = "Adenovirus Ab [Titer] in Serum"
* valueRatio.numerator.value = 1
* valueRatio.denominator.value = 128
* valueRatio.denominator.unit = "{titer}"
* valueRatio.denominator.system = $ucum
* valueRatio.denominator.code = #{titer}
* method.coding = $sct#708104000 "Agglutination technique (qualifier value)"
* method.coding.display = "Agglutination technique (qualifier value)"
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
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "ct-wert-1"
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
* effectiveDateTime = "2026-04-03T17:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T18:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* derivedFrom = Reference(mii-exa-test-data-mikrobio-molekulare-pathogenlast-1)
* code.coding = $loinc#74039-9 "Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection"
* code.coding.display = "Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection"
* valueQuantity.value = 21.3
* valueQuantity.value.extension[+].url = "http://hl7.org/fhir/StructureDefinition/quantity-precision"
* valueQuantity.value.extension[=].valueInteger = 1
* valueQuantity.comparator = #<
* valueQuantity.unit = "Ct"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method.coding = $sct#70601000052104 "Real-time polymerase chain reaction technique (qualifier value)"
* method.coding.display = "Real-time PCR technique"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low.value = 0
* referenceRange.low.unit = "Ct"
* referenceRange.low.system = $ucum
* referenceRange.low.code = #1
* referenceRange.high.value = 35
* referenceRange.high.unit = "Ct"
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
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "pathogenlast-1"
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
* effectiveDateTime = "2026-04-03T18:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T19:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* device = Reference(mii-exa-test-data-mikrobio-device-pcr-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* device.identifier.value = "PCR-CYCLER-001"
* code.coding = $loinc#95521-1 "SARS-CoV-2 (COVID-19) N gene [#/volume] (viral load) in Respiratory system specimen by NAA with probe detection"
* code.coding.display = "SARS-CoV-2 (COVID-19) N gene [#/volume] (viral load) in Respiratory system specimen by NAA with probe detection"
* valueQuantity.value = 350000
* valueQuantity.comparator = #>=
* valueQuantity.unit = "Copies/mL"
* valueQuantity.system = $ucum
* valueQuantity.code = #1/mL
* method.coding = $sct#70601000052104 "Real-time polymerase chain reaction technique (qualifier value)"
* method.coding.display = "Real-time PCR technique"
* interpretation = $v3-ObservationInterpretation#H "High"
* note[+].text = "Hohe Pathogenlast — klinische Relevanz mit Behandelndem besprechen."

// ----------------------------------------------------------------------------
// 17. Barlett-Score
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-barlett-score-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-barlett-score
Usage: #example
Description: "Mikrobio: Barlett-Score (verwertbar)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "barlett-1"
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
* effectiveDateTime = "2026-04-02T11:15:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-02T11:30:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#75371-5 "Bartlett score of Sputum Qualitative by Light microscopy"
* code.coding.display = "Bartlett score of Sputum Qualitative by Light microscopy"
* valueCodeableConcept.coding = $loinc#LA21390-2 "+1 Active inflammation"
* method.coding = $sct#702661004 "Light microscopy technique (qualifier value)"
* method.coding.display = "Light microscopy technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note[+].text = "Sputum-Probe verwertbar (Barlett-Score positiv)."

// ----------------------------------------------------------------------------
// 18. Nugent-Score
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-nugent-score-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score
Usage: #example
Description: "Mikrobio: Nugent-Score (7 — bakterielle Vaginose)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "nugent-1"
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
* effectiveDateTime = "2026-04-02T11:30:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-02T12:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#101433-1 "Bacterial vaginosis score in Vaginal fluid Qualitative by Nugent"
* code.coding.display = "Bacterial vaginosis score in Vaginal fluid Qualitative by Nugent"
* valueQuantity.value = 7
* valueQuantity.comparator = #>=
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method.coding = $sct#702661004 "Light microscopy technique (qualifier value)"
* method.coding.display = "Light microscopy technique (qualifier value)"
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
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allg-kultur-dar-1"
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
* effectiveDateTime = "2026-04-02T11:00:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-03T15:00:00+02:00"
* specimen = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen.identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen.identifier.value = "BLOOD-CULT-001"
* code.coding = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* code.coding.display = "Microorganism identified in Specimen by Culture"
* dataAbsentReason.coding = $data-absent-reason#unknown "Unknown"
* method.coding = $sct#703750006 "Aerobic culture technique (qualifier value)"
* method.coding.display = "Aerobic culture technique (qualifier value)"
* note[+].text = "Kultur konnte nicht ausgewertet werden (Probe abgelaufen)."
