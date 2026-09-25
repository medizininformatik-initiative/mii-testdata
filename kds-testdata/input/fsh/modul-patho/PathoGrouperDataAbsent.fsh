// ============================================================================
// MII Patho Test Data - Grouper-Varianten mit component.dataAbsentReason
// ----------------------------------------------------------------------------
// Die fuenf Section-Grouper des Patho-Moduls fuehren component.dataAbsentReason
// als Must-Support-Element. obs-6 erlaubt dataAbsentReason nur, wenn auf der
// betreffenden Ebene KEIN value[x] gesetzt ist — die Komponenten dieser
// Instanzen tragen daher jeweils einen DAR-Code statt eines Werts.
// Jede Instanz bildet einen klinisch plausiblen Grund ab, warum genau dieser
// Befundparameter im Bericht nicht erhoben bzw. nicht beurteilbar war.
// ============================================================================

// ----------------------------------------------------------------------------
// Makroskopie: Zylinderlaenge am fragmentierten Material nicht messbar
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patho-macro-grouper-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper
Usage: #example
Title: "Makroskopische Befunde Grouper - Laenge nicht messbar"
Description: "Makroskopie-Grouper mit Komponente ohne Wert: Zylinderlaenge am fragmentierten Material nicht messbar (component.dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22634-0
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-15T14:20:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* identifier.system = "https://www.charite.de/fhir/sid/patho/befund"
* identifier.value = "E_24_001_MAKRO_DAR"
* method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-03-part)
* bodySite = $sct#41216001 "Prostate"
* component.code = $loinc#44619-5 "Length of tissue core(s)"
* component.dataAbsentReason = $data-absent-reason#unknown "Unknown"
* note.text = "Stanzzylinder mehrfach fragmentiert — Gesamtlaenge makroskopisch nicht bestimmbar."

// ----------------------------------------------------------------------------
// Mikroskopie: perineurale Infiltration am vorliegenden Schnitt nicht beurteilbar
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patho-micro-grouper-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper
Usage: #example
Title: "Mikroskopische Befunde Grouper - perineurale Infiltration nicht beurteilbar"
Description: "Mikroskopie-Grouper mit Komponente ohne Wert: perineurale Infiltration am vorliegenden Schnitt nicht beurteilbar (component.dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22635-7
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:30:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* identifier.system = "https://www.charite.de/fhir/sid/patho/befund"
* identifier.value = "E_24_001_MIKRO_DAR"
* method = $sct#104157003 "Light microscopy (procedure)"
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-03-slide)
* bodySite = $sct#41216001 "Prostate"
* component.code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
* component.dataAbsentReason = $data-absent-reason#unknown "Unknown"
* note.text = "Kein Nervengewebe im Anschnitt erfasst — perineurale Infiltration nicht beurteilbar."

// ----------------------------------------------------------------------------
// Intraoperativ: endgueltige Typisierung erst am Paraffinmaterial
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patho-intraop-grouper-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-intraoperative-grouper
Usage: #example
Title: "Intraoperative Befunde Grouper - Typisierung am Schnellschnitt offen"
Description: "Intraoperativ-Grouper mit Komponente ohne Wert: histologischer Typ am Schnellschnitt noch nicht klassifizierbar (component.dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #preliminary
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#83321-0
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-15T11:20:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* identifier.system = "https://www.charite.de/fhir/sid/patho/befund"
* identifier.value = "E_24_001_INTRAOP_DAR"
* method = $sct#20135006 "Frozen section procedure (procedure)"
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-03-part)
* bodySite = $sct#41216001 "Prostate"
* component.code = $sct#371441004 "Histologic type"
* component.dataAbsentReason = $data-absent-reason#temp-unknown "Temporarily Unknown"
* note.text = "Gefrierartefakte — histologische Typisierung erst am Paraffinmaterial moeglich."

// ----------------------------------------------------------------------------
// Diagnostische Schlussfolgerung: Gesamttumorlaenge nicht ermittelbar
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patho-conclusion-grouper-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper
Usage: #example
Title: "Diagnostic Conclusion Grouper - Gesamttumorlaenge nicht ermittelbar"
Description: "Conclusion-Grouper mit Komponente ohne Wert: Gesamttumorlaenge wegen fragmentierter Stanze nicht ermittelbar (component.dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22637-3
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* identifier.system = "https://www.charite.de/fhir/sid/patho/befund"
* identifier.value = "E_24_001_CONCLUSION_DAR"
* method = $sct#104157003 "Light microscopy (procedure)"
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-03-slide)
* bodySite = $sct#41216001 "Prostate"
* component.code = $loinc#44618-7 "Total linear mm of carcinoma"
* component.dataAbsentReason = $data-absent-reason#unknown "Unknown"
* note.text = "Tumorbefall auf mehrere Fragmente verteilt — lineare Gesamtausdehnung nicht ermittelbar."

// ----------------------------------------------------------------------------
// Zusatzbefunde: weiterfuehrende Immunhistochemie nicht durchgefuehrt
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patho-zusatz-grouper-dar-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-additional-specified-grouper
Usage: #example
Title: "Zusaetzliche Beobachtungen Grouper - Immunhistochemie nicht durchgefuehrt"
Description: "Zusatzbefund-Grouper mit Komponente ohne Wert: weiterfuehrende Immunhistochemie am erschoepften Block nicht durchgefuehrt (component.dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#100969-5
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-18T09:30:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* identifier.system = "https://www.charite.de/fhir/sid/patho/befund"
* identifier.value = "E_24_001_ZUSATZ_DAR"
* method = $sct#117617002 "Immunohistochemistry procedure (procedure)"
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-03-slide)
* bodySite = $sct#41216001 "Prostate"
* component.code = $loinc#101548-6
* component.dataAbsentReason = $data-absent-reason#not-performed "Not Performed"
* note.text = "Paraffinblock erschoepft — weiterfuehrende Immunhistochemie nicht mehr durchfuehrbar."
