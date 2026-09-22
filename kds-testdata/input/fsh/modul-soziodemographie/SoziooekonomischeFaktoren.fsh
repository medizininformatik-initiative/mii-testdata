// ============================================================================
// MII Soziodemographie - Soziooekonomische Faktoren
// Basisprofil mii-pr-sdd-soziooekonomische-faktoren (nicht abstrakt) sowie
// die abgeleiteten Profile Ausbildung, Beschaeftigungsstatus, Berufliche
// Stellung, Einkommen, Schulabschluss, Schuljahre.
// Beschaeftigungsstatus und Berufliche Stellung besitzen je zwei alternative
// Coding-Slices (lang/minimal) bei value.coding 1..1 - daher je eine zweite
// Instanz zur MS-Abdeckung des minimal-Slices.
// ============================================================================

// Generischer soziooekonomischer Faktor (Basisprofil)
Instance: mii-exa-test-data-soziodemographie-soziooekonomische-faktoren-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-soziooekonomische-faktoren
Usage: #example
Description: "Soziodemographie: Soziooekonomischer Faktor (generisch)"
* insert SddObservationBase
* code.coding = $sct#302147001 "Demographic history detail"
* code.text = "Soziooekonomischer Faktor"

// Hoechster beruflicher Ausbildungsabschluss (LOINC 82589-3)
Instance: mii-exa-test-data-soziodemographie-ausbildung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-ausbildung
Usage: #example
Description: "Soziodemographie: Berufsausbildung Lehre"
* insert SddObservationBase
* code.coding = $loinc#82589-3
* code.text = "Hoechster beruflicher Ausbildungsabschluss"
* valueCodeableConcept.coding = $sdd-cs-ausbildung#3 "Lehre (beruflich-betriebliche Berufsausbildung)"
* valueCodeableConcept.text = "Abgeschlossene Lehre als Industriekauffrau"

// Beschaeftigungsstatus (LOINC 67875-5) - lang-Slice
Instance: mii-exa-test-data-soziodemographie-beschaeftigungsstatus-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-beschaeftigungsstatus
Usage: #example
Description: "Soziodemographie: Beschaeftigungsstatus Rentnerin (lang-Slice)"
* insert SddObservationBase
* code.coding = $loinc#67875-5
* code.text = "Beschaeftigungsstatus"
* valueCodeableConcept.coding[lang] = $sdd-cs-beschaeftigungsstatus-lang#7 "Rentner:in, Pensionär:in"
* valueCodeableConcept.text = "Rentnerin"

// Beschaeftigungsstatus (LOINC 67875-5) - minimal-Slice
Instance: mii-exa-test-data-soziodemographie-beschaeftigungsstatus-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-beschaeftigungsstatus
Usage: #example
Description: "Soziodemographie: Beschaeftigungsstatus Rente (minimal-Slice)"
* insert SddObservationBase
* code.coding = $loinc#67875-5
* code.text = "Beschaeftigungsstatus"
* valueCodeableConcept.coding[minimal] = $sdd-cs-beschaeftigungsstatus-minimal#3 "Rente, Hausfrau/-mann, etc."
* valueCodeableConcept.text = "Rente"

// Berufliche Stellung (LOINC 67875-5) - lang-Slice
Instance: mii-exa-test-data-soziodemographie-berufliche-stellung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-berufliche-stellung
Usage: #example
Description: "Soziodemographie: Berufliche Stellung Angestellte (lang-Slice)"
* insert SddObservationBase
* code.coding = $loinc#67875-5
* code.text = "Berufliche Stellung"
* valueCodeableConcept.coding[lang] = $sdd-cs-berufliche-stellung-lang#5 "Angestellte:r (Angestellte sind Beschäftigte mit überwiegend geistiger Arbeit/Bürotätigkeiten)"
* valueCodeableConcept.text = "Zuletzt Angestellte"

// Berufliche Stellung (LOINC 67875-5) - minimal-Slice
Instance: mii-exa-test-data-soziodemographie-berufliche-stellung-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-berufliche-stellung
Usage: #example
Description: "Soziodemographie: Berufliche Stellung Angestellte (minimal-Slice)"
* insert SddObservationBase
* code.coding = $loinc#67875-5
* code.text = "Berufliche Stellung"
* valueCodeableConcept.coding[minimal] = $sdd-cs-berufliche-stellung-minimal#3 "Angestellte"
* valueCodeableConcept.text = "Angestellte"

// Monatliches Nettoeinkommen des Haushalts (LOINC 98161-3)
Instance: mii-exa-test-data-soziodemographie-einkommen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-einkommen
Usage: #example
Description: "Soziodemographie: Haushaltsnettoeinkommen 2.000 bis unter 3.000 Euro"
* insert SddObservationBase
* code.coding = $loinc#98161-3
* code.text = "Monatliches Nettoeinkommen des Haushalts"
* valueCodeableConcept.coding = $sdd-cs-einkommen#2000-3000 "2.000 € - unter 3.000 €"

// Hoechster allgemeinbildender Schulabschluss (SNOMED 276031006)
Instance: mii-exa-test-data-soziodemographie-schulabschluss-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schulabschluss
Usage: #example
Description: "Soziodemographie: Realschulabschluss"
* insert SddObservationBase
* code.coding = $sct#276031006
* code.text = "Hoechster allgemeinbildender Schulabschluss"
* valueCodeableConcept.coding = $sdd-cs-schulabschluss#5 "Realschulabschluss, Mittlere Reife oder vergleichbarer Abschluss"
* valueCodeableConcept.text = "Realschulabschluss"

// Anzahl Schuljahre (LOINC 82590-1)
Instance: mii-exa-test-data-soziodemographie-schuljahre-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schuljahre
Usage: #example
Description: "Soziodemographie: 10 Schuljahre"
* insert SddObservationBase
* code.coding = $loinc#82590-1
* code.text = "Anzahl Schuljahre"
* valueQuantity = 10 '1' "Jahre"
