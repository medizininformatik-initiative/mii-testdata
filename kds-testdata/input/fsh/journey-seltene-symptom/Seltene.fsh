// ============================================================================
// JOURNEY Patient-13 — Modul Seltene Erkrankungen
//
// Das Gegenstück zum Symptom-Teil: die Diagnose, die 12 Jahre nach dem
// Erstsymptom gestellt wird. Die evidence-Elemente der klinischen Diagnose
// zeigen auf die HPO-Assessments, und die Symptom-Conditions aus
// journey-seltene-symptom/Symptom.fsh bleiben als eigenständige Ressourcen
// bestehen — die Verknüpfung läuft über Condition.evidence.detail.
// ============================================================================

Alias: $seltene-cs-hpo-change = https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status

RuleSet: JourneySelteneObsBase
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* subject = Reference(mii-exa-test-data-patient-13)
* encounter = Reference(mii-exa-test-data-patient-13-encounter-3)
* effectiveDateTime = "2024-01-15"

// ----------------------------------------------------------------------------
// HPO-Phänotypen
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-hpo-akroparaesthesie
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment
Usage: #example
Description: "HPO Assessment: Acroparesthesia (vorhanden) — Patient 13"
* insert JourneySelteneObsBase
* code = $HPO#HP:0031006 "Acroparesthesia"
* method = $sct#84100007 "History taking"
* note[+].text = "Seit 2011 bestehend, siehe Symptom-Condition SYMP-CON-0013-1."
* component[+].code = $sct#260411009 "Presence findings"
* component[=].valueCodeableConcept = $loinc#LA9633-4 "Present"

Instance: mii-exa-test-data-patient-13-hpo-hypohidrose
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment
Usage: #example
Description: "HPO Assessment: Hypohidrosis (vorhanden) — Patient 13"
* insert JourneySelteneObsBase
* code = $HPO#HP:0000966 "Hypohidrosis"
* method = $sct#84100007 "History taking"
* component[+].code = $sct#260411009 "Presence findings"
* component[=].valueCodeableConcept = $loinc#LA9633-4 "Present"

Instance: mii-exa-test-data-patient-13-hpo-proteinurie
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment
Usage: #example
Description: "HPO Assessment: Proteinuria (vorhanden) — der Befund, der zur Diagnose führte"
* insert JourneySelteneObsBase
* effectiveDateTime = "2023-11-14"
* encounter = Reference(mii-exa-test-data-patient-13-encounter-1)
* code = $HPO#HP:0000093 "Proteinuria"
* method = $sct#27171005 "Urinalysis"
* derivedFrom = Reference(mii-exa-test-data-patient-13-labobs-protein)
* note[+].text = "Protein-Kreatinin-Ratio 780 mg/g im Spontanurin — Anlass der nephrologischen Vorstellung und damit Startpunkt der Diagnosefindung."
* component[+].code = $sct#260411009 "Presence findings"
* component[=].valueCodeableConcept = $loinc#LA9633-4 "Present"

Instance: mii-exa-test-data-patient-13-hpo-cornea
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment
Usage: #example
Description: "HPO Assessment: Corneal opacity (Cornea verticillata, vorhanden) — Patient 13"
* insert JourneySelteneObsBase
* effectiveDateTime = "2023-12-04"
* code = $HPO#HP:0007957 "Corneal opacity"
* bodySite = $sct#28726007 "Corneal structure"
* method = $sct#55468007 "Ocular slit lamp examination"
* note[+].text = "Cornea verticillata beidseits in der augenaerztlichen Spaltlampenuntersuchung — nahezu pathognomonisch fuer Morbus Fabry."
* component[+].code = $sct#260411009 "Presence findings"
* component[=].valueCodeableConcept = $loinc#LA9633-4 "Present"

Instance: mii-exa-test-data-patient-13-hpo-angiokeratom
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment
Usage: #example
Description: "HPO Assessment: Angiokeratoma (nicht vorhanden) — ausgeschlossener Phänotyp"
* insert JourneySelteneObsBase
* code = $HPO#HP:0001014 "Angiokeratoma"
* method = $sct#5880005 "Physical examination procedure"
* note[+].text = "Keine Angiokeratome nachweisbar — bei heterozygoten Frauen haeufig fehlend. Der dokumentierte AUSSCHLUSS ist hier informativ, nicht das Fehlen der Ressource."
* component[+].code = $sct#260411009 "Presence findings"
* component[=].valueCodeableConcept = $loinc#LA9634-2 "Absent"

// ----------------------------------------------------------------------------
// Klinische Diagnose
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-seltene-diagnose-klinisch
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis
Usage: #example
Description: "Clinical Diagnosis: Morbus Fabry (Patient 13, 12 Jahre nach Erstsymptom)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* extension[Feststellungsdatum].url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension[Feststellungsdatum].valueDateTime = "2023-12-08"
* category = $cs-hl7-condition-category#encounter-diagnosis
* severity = $sct#6736007 "Moderate (severity modifier)"
* code.coding[+] = $sct#16652001 "Fabry's disease"
* code.coding[+] = $orpha#324 "Fabry disease"
* code.coding[+] = $icd-10-gm#E75.2 "Sonstige Sphingolipidosen"
* code.coding[=].version = "2024"
* code.coding[=].extension[0].url = "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit"
* code.coding[=].extension[0].valueCoding = $diagnosesicherheit#G "gesicherte Diagnose"
* code.text = "Morbus Fabry (Alpha-Galaktosidase-A-Mangel), heterozygot"
* subject = Reference(mii-exa-test-data-patient-13)
* encounter = Reference(mii-exa-test-data-patient-13-encounter-2)
* onsetAge.value = 22
* onsetAge.unit = "years"
* onsetAge.system = $ucum
* onsetAge.code = #a
* onsetAge.extension[0].url = "http://fhir.de/StructureDefinition/lebensphase"
* onsetAge.extension[0].valueCodeableConcept = $sct#263659003 "Adolescence (qualifier value)"
* recordedDate = "2023-12-08"
* recorder = Reference(mii-exa-test-data-practitioner-physician-1)
* asserter = Reference(mii-exa-test-data-practitioner-physician-2)
// evidence verknüpft die Diagnose mit den Phänotypen — und damit mit den
// Symptomen, die zwölf Jahre lang nicht zugeordnet werden konnten.
* evidence[+].code = $HPO#HP:0031006 "Acroparesthesia"
* evidence[=].detail = Reference(mii-exa-test-data-patient-13-hpo-akroparaesthesie)
* evidence[+].code = $HPO#HP:0000966 "Hypohidrosis"
* evidence[=].detail = Reference(mii-exa-test-data-patient-13-hpo-hypohidrose)
* evidence[+].code = $HPO#HP:0000093 "Proteinuria"
* evidence[=].detail = Reference(mii-exa-test-data-patient-13-hpo-proteinurie)
* evidence[+].code = $HPO#HP:0007957 "Corneal opacity"
* evidence[=].detail = Reference(mii-exa-test-data-patient-13-hpo-cornea)
* note.text = "Diagnostische Latenz 12 Jahre (Erstsymptom 2011, Diagnose 2023-12-08). Ausloeser der Abklaerung war die Proteinurie, nicht die seit der Jugend bestehenden Schmerzattacken."

// ----------------------------------------------------------------------------
// Genetische Diagnose
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-seltene-diagnose-genetisch
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis
Usage: #example
Description: "Genetic Diagnosis: GLA-Variante, molekulargenetisch bestätigter Morbus Fabry"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* extension[Feststellungsdatum].url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension[Feststellungsdatum].valueDateTime = "2023-12-08"
// Verknuepfung zur klinischen Diagnose
* extension[ReferenzPrimaerdiagnose].url = "http://hl7.org/fhir/StructureDefinition/condition-related"
* extension[ReferenzPrimaerdiagnose].valueReference = Reference(mii-exa-test-data-patient-13-seltene-diagnose-klinisch)
// category ist im Profil auf $sct#782964007 "Genetic disease" fixiert und
// darf nicht ueberschrieben werden.
* code.coding[+] = $sct#16652001 "Fabry's disease"
* code.coding[+] = $orpha#324 "Fabry disease"
* code.coding[+] = $icd-10-gm#E75.2 "Sonstige Sphingolipidosen"
* code.coding[=].version = "2024"
* code.text = "Morbus Fabry, molekulargenetisch gesichert (GLA, heterozygot)"
* subject = Reference(mii-exa-test-data-patient-13)
* encounter = Reference(mii-exa-test-data-patient-13-encounter-2)
* recordedDate = "2023-12-08"
* recorder = Reference(mii-exa-test-data-practitioner-physician-2)
* evidence[+].code.coding[+] = $sct#106221001 "Genetic finding"
* evidence[=].code.text = "Heterozygote pathogene Variante im GLA-Gen (Sanger-Sequenzierung)"
* evidence[=].detail[+] = Reference(mii-exa-test-data-patient-13-molgen-variante)
* note.text = "Sanger-Sequenzierung des GLA-Gens: heterozygote pathogene Variante. X-chromosomaler Erbgang, daher Kaskadenscreening der Familie eingeleitet."

// ----------------------------------------------------------------------------
// Familienanamnese — X-chromosomaler Erbgang
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-familienanamnese-mutter
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese
Usage: #example
Description: "Familienanamnese: Mutter mit Morbus Fabry (Patient 13)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen"
* extension[=].valueCodeableConcept = $sct#373066001 "Yes"
* status = #completed
* date = "2024-01-15"
* patient = Reference(mii-exa-test-data-patient-13)
* relationship.coding[snomed] = $sct#65656005 "Natural mother"
* relationship.coding[snomed].extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-verwandtschaftsgrad"
* relationship.coding[snomed].extension[0].valueCoding = $sct#125678001 "First degree blood relative (person)"
* relationship.coding[snomed].extension[1].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-familiare-linie"
* relationship.coding[snomed].extension[1].valueCoding = $sct#72705000 "Mother (person)"
* sex = http://hl7.org/fhir/administrative-gender#female
* bornDate = "1962"
* deceasedBoolean = false
* condition[+].code.coding[+] = $icd-10-gm#E75.2 "Sonstige Sphingolipidosen"
* condition[=].code.coding[=].version = "2024"
* condition[=].code.coding[+] = $orpha#324 "Fabry disease"
* condition[=].contributedToDeath = false
* note.text = "Nach der Diagnose der Indexpatientin im Kaskadenscreening ebenfalls als Traegerin identifiziert; klinisch bislang oligosymptomatisch."

Instance: mii-exa-test-data-patient-13-familienanamnese-onkel
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese
Usage: #example
Description: "Familienanamnese: Verstorbener Onkel mütterlicherseits (Niereninsuffizienz, retrospektiv Fabry-verdächtig)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen"
* extension[=].valueCodeableConcept = $sct#373068000 "Undetermined"
* status = #completed
* date = "2024-01-15"
* patient = Reference(mii-exa-test-data-patient-13)
* relationship.coding[snomed] = $sct#38048003 "Uncle"
* relationship.coding[snomed].extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-verwandtschaftsgrad"
* relationship.coding[snomed].extension[0].valueCoding = $sct#699110007 "Second degree blood relative (person)"
* sex = http://hl7.org/fhir/administrative-gender#male
* deceasedAge.value = 48
* deceasedAge.unit = "years"
* deceasedAge.system = $ucum
* deceasedAge.code = #a
* condition[+].code.coding[+] = $icd-10-gm#N18.5 "Chronische Nierenkrankheit, Stadium 5"
* condition[=].code.coding[=].version = "2024"
* condition[=].contributedToDeath = true
* note.text = "Dialysepflichtige Niereninsuffizienz unklarer Genese, verstorben 2004. Keine genetische Abklaerung zu Lebzeiten — retrospektiv mit hoher Wahrscheinlichkeit Morbus Fabry."

// ----------------------------------------------------------------------------
// Therapieplan und Registerteilnahme
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-seltene-therapieplan
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan
Usage: #example
Description: "CarePlan: Therapieplan Morbus Fabry (Patient 13)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* intent = #plan
* subject = Reference(mii-exa-test-data-patient-13)
* encounter = Reference(mii-exa-test-data-patient-13-encounter-3)
* period.start = "2024-01-15"
* created = "2024-01-15"
* author = Reference(mii-exa-test-data-practitioner-physician-1)
* addresses = Reference(mii-exa-test-data-patient-13-seltene-diagnose-klinisch)
* activity.reference = Reference(mii-exa-test-data-patient-13-medrequest-1)
* note.text = "Enzymersatztherapie mit Agalsidase beta alle zwei Wochen; nephrologische Verlaufskontrolle vierteljaehrlich; kardiologisches und neurologisches Screening jaehrlich."

Instance: mii-exa-test-data-patient-13-registerteilnahme
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme
Usage: #example
Description: "Registerteilnahme: Einschluss in das Fabry-Register (Patient 13)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[register].valueReference = Reference(mii-exa-test-data-patient-13-register-katalog)
* identifier.system = "https://www.fabryregistry.example.org/fhir/sid/subject"
* identifier.value = "FR-DE-004217"
* status = #on-study
* period.start = "2024-02-05"
* study = Reference(mii-exa-test-data-patient-13-register-study)
* individual = Reference(mii-exa-test-data-patient-13)
* consent = Reference(mii-exa-test-data-patient-13-register-consent)

Instance: mii-exa-test-data-patient-13-register-katalog
InstanceOf: Library
Usage: #example
Description: "Library: Katalogeintrag Fabry-Register"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.fabryregistry.example.org/fhir/sid/registry"
* identifier.value = "FABRY-REG-DE"
* name = "FabryRegistryDE"
* title = "Fabry-Register Deutschland - Katalogeintrag"
* status = #active
* type = $library-type#asset-collection
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.se-atlas.de/"
* relatedArtifact.document.url = "https://www.se-atlas.de/"

Instance: mii-exa-test-data-patient-13-register-study
InstanceOf: ResearchStudy
Usage: #example
Description: "ResearchStudy: Fabry-Register Deutschland"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.fabryregistry.example.org/fhir/sid/registry"
* identifier.value = "FABRY-REG-DE"
* title = "Fabry-Register Deutschland"
* status = #active
* description = "Krankheitsspezifisches Register zur Verlaufsbeobachtung von Patientinnen und Patienten mit Morbus Fabry unter Enzymersatztherapie."

Instance: mii-exa-test-data-patient-13-register-consent
InstanceOf: Consent
Usage: #example
Description: "Consent: Einwilligung in die Teilnahme am Fabry-Register"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* scope = $consentscope#research
* category = $consentcategorycodes#research
* patient = Reference(mii-exa-test-data-patient-13)
* dateTime = "2024-02-05"
* policyRule = $consentpolicycodes#cric

// ----------------------------------------------------------------------------
// Molekulargenetischer Befund als Evidenz der genetischen Diagnose
// (Condition.evidence.detail ist im Profil 1..*). Bewusst als schlanke
// Observation ohne MolGen-Profil gehalten — dieselbe Loesung wie im
// Seltene-Modulbundle (mii-exa-test-data-seltene-molgen-variante-1). Die
// vollstaendige MolGen-Modellierung liegt im MolGen-Modulbundle.
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-molgen-variante
InstanceOf: Observation
Usage: #example
Description: "Genetische Variante: heterozygote pathogene GLA-Variante (Patient 13)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-test-data-patient-13)
* encounter = Reference(mii-exa-test-data-patient-13-encounter-2)
* effectiveDateTime = "2023-12-04"
* valueCodeableConcept = $loinc#LA6576-8 "Positive"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNC#HGNC:4296 "GLA"
* component[+].code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"
* note.text = "Sanger-Sequenzierung aller kodierenden Exons des GLA-Gens; heterozygote pathogene Variante nachgewiesen. Befund durch die Humangenetik freigegeben am 2023-12-08."
