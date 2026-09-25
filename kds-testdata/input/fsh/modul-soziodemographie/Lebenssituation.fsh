// ============================================================================
// MII Soziodemographie - Lebenssituation
// Profile der abstrakten Basis mii-pr-sdd-lebenssituation:
// Geburtsland Mutter/Vater, Partnerschaft, Vertrauensperson, Haushaltsgroesse,
// Betreuungssituation, Schwerbehindertenausweis.
// (mii-pr-sdd-lebenssituation selbst ist abstract und kann nicht
// instanziiert werden.)
// ============================================================================

// Geburtsland der Mutter (LOINC 63515-1)
Instance: mii-exa-test-data-soziodemographie-geburtsland-mutter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-geburtsland-mutter
Usage: #example
Description: "Soziodemographie: Geburtsland der Mutter (Polen)"
* insert SddObservationBase
* code.coding = $loinc#63515-1
* code.text = "Geburtsland der Mutter"
* valueCodeableConcept.coding = $iso3166#PL
* valueCodeableConcept.text = "Polen"

// Geburtsland des Vaters (LOINC 63492-3)
Instance: mii-exa-test-data-soziodemographie-geburtsland-vater-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-geburtsland-vater
Usage: #example
Description: "Soziodemographie: Geburtsland des Vaters (Deutschland)"
* insert SddObservationBase
* code.coding = $loinc#63492-3
* code.text = "Geburtsland des Vaters"
* valueCodeableConcept.coding = $iso3166#DE
* valueCodeableConcept.text = "Deutschland"

// Aktuelle Partnerschaft (SNOMED 224083004)
Instance: mii-exa-test-data-soziodemographie-partnerschaft-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-partnerschaft
Usage: #example
Description: "Soziodemographie: Aktuelle Partnerschaft vorhanden"
* insert SddObservationBase
* code.coding = $sct#224083004
* code.text = "Aktuelle Partnerschaft"
* valueCodeableConcept.coding = $v2-0136#Y "Yes"
* valueCodeableConcept.text = "Ja, verheiratet"

// Vertrauensperson (SNOMED 445091000124106)
Instance: mii-exa-test-data-soziodemographie-vertrauensperson-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-vertrauensperson
Usage: #example
Description: "Soziodemographie: Vertrauensperson vorhanden"
* insert SddObservationBase
* code.coding = $sct#445091000124106
* code.text = "Vertrauensperson vorhanden"
* valueCodeableConcept.coding = $v2-0136#Y "Yes"
* valueCodeableConcept.text = "Ja, der Ehemann"

// Haushaltsgroesse (LOINC 86639-2)
Instance: mii-exa-test-data-soziodemographie-haushaltsgroesse-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-haushaltsgroesse
Usage: #example
Description: "Soziodemographie: Haushaltsgroesse 2 Personen"
* insert SddObservationBase
* code.coding = $loinc#86639-2
* code.text = "Haushaltsgroesse"
* valueQuantity = 2 '1' "Personen"

// Betreuungssituation (SNOMED 305060004)
Instance: mii-exa-test-data-soziodemographie-betreuungssituation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-betreuungssituation
Usage: #example
Description: "Soziodemographie: Betreuung auf Anfrage (Hausnotruf)"
* insert SddObservationBase
* code.coding = $sct#305060004
* code.text = "Betreuungssituation"
* valueCodeableConcept.coding = $sdd-cs-betreuungssituation#2 "Betreuung auf Anfrage (z. B. betreutes Wohnen, Hausnotruf) "
* valueCodeableConcept.text = "Betreuung auf Anfrage, Hausnotruf vorhanden"

// Schwerbehindertenausweis (LOINC 101720-1) mit GdB, Merkzeichen, Gueltigkeit
Instance: mii-exa-test-data-soziodemographie-schwerbehindertenausweis-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schwerbehindertenausweis
Usage: #example
Description: "Soziodemographie: Schwerbehindertenausweis mit GdB 60 und Merkzeichen G"
* insert SddObservationBase
* code.coding = $loinc#101720-1
* code.text = "Schwerbehindertenausweis vorhanden"
// Doppeltes Coding noetig: das Profil bindet value required an das
// v2-0136-ValueSet, die Invariante sba-1 verlangt aber v2-0532#Y —
// Upstream-Widerspruch, gemeldet am Modul-Repo.
* valueCodeableConcept.coding[0] = $v2-0136#Y "Yes"
* valueCodeableConcept.coding[+] = $v2-0532#Y "Yes"
* component[gradDerBehinderung].valueQuantity = 60 '%' "%"
* component[merkzeichen].valueCodeableConcept = $sdd-cs-merkzeichen#G "G – erhebliche Gehbehinderung"
* component[gueltigVon].valueDateTime = "2022-08-01"
* component[gueltigBis].valueDateTime = "2027-07-31"

// dataAbsentReason-Variante: Frage nach Schwerbehindertenausweis nicht beantwortet.
// Nur hier moeglich: bei mii-pr-sdd-betreuungssituation, -haushaltsgroesse,
// -partnerschaft und -vertrauensperson ist value[x] auf 1..1 gesetzt, waehrend
// dataAbsentReason als MS gefuehrt wird. obs-6 ("dataAbsentReason SHALL only be
// present if value[x] is not present") macht eine DAR-Instanz dort strukturell
// unmoeglich — der MS-Knoten bleibt in diesen vier Profilen offen.
// Upstream-Widerspruch, Kandidat fuer Ballot-Feedback (Fix: value[x] auf 0..1).
Instance: mii-exa-test-data-soziodemographie-schwerbehindertenausweis-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schwerbehindertenausweis
Usage: #example
Description: "Soziodemographie: Schwerbehindertenausweis erfragt, keine Angabe (dataAbsentReason)"
* insert SddObservationBase
* code.coding = $loinc#101720-1
* code.text = "Schwerbehindertenausweis vorhanden"
* dataAbsentReason = $data-absent-reason#asked-declined "Asked But Declined"

// Nein-Zweig der Invariante sba-1: kein Ausweis, daher KEINE components erlaubt.
Instance: mii-exa-test-data-soziodemographie-schwerbehindertenausweis-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schwerbehindertenausweis
Usage: #example
Description: "Soziodemographie: kein Schwerbehindertenausweis vorhanden (Nein-Zweig sba-1)"
* insert SddObservationBase
* code.coding = $loinc#101720-1
* code.text = "Schwerbehindertenausweis vorhanden"
* valueCodeableConcept.coding = $v2-0136#N "No"
