// ============================================================================
// JOURNEY Patient-12 — Modul Mikrobiologie
//
// Blutkultur vom 08.03. -> Klebsiella pneumoniae -> Antibiogramm -> 3MRGN.
// Labor-Organisation und Analysegeräte werden aus dem Mikrobio-Modulbundle
// mitgenutzt (gemeinsame Infrastruktur, nicht patientenbezogen).
//
// TERMINOLOGIELÜCKE (Kandidat für Ballot-Feedback): Für den ESBL-Phänotyp
// gibt es in LOINC 2.83 keinen eigenen Observable-Code "Extended spectrum
// beta lactamase [Presence] in Isolate" — es existieren nur genbezogene
// LP-Teile (blaCTX-M, blaSHV, blaTEM …) und Antwortcodes (LA33507-7
// "K. pneumoniae ESBL"). Hier wird deshalb der generische, verifizierte Code
// 105277-8 "Beta lactamase [Presence] in Isolate" verwendet und der
// ESBL-Phänotyp im Text geführt.
// ============================================================================

// ZURUECKGENOMMEN: Die vererbte Konformitaet war hier zusaetzlich deklariert
// (meta.profile mit mii-pr-mikrobio-* UND ObservationLab), damit der Validator
// gegen die ganze Vererbungskette prueft. Fachlich richtig — das Mikrobio-Modul
// erbt durchgaengig vom Labor-Modul — aber der CI-Validierungsjob lief danach
// statt 13 Minuten ueber 46 Minuten ohne Ergebnis und musste abgebrochen
// werden. Vermutung: Jede Ressource wird zweimal slicing-ausgewertet, und
// Slicing ist bei den ICU-/Mikrobio-Profilen die teuerste Operation (derselbe
// Codepfad, der zuvor mit OutOfMemoryError in errorSummaryForSlicingAsHtml
// starb). Bewiesen ist es nicht; die Serverlast kann mitgespielt haben.
// Wer es erneut versucht, sollte mit EINER Ressource anfangen und die
// Laufzeit vergleichen — die Aussage "Mikrobio erfuellt ObservationLab" ist
// an einer Instanz genauso belegt wie an neun.
RuleSet: JourneyMibiBase
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[observation-category] = $observation-category#laboratory
* category[mibi-category] = $v2-0074#MB "Microbiology"
* subject = Reference(mii-exa-test-data-patient-12)
* encounter = Reference(mii-exa-test-data-patient-12-encounter-2)
* basedOn = Reference(mii-exa-test-data-patient-12-mibi-anforderung-1)

// ----------------------------------------------------------------------------
// Anforderung und Proben
// ----------------------------------------------------------------------------
// Auf ServiceRequestLab profiliert: Das Mikrobio-Modul ist durchgaengig auf dem
// Labor-Modul gebaut — mii-pr-mikrobio-allgemeine-kultur und -empfindlichkeit
// erben von ObservationLab, mii-pr-mikrobio-diagnostic-report von
// DiagnosticReportLab. Die Anforderung als Labor-Anforderung zu fuehren ist
// damit die konsequente Fortsetzung derselben Achse.
Instance: mii-exa-test-data-patient-12-mibi-anforderung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
Usage: #example
Description: "Mikrobio Auftrag: Blutkultur und Trachealsekret bei Sepsisverdacht (Patient 12)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/service-request"
* identifier[anforderung].value = "MIKROBIO-SR-012"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* status = #completed
* intent = #order
* priority = #urgent
* category.coding[laboratory] = $observation-category#laboratory
* category.coding[laboratory].display = "Laboratory"
* code = $sct#252418007 "Microbiology procedure (procedure)"
* code.text = "Blutkultur und Trachealsekret, Erregerdiagnostik mit Antibiogramm"
* subject = Reference(mii-exa-test-data-patient-12)
* encounter = Reference(mii-exa-test-data-patient-12-encounter-2)
* authoredOn = "2025-03-08T18:25:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-12-diagnose-2)

// Auf mii-pr-mikrobio-probe profiliert wie das Trachealsekret derselben
// Anforderung: An dieser Probe haengen alle mikrobiologischen Observations,
// sie traegt Abnahmezeit, Koerperstelle und Behaelter — keine Dummy-Ressource,
// die nur Referenzen aufloesen soll.
Instance: mii-exa-test-data-patient-12-mibi-specimen-bk
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe
Usage: #example
Description: "Mikrobio Probe: Blutkultur aerob/anaerob (Patient 12)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* identifier.value = "BK-012-001"
* status = #available
* type.coding[sct] = $sct#119297000 "Blood specimen (specimen)"
* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#PRIMÄRPROBE "Primärprobe"
* extension[infektiositaetsstatus].valueCodeableConcept = $sct#409603009 "Biosafety level 2 (qualifier value)"
* subject = Reference(mii-exa-test-data-patient-12)
* request = Reference(mii-exa-test-data-patient-12-mibi-anforderung-1)
* collection.collectedDateTime = "2025-03-08T18:30:00+01:00"
* collection.bodySite.coding[sct] = $sct#28273000 "Bilateral antecubital fossae (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* receivedTime = "2025-03-08T19:05:00+01:00"
* note.text = "Zwei Paerchen vor Beginn der empirischen Antibiose abgenommen."

Instance: mii-exa-test-data-patient-12-mibi-specimen-ts
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe
Usage: #example
Description: "Mikrobio Probe: Trachealsekret (Patient 12)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* identifier.value = "TS-012-001"
* status = #available
* type.coding[sct] = $sct#57741000052105 "Tracheal secretion specimen (specimen)"
* subject = Reference(mii-exa-test-data-patient-12)
* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#PRIMÄRPROBE "Primärprobe"
* extension[infektiositaetsstatus].valueCodeableConcept = $sct#409603009 "Biosafety level 2 (qualifier value)"
* collection.collectedDateTime = "2025-03-08T18:35:00+01:00"
* collection.bodySite.coding[sct] = $sct#44567001 "Trachea structure (body structure)"
* collection.quantity = 3 'mL' "mL"
* container.type = $sct#83059008 "Tube, device (physical object)"
* request = Reference(mii-exa-test-data-patient-12-mibi-anforderung-1)
* receivedTime = "2025-03-08T19:05:00+01:00"
* note.text = "Direkt nach Intubation ueber den Tubus gewonnen."

// ----------------------------------------------------------------------------
// 08.03. → 10.03.: Kultur wird positiv, Mikroskopie zeigt gramnegative Stäbchen
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-mibi-kultur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur
Usage: #example
Description: "Mikrobio: Blutkultur positiv (Patient 12)"
* insert JourneyMibiBase
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "pat12-kultur-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* effectiveDateTime = "2025-03-08T18:30:00+01:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCoding = $sct#399445004 "Specimen collection date (observable entity)"
* issued = "2025-03-10T08:00:00+01:00"
* specimen = Reference(mii-exa-test-data-patient-12-mibi-specimen-bk)
* code.coding = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* valueCodeableConcept.coding = $sct#10828004 "Positive (qualifier value)"
* method.coding = $sct#703750006 "Aerobic culture technique (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* device = Reference(mii-exa-test-data-mikrobio-device-bactec-1)
* note[+].text = "Wachstumssignal nach 14 h in beiden aeroben Flaschen."

Instance: mii-exa-test-data-patient-12-mibi-mikroskopie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie
Usage: #example
Description: "Mikrobio: Gramfärbung — gramnegative Stäbchen (Patient 12)"
* insert JourneyMibiBase
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "pat12-mikroskopie-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* effectiveDateTime = "2025-03-10T08:15:00+01:00"
* issued = "2025-03-10T08:40:00+01:00"
* specimen = Reference(mii-exa-test-data-patient-12-mibi-specimen-bk)
* code.coding = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* valueCodeableConcept.coding = $sct#87172008 "Gram-negative bacillus (organism)"
* method.coding = $sct#62777006 "Gram stain method (procedure)"
* device = Reference(mii-exa-test-data-mikrobio-device-mikroskop-1)
* note[+].text = "Befund sofort telefonisch an die Intensivstation uebermittelt."

Instance: mii-exa-test-data-patient-12-mibi-erreger-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung
Usage: #example
Description: "Mikrobio: Klebsiella pneumoniae identifiziert (Patient 12)"
* insert JourneyMibiBase
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "pat12-erreger-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* effectiveDateTime = "2025-03-10T16:00:00+01:00"
* issued = "2025-03-10T16:30:00+01:00"
* specimen = Reference(mii-exa-test-data-patient-12-mibi-specimen-bk)
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-patient-12-mibi-kultur-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #reflex
* code.coding = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* valueCodeableConcept.coding = $sct#56415008 "Klebsiella pneumoniae (organism)"
* method.coding = $sct#703752003 "Organism specific culture technique (qualifier value)"
* device = Reference(mii-exa-test-data-mikrobio-device-maldi-1)
* note[+].text = "Identifikation per MALDI-TOF am Kulturisolat."

// ----------------------------------------------------------------------------
// 11.03.: Antibiogramm — der Befund, der die Therapie ändert
// ----------------------------------------------------------------------------
RuleSet: JourneyAstBase(idValue, effective)
* insert JourneyMibiBase
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "{idValue}"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* effectiveDateTime = "{effective}"
* issued = "2025-03-11T09:30:00+01:00"
* specimen = Reference(mii-exa-test-data-patient-12-mibi-specimen-bk)
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* extension[=].extension[+].url = "observation"
* extension[=].extension[=].valueReference = Reference(mii-exa-test-data-patient-12-mibi-erreger-1)
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #reflex
* interpretation.extension[Norm].url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm"
* interpretation.extension[Norm].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm#EUCAST "EUCAST"
* method.coding = $sct#708073008 "Minimum inhibitory concentration susceptibility test technique (qualifier value)"
* device = Reference(mii-exa-test-data-mikrobio-device-vitek-1)

Instance: mii-exa-test-data-patient-12-mibi-ast-piptazo
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit
Usage: #example
Description: "Mikrobio: Piperacillin/Tazobactam MHK > 64 mg/L — resistent (Patient 12)"
* insert JourneyAstBase(pat12-ast-piptazo, 2025-03-11T09:00:00+01:00)
* code.coding = $loinc#18970-4 "Piperacillin+Tazobactam [Susceptibility]"
* valueQuantity.value = 64
* valueQuantity.comparator = #>
* valueQuantity.unit = "mg/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/L
* interpretation.coding = $v3-ObservationInterpretation#R "Resistant"
* note[+].text = "Die laufende empirische Therapie ist damit unwirksam."

Instance: mii-exa-test-data-patient-12-mibi-ast-ceftazidim
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit
Usage: #example
Description: "Mikrobio: Ceftazidim MHK 32 mg/L — resistent (Patient 12)"
* insert JourneyAstBase(pat12-ast-ceftazidim, 2025-03-11T09:00:00+01:00)
* code.coding = $loinc#18893-8 "cefTAZidime [Susceptibility]"
* valueQuantity.value = 32
* valueQuantity.unit = "mg/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/L
* interpretation.coding = $v3-ObservationInterpretation#R "Resistant"

Instance: mii-exa-test-data-patient-12-mibi-ast-cipro
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit
Usage: #example
Description: "Mikrobio: Ciprofloxacin MHK 4 mg/L — resistent (Patient 12)"
* insert JourneyAstBase(pat12-ast-cipro, 2025-03-11T09:00:00+01:00)
* code.coding = $loinc#18906-8 "Ciprofloxacin [Susceptibility]"
* valueQuantity.value = 4
* valueQuantity.unit = "mg/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/L
* interpretation.coding = $v3-ObservationInterpretation#R "Resistant"

Instance: mii-exa-test-data-patient-12-mibi-ast-meropenem
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit
Usage: #example
Description: "Mikrobio: Meropenem MHK <= 0.25 mg/L — empfindlich (Patient 12)"
* insert JourneyAstBase(pat12-ast-meropenem, 2025-03-11T09:00:00+01:00)
* code.coding = $loinc#18943-1 "Meropenem [Susceptibility]"
* valueQuantity.value = 0.25
* valueQuantity.comparator = #<=
* valueQuantity.unit = "mg/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/L
* interpretation.coding = $v3-ObservationInterpretation#S "Susceptible"
* referenceRange.high.value = 2
* referenceRange.high.unit = "mg/L"
* referenceRange.high.system = $ucum
* referenceRange.high.code = #mg/L
* note[+].text = "Carbapenem bleibt wirksam — Grundlage der Therapieumstellung am 11.03."

// ----------------------------------------------------------------------------
// Ableitungen aus dem Antibiogramm: MRGN-Klasse und Resistenzmechanismus
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-mibi-mrgn-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse
Usage: #example
Description: "Mikrobio: 3MRGN Klebsiella pneumoniae (Patient 12)"
* insert JourneyMibiBase
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "pat12-mrgn-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* effectiveDateTime = "2025-03-11T09:15:00+01:00"
* issued = "2025-03-11T09:30:00+01:00"
* specimen = Reference(mii-exa-test-data-patient-12-mibi-specimen-bk)
* code.coding = $loinc#99780-9 "Multidrug resistant gram-negative organism classification [Type]"
* valueCodeableConcept.coding = $loinc#LA33215-7 "3MRGN"
* interpretation = $v3-ObservationInterpretation#R "Resistant"
* method.coding = $sct#14788002 "Antimicrobial susceptibility test (procedure)"
* device = Reference(mii-exa-test-data-mikrobio-device-vitek-1)
* derivedFrom[0] = Reference(mii-exa-test-data-patient-12-mibi-ast-piptazo)
* derivedFrom[1] = Reference(mii-exa-test-data-patient-12-mibi-ast-ceftazidim)
* derivedFrom[2] = Reference(mii-exa-test-data-patient-12-mibi-ast-cipro)
* note[+].text = "3MRGN nach KRINKO 2012: Resistenz gegen Acylureidopenicilline, Cephalosporine der 3./4. Generation und Fluorchinolone; Carbapeneme wirksam. Isolierungsmassnahmen eingeleitet."

Instance: mii-exa-test-data-patient-12-mibi-esbl-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten
Usage: #example
Description: "Mikrobio: Beta-Laktamase nachgewiesen (ESBL-Phänotyp, Patient 12)"
* insert JourneyMibiBase
* identifier[analyseBefundCode].type.coding[observationInstanceV2] = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "pat12-esbl-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-CHA"
* effectiveDateTime = "2025-03-11T09:10:00+01:00"
* issued = "2025-03-11T09:30:00+01:00"
* specimen = Reference(mii-exa-test-data-patient-12-mibi-specimen-bk)
* code.coding = $loinc#105277-8 "Beta lactamase [Presence] in Isolate"
* valueCodeableConcept.coding = $sct#260373001 "Detected (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* method.coding = $sct#1303975003 "Disk diffusion technique (qualifier value)"
* device = Reference(mii-exa-test-data-mikrobio-device-vitek-1)
* note[+].text = "ESBL-Phaenotyp im EUCAST-Bestaetigungstest (Synergie mit Clavulansaeure). Fuer den ESBL-Phaenotyp existiert in LOINC 2.83 kein eigener Observable-Code, daher der generische Beta-Laktamase-Code."

// ----------------------------------------------------------------------------
// Befundbericht
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-mibi-report-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report
Usage: #example
Description: "Mikrobio Befund: Blutkultur mit 3MRGN Klebsiella pneumoniae (Patient 12)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[befund].type.coding[fillerV2] = $v2-0203#FILL
* identifier[befund].system = "https://www.charite.de/fhir/sid/diagnostic-report"
* identifier[befund].value = "MIKROBIO-DR-012"
* identifier[befund].assigner = Reference(mii-exa-test-data-mikrobio-organization-lab-1)
* identifier[befund].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[befund].assigner.identifier.value = "DIZ-CHA"
* basedOn[+] = Reference(mii-exa-test-data-patient-12-mibi-anforderung-1)
* status = #final
* category[+] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* subject = Reference(mii-exa-test-data-patient-12)
* encounter = Reference(mii-exa-test-data-patient-12-encounter-2)
* effectiveDateTime = "2025-03-08T18:30:00+01:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCoding = $sct#399445004 "Specimen collection date (observable entity)"
* issued = "2025-03-11T09:45:00+01:00"
* performer[+] = Reference(mii-exa-test-data-mikrobio-organization-lab-1)
* resultsInterpreter[+] = Reference(mii-exa-test-data-mikrobio-organization-lab-1)
* specimen[+] = Reference(mii-exa-test-data-patient-12-mibi-specimen-bk)
* result[0] = Reference(mii-exa-test-data-patient-12-mibi-kultur-1)
* result[1] = Reference(mii-exa-test-data-patient-12-mibi-mikroskopie-1)
* result[2] = Reference(mii-exa-test-data-patient-12-mibi-erreger-1)
* result[3] = Reference(mii-exa-test-data-patient-12-mibi-ast-piptazo)
* result[4] = Reference(mii-exa-test-data-patient-12-mibi-ast-ceftazidim)
* result[5] = Reference(mii-exa-test-data-patient-12-mibi-ast-cipro)
* result[6] = Reference(mii-exa-test-data-patient-12-mibi-ast-meropenem)
* result[7] = Reference(mii-exa-test-data-patient-12-mibi-mrgn-1)
* result[8] = Reference(mii-exa-test-data-patient-12-mibi-esbl-1)
* conclusion = "Klebsiella pneumoniae, 3MRGN, ESBL-Phaenotyp. Piperacillin/Tazobactam resistent — laufende empirische Therapie unwirksam. Meropenem empfindlich, Umstellung dringend empfohlen. Isolierung nach KRINKO."
