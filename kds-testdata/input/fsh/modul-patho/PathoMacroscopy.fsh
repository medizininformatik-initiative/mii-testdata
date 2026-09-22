// =============================================================================
// MAKROSKOPISCHE BEFUNDE GROUPER - PROSTATA STANZEN
// =============================================================================

// Grouper für makroskopische Messungen nach MII-Patho-Befund
Instance: mii-exa-test-data-patho-macro-grouper-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper
Usage: #example
Title: "Makroskopische Befunde Grouper"
Description: "Gruppierung aller makroskopischen Messungen der Prostatastanzen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22634-0
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-15T14:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "Makroskopische Messungen aller 12 Prostatastanzen"
* bodySite = $sct#41216001 "Prostate"

// Referenzen zu allen Längenmessungen
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-02)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-03)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-04)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-05)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-06)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-07)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-08)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-09)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-10)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-11)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-length-12)

// Referenzen zu allen Zylinder-Anzahl Findings
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-02)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-03)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-04)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-05)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-06)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-07)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-08)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-09)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-10)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-11)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-cylinder-count-12)

// Referenzen zu allen Seitenangabe Findings
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-02)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-03)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-04)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-05)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-06)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-07)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-08)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-09)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-10)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-11)
* hasMember[+] = Reference(mii-exa-test-data-patho-macroscopic-laterality-12)

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
// STANZE 02 - MESSUNGEN
// =============================================================================

// Längen-Finding für Stanze 02
Instance: mii-exa-test-data-patho-macroscopic-length-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makroskopische Länge Stanze 02"
Description: "Längenmessung der Prostatastanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-02-part)
* effectiveDateTime = "2024-01-15T14:12:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1.6 'cm' "cm"
* bodySite = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* note.text = "Stanzzylinder Gesamtlänge 1.6cm"

// Zylinder-Anzahl-Finding für Stanze 02
Instance: mii-exa-test-data-patho-macroscopic-cylinder-count-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Zylinder Stanze 02"
Description: "Anzahl der Stanzzylinder in Specimen 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-02-part)
* effectiveDateTime = "2024-01-15T14:12:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1 '{count}' "count"
* bodySite = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
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
// STANZE 04 - MESSUNGEN
// =============================================================================

// Längen-Finding für Stanze 04
Instance: mii-exa-test-data-patho-macroscopic-length-04
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makroskopische Länge Stanze 04"
Description: "Längenmessung der Prostatastanze 04"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-04-part)
* effectiveDateTime = "2024-01-15T14:16:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1.9 'cm' "cm"
* bodySite = $sct#716892006 "Structure of basal part of anterior fibromuscular stroma of right half prostate (body structure)"
* note.text = "Stanzzylinder Gesamtlänge 1.9cm"

// Zylinder-Anzahl-Finding für Stanze 04
Instance: mii-exa-test-data-patho-macroscopic-cylinder-count-04
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Zylinder Stanze 04"
Description: "Anzahl der Stanzzylinder in Specimen 04"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-04-part)
* effectiveDateTime = "2024-01-15T14:16:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1 '{count}' "count"
* bodySite = $sct#716892006 "Structure of basal part of anterior fibromuscular stroma of right half prostate (body structure)"
* note.text = "Ein intakter Stanzzylinder"

// =============================================================================
// STANZE 05 - MESSUNGEN
// =============================================================================

// Längen-Finding für Stanze 05
Instance: mii-exa-test-data-patho-macroscopic-length-05
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makroskopische Länge Stanze 05"
Description: "Längenmessung der Prostatastanze 05"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-05-part)
* effectiveDateTime = "2024-01-15T14:18:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1.4 'cm' "cm"
* bodySite = $sct#716911004 "Structure of middle regional part of transition zone of right half prostate (body structure)"
* note.text = "Stanzzylinder Gesamtlänge 1.4cm"

// Zylinder-Anzahl-Finding für Stanze 05
Instance: mii-exa-test-data-patho-macroscopic-cylinder-count-05
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Zylinder Stanze 05"
Description: "Anzahl der Stanzzylinder in Specimen 05"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-05-part)
* effectiveDateTime = "2024-01-15T14:18:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1 '{count}' "count"
* bodySite = $sct#716911004 "Structure of middle regional part of transition zone of right half prostate (body structure)"
* note.text = "Ein intakter Stanzzylinder"

// =============================================================================
// STANZE 06 - MESSUNGEN
// =============================================================================

// Längen-Finding für Stanze 06
Instance: mii-exa-test-data-patho-macroscopic-length-06
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makroskopische Länge Stanze 06"
Description: "Längenmessung der Prostatastanze 06"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-06-part)
* effectiveDateTime = "2024-01-15T14:20:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1.7 'cm' "cm"
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* note.text = "Stanzzylinder Gesamtlänge 1.7cm"

// Zylinder-Anzahl-Finding für Stanze 06
Instance: mii-exa-test-data-patho-macroscopic-cylinder-count-06
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Zylinder Stanze 06"
Description: "Anzahl der Stanzzylinder in Specimen 06"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-06-part)
* effectiveDateTime = "2024-01-15T14:20:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1 '{count}' "count"
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* note.text = "Ein intakter Stanzzylinder"

// =============================================================================
// STANZE 07 - MESSUNGEN
// =============================================================================

// Längen-Finding für Stanze 07
Instance: mii-exa-test-data-patho-macroscopic-length-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makroskopische Länge Stanze 07"
Description: "Längenmessung der Prostatastanze 07"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-07-part)
* effectiveDateTime = "2024-01-15T14:22:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1.6 'cm' "cm"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* note.text = "Stanzzylinder Gesamtlänge 1.6cm"

// Zylinder-Anzahl-Finding für Stanze 07
Instance: mii-exa-test-data-patho-macroscopic-cylinder-count-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Zylinder Stanze 07"
Description: "Anzahl der Stanzzylinder in Specimen 07"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-07-part)
* effectiveDateTime = "2024-01-15T14:22:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1 '{count}' "count"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* note.text = "Ein intakter Stanzzylinder"

// =============================================================================
// STANZE 08 - MESSUNGEN
// =============================================================================

// Längen-Finding für Stanze 08
Instance: mii-exa-test-data-patho-macroscopic-length-08
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makroskopische Länge Stanze 08"
Description: "Längenmessung der Prostatastanze 08"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-08-part)
* effectiveDateTime = "2024-01-15T14:24:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1.5 'cm' "cm"
* bodySite = $sct#716918005 "Structure of lateral middle regional part of peripheral zone of left half prostate (body structure)"
* note.text = "Stanzzylinder Gesamtlänge 1.5cm"

// Zylinder-Anzahl-Finding für Stanze 08
Instance: mii-exa-test-data-patho-macroscopic-cylinder-count-08
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Zylinder Stanze 08"
Description: "Anzahl der Stanzzylinder in Specimen 08"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-08-part)
* effectiveDateTime = "2024-01-15T14:24:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1 '{count}' "count"
* bodySite = $sct#716918005 "Structure of lateral middle regional part of peripheral zone of left half prostate (body structure)"
* note.text = "Ein intakter Stanzzylinder"

// =============================================================================
// STANZE 09 - MESSUNGEN
// =============================================================================

// Längen-Finding für Stanze 09
Instance: mii-exa-test-data-patho-macroscopic-length-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makroskopische Länge Stanze 09"
Description: "Längenmessung der Prostatastanze 09"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-09-part)
* effectiveDateTime = "2024-01-15T14:26:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1.8 'cm' "cm"
* bodySite = $sct#716935009 "Left apical peripheral zone of prostate"
* note.text = "Stanzzylinder Gesamtlänge 1.8cm"

// Zylinder-Anzahl-Finding für Stanze 09
Instance: mii-exa-test-data-patho-macroscopic-cylinder-count-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Zylinder Stanze 09"
Description: "Anzahl der Stanzzylinder in Specimen 09"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-09-part)
* effectiveDateTime = "2024-01-15T14:26:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1 '{count}' "count"
* bodySite = $sct#716935009 "Left apical peripheral zone of prostate"
* note.text = "Ein intakter Stanzzylinder"

// =============================================================================
// STANZE 10 - MESSUNGEN
// =============================================================================

// Längen-Finding für Stanze 10
Instance: mii-exa-test-data-patho-macroscopic-length-10
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makroskopische Länge Stanze 10"
Description: "Längenmessung der Prostatastanze 10"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-10-part)
* effectiveDateTime = "2024-01-15T14:28:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1.3 'cm' "cm"
* bodySite = $sct#716893001 "Structure of basal part of anterior fibromuscular stroma of left half prostate (body structure)"
* note.text = "Stanzzylinder Gesamtlänge 1.3cm"

// Zylinder-Anzahl-Finding für Stanze 10
Instance: mii-exa-test-data-patho-macroscopic-cylinder-count-10
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Zylinder Stanze 10"
Description: "Anzahl der Stanzzylinder in Specimen 10"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-10-part)
* effectiveDateTime = "2024-01-15T14:28:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1 '{count}' "count"
* bodySite = $sct#716893001 "Structure of basal part of anterior fibromuscular stroma of left half prostate (body structure)"
* note.text = "Ein intakter Stanzzylinder"

// =============================================================================
// STANZE 11 - MESSUNGEN
// =============================================================================

// Längen-Finding für Stanze 11
Instance: mii-exa-test-data-patho-macroscopic-length-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makroskopische Länge Stanze 11"
Description: "Längenmessung der Prostatastanze 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-11-part)
* effectiveDateTime = "2024-01-15T14:30:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1.7 'cm' "cm"
* bodySite = $sct#716912006 "Structure of middle regional part of transition zone of left half prostate (body structure)"
* note.text = "Stanzzylinder Gesamtlänge 1.7cm"

// Zylinder-Anzahl-Finding für Stanze 11
Instance: mii-exa-test-data-patho-macroscopic-cylinder-count-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Zylinder Stanze 11"
Description: "Anzahl der Stanzzylinder in Specimen 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-11-part)
* effectiveDateTime = "2024-01-15T14:30:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1 '{count}' "count"
* bodySite = $sct#716912006 "Structure of middle regional part of transition zone of left half prostate (body structure)"
* note.text = "Ein intakter Stanzzylinder"

// =============================================================================
// STANZE 12 - MESSUNGEN
// =============================================================================

// Längen-Finding für Stanze 12
Instance: mii-exa-test-data-patho-macroscopic-length-12
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makroskopische Länge Stanze 12"
Description: "Längenmessung der Prostatastanze 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-12-part)
* effectiveDateTime = "2024-01-15T14:32:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1.4 'cm' "cm"
* bodySite = $sct#716910003 "Structure of middle regional part of anterior fibromuscular stroma of left half prostate (body structure)"
* note.text = "Stanzzylinder Gesamtlänge 1.4cm"

// Zylinder-Anzahl-Finding für Stanze 12
Instance: mii-exa-test-data-patho-macroscopic-cylinder-count-12
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Zylinder Stanze 12"
Description: "Anzahl der Stanzzylinder in Specimen 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-12-part)
* effectiveDateTime = "2024-01-15T14:32:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 1 '{count}' "count"
* bodySite = $sct#716910003 "Structure of middle regional part of anterior fibromuscular stroma of left half prostate (body structure)"
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

// Seitenangabe für Stanze 02 (Rechts)
Instance: mii-exa-test-data-patho-macroscopic-laterality-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe Stanze 02"
Description: "Lateralitätsangabe der Prostatastanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#20228-3 "Anatomic part Laterality"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-02-part)
* effectiveDateTime = "2024-01-15T14:05:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#24028007 "Right (qualifier value)"
* bodySite = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
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

// Seitenangabe für Stanze 04 (Rechts)
Instance: mii-exa-test-data-patho-macroscopic-laterality-04
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe Stanze 04"
Description: "Lateralitätsangabe der Prostatastanze 04"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#20228-3 "Anatomic part Laterality"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-04-part)
* effectiveDateTime = "2024-01-15T14:05:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#24028007 "Right (qualifier value)"
* bodySite = $sct#716892006 "Structure of basal part of anterior fibromuscular stroma of right half prostate (body structure)"
* note.text = "Rechte Prostataregion"

// Seitenangabe für Stanze 05 (Rechts)
Instance: mii-exa-test-data-patho-macroscopic-laterality-05
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe Stanze 05"
Description: "Lateralitätsangabe der Prostatastanze 05"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#20228-3 "Anatomic part Laterality"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-05-part)
* effectiveDateTime = "2024-01-15T14:05:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#24028007 "Right (qualifier value)"
* bodySite = $sct#716911004 "Structure of middle regional part of transition zone of right half prostate (body structure)"
* note.text = "Rechte Prostataregion"

// Seitenangabe für Stanze 06 (Rechts)
Instance: mii-exa-test-data-patho-macroscopic-laterality-06
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe Stanze 06"
Description: "Lateralitätsangabe der Prostatastanze 06"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#20228-3 "Anatomic part Laterality"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-06-part)
* effectiveDateTime = "2024-01-15T14:05:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#24028007 "Right (qualifier value)"
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* note.text = "Rechte Prostataregion"

// =============================================================================
// LINKE SEITE - STANZEN 07-12
// =============================================================================

// Seitenangabe für Stanze 07 (Links)
Instance: mii-exa-test-data-patho-macroscopic-laterality-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe Stanze 07"
Description: "Lateralitätsangabe der Prostatastanze 07"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#20228-3 "Anatomic part Laterality"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-07-part)
* effectiveDateTime = "2024-01-15T14:05:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* note.text = "Linke Prostataregion"

// Seitenangabe für Stanze 08 (Links)
Instance: mii-exa-test-data-patho-macroscopic-laterality-08
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe Stanze 08"
Description: "Lateralitätsangabe der Prostatastanze 08"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#20228-3 "Anatomic part Laterality"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-08-part)
* effectiveDateTime = "2024-01-15T14:05:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
* bodySite = $sct#716918005 "Structure of lateral middle regional part of peripheral zone of left half prostate (body structure)"
* note.text = "Linke Prostataregion"

// Seitenangabe für Stanze 09 (Links)
Instance: mii-exa-test-data-patho-macroscopic-laterality-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe Stanze 09"
Description: "Lateralitätsangabe der Prostatastanze 09"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#20228-3 "Anatomic part Laterality"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-09-part)
* effectiveDateTime = "2024-01-15T14:05:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
* bodySite = $sct#716935009 "Left apical peripheral zone of prostate"
* note.text = "Linke Prostataregion"

// Seitenangabe für Stanze 10 (Links)
Instance: mii-exa-test-data-patho-macroscopic-laterality-10
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe Stanze 10"
Description: "Lateralitätsangabe der Prostatastanze 10"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#20228-3 "Anatomic part Laterality"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-10-part)
* effectiveDateTime = "2024-01-15T14:05:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
* bodySite = $sct#716893001 "Structure of basal part of anterior fibromuscular stroma of left half prostate (body structure)"
* note.text = "Linke Prostataregion"

// Seitenangabe für Stanze 11 (Links)
Instance: mii-exa-test-data-patho-macroscopic-laterality-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe Stanze 11"
Description: "Lateralitätsangabe der Prostatastanze 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#20228-3 "Anatomic part Laterality"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-11-part)
* effectiveDateTime = "2024-01-15T14:05:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
* bodySite = $sct#716912006 "Structure of middle regional part of transition zone of left half prostate (body structure)"
* note.text = "Linke Prostataregion"

// Seitenangabe für Stanze 12 (Links)
Instance: mii-exa-test-data-patho-macroscopic-laterality-12
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe Stanze 12"
Description: "Lateralitätsangabe der Prostatastanze 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#20228-3 "Anatomic part Laterality"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-12-part)
* effectiveDateTime = "2024-01-15T14:05:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
* bodySite = $sct#716910003 "Structure of middle regional part of anterior fibromuscular stroma of left half prostate (body structure)"
* note.text = "Linke Prostataregion"