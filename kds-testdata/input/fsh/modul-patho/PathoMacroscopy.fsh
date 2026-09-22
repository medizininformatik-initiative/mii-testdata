// =============================================================================
// MAKROSKOPISCHE BEFUNDE GROUPER - PROSTATA STANZEN
// =============================================================================

// Grouper für makroskopische Messungen nach MII-Patho-Befund
Instance: mii-exa-test-data-patho-macro-grouper-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper
Usage: #example
Title: "Makroskopische Befunde Grouper"
Description: "Gruppierung der makroskopischen Messungen beider Prostatastanzen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22634-0
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-15T14:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "Makroskopische Messungen beider Prostatastanzen"
* bodySite = $sct#41216001 "Prostate"

// Referenzen zu allen Längenmessungen
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-03)

// Referenzen zu allen Zylinder-Anzahl Findings
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-03)

// Referenzen zu allen Seitenangabe Findings
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-03)

// =============================================================================
// MAKROSKOPISCHE MESSUNGEN - PROSTATA STANZEN
// Separate Findings für Länge und Anzahl der Zylinder pro Einsendespecimen
// =============================================================================

// =============================================================================
// STANZE 01 - MESSUNGEN
// =============================================================================

// Längen-Finding für Stanze 01
Instance: mii-exa-test-data-patho-macroscopic-length-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makroskopische Länge Stanze 01"
Description: "Längenmessung der Prostatastanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-01-part)
* effectiveDateTime = "2024-01-15T14:10:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1.8 'cm' "cm"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* note.text = "Stanzzylinder Gesamtlänge 1.8cm"

// Zylinder-Anzahl-Finding für Stanze 01
Instance: mii-exa-test-data-patho-macroscopic-cylinder-count-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Zylinder Stanze 01"
Description: "Anzahl der Stanzzylinder in Specimen 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-01-part)
* effectiveDateTime = "2024-01-15T14:10:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1 '{count}' "count"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* note.text = "Ein intakter Stanzzylinder"

// =============================================================================
// STANZE 03 - MESSUNGEN
// =============================================================================

// Längen-Finding für Stanze 03
Instance: mii-exa-test-data-patho-macroscopic-length-03
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makroskopische Länge Stanze 03"
Description: "Längenmessung der Prostatastanze 03"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-03-part)
* effectiveDateTime = "2024-01-15T14:14:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1.5 'cm' "cm"
* bodySite = $sct#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
* note.text = "Stanzzylinder Gesamtlänge 1.5cm"

// Zylinder-Anzahl-Finding für Stanze 03
Instance: mii-exa-test-data-patho-macroscopic-cylinder-count-03
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Zylinder Stanze 03"
Description: "Anzahl der Stanzzylinder in Specimen 03"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-03-part)
* effectiveDateTime = "2024-01-15T14:14:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1 '{count}' "count"
* bodySite = $sct#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
* note.text = "Ein intakter Stanzzylinder"

// =============================================================================
// MAKROSKOPISCHE SEITENANGABEN - PROSTATA STANZEN
// Laterality Findings für alle 12 Einsendespecimen
// =============================================================================

// =============================================================================
// RECHTE SEITE - STANZEN 01-06
// =============================================================================

// Seitenangabe für Stanze 01 (Rechts)
Instance: mii-exa-test-data-patho-macroscopic-laterality-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe Stanze 01"
Description: "Lateralitätsangabe der Prostatastanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#20228-3 "Anatomic part Laterality"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-01-part)
* effectiveDateTime = "2024-01-15T14:05:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#24028007 "Right (qualifier value)"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* note.text = "Rechte Prostataregion"

// Seitenangabe für Stanze 03 (Rechts)
Instance: mii-exa-test-data-patho-macroscopic-laterality-03
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe Stanze 03"
Description: "Lateralitätsangabe der Prostatastanze 03"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#20228-3 "Anatomic part Laterality"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-03-part)
* effectiveDateTime = "2024-01-15T14:05:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#24028007 "Right (qualifier value)"
* bodySite = $sct#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
* note.text = "Rechte Prostataregion"