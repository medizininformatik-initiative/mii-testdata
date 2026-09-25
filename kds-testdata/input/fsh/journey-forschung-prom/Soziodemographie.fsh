// ============================================================================
// JOURNEY Patient-11 — Modul Soziodemographie
// Baseline-Erhebung zur Studienvisite T0 (2025-02-10), Selbstauskunft.
//
// Das Profil ist bewusst ANDERS gewählt als im Soziodemographie-Modulbundle
// (dort: Realschule / Angestellte / 2.000-3.000 € / Partnerschaft / 2-Personen-
// Haushalt). Hier: alleinlebend, Hauptschulabschluss, Rentnerin, niedriges
// Haushaltseinkommen — die Konstellation, die in Herzinsuffizienz-Kohorten als
// Risikofaktor für Rehospitalisierung untersucht wird. Nur so trägt die
// soziodemographische Erhebung innerhalb der Journey überhaupt Information.
// ============================================================================

RuleSet: JourneySddBase
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[social-history] = $observation-category#social-history
* category[survey] = $observation-category#survey
* subject = Reference(mii-exa-test-data-patient-11)
* effectiveDateTime = "2025-02-10"

// ----------------------------------------------------------------------------
// Klammer-Observation der Erhebung
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-sdd-erhebung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-datenerhebung
Usage: #example
Description: "Soziodemographie: Baseline-Erhebung Patient 11 (Selbstauskunft zur Studienvisite T0)"
* insert JourneySddBase
* identifier.system = "https://www.charite.de/fhir/sid/sdd-erhebung"
* identifier.value = "SDD-ERH-2025-0038"
* code.coding[loinc] = $loinc#45970-1
* code.coding[snomed] = $sct#302147001
* code.text = "Soziodemographische Datenerhebung"
* method = $sdd-cs-erhebungsmethode#selbstauskunft "Selbstangabe"
* hasMember[partnerschaft] = Reference(mii-exa-test-data-patient-11-sdd-partnerschaft-1)
* hasMember[haushaltsgroesse] = Reference(mii-exa-test-data-patient-11-sdd-haushaltsgroesse-1)
* hasMember[schulabschluss] = Reference(mii-exa-test-data-patient-11-sdd-schulabschluss-1)
* hasMember[schuljahre] = Reference(mii-exa-test-data-patient-11-sdd-schuljahre-1)
* hasMember[ausbildung] = Reference(mii-exa-test-data-patient-11-sdd-ausbildung-1)
* hasMember[beschaeftigungsstatus] = Reference(mii-exa-test-data-patient-11-sdd-beschaeftigung-1)
* hasMember[beruflichestellung] = Reference(mii-exa-test-data-patient-11-sdd-stellung-1)
* hasMember[einkommen] = Reference(mii-exa-test-data-patient-11-sdd-einkommen-1)

// ----------------------------------------------------------------------------
// Lebenssituation: alleinlebend ohne Partnerschaft
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-sdd-partnerschaft-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-partnerschaft
Usage: #example
Description: "Soziodemographie: keine aktuelle Partnerschaft (Patient 11)"
* insert JourneySddBase
* code.coding = $sct#224083004
* code.text = "Aktuelle Partnerschaft"
* valueCodeableConcept.coding = $v2-0136#N "No"
* valueCodeableConcept.text = "Nein, verwitwet seit 2021"

Instance: mii-exa-test-data-patient-11-sdd-haushaltsgroesse-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-haushaltsgroesse
Usage: #example
Description: "Soziodemographie: Einpersonenhaushalt (Patient 11)"
* insert JourneySddBase
* code.coding = $loinc#86639-2
* code.text = "Haushaltsgroesse"
* valueQuantity = 1 '1' "Personen"

// ----------------------------------------------------------------------------
// Sozioökonomische Faktoren
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-sdd-schulabschluss-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schulabschluss
Usage: #example
Description: "Soziodemographie: Hauptschulabschluss (Patient 11)"
* insert JourneySddBase
* code.coding = $sct#276031006
* code.text = "Hoechster allgemeinbildender Schulabschluss"
* valueCodeableConcept.coding = $sdd-cs-schulabschluss#3 "Hauptschulabschluss, Volksschulabschluss oder vergleichbarer Abschluss"
* valueCodeableConcept.text = "Hauptschulabschluss"

Instance: mii-exa-test-data-patient-11-sdd-schuljahre-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schuljahre
Usage: #example
Description: "Soziodemographie: 9 Schuljahre (Patient 11)"
* insert JourneySddBase
* code.coding = $loinc#82590-1
* code.text = "Anzahl Schuljahre"
* valueQuantity = 9 '1' "Jahre"

Instance: mii-exa-test-data-patient-11-sdd-ausbildung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-ausbildung
Usage: #example
Description: "Soziodemographie: abgeschlossene Lehre (Patient 11)"
* insert JourneySddBase
* code.coding = $loinc#82589-3
* code.text = "Hoechster beruflicher Ausbildungsabschluss"
* valueCodeableConcept.coding = $sdd-cs-ausbildung#3 "Lehre (beruflich-betriebliche Berufsausbildung)"
* valueCodeableConcept.text = "Abgeschlossene Lehre als Näherin"

Instance: mii-exa-test-data-patient-11-sdd-beschaeftigung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-beschaeftigungsstatus
Usage: #example
Description: "Soziodemographie: Rentnerin (Patient 11)"
* insert JourneySddBase
* code.coding = $loinc#67875-5
* code.text = "Beschaeftigungsstatus"
* valueCodeableConcept.coding[lang] = $sdd-cs-beschaeftigungsstatus-lang#7 "Rentner:in, Pensionär:in"
* valueCodeableConcept.text = "Altersrente seit 2023"

Instance: mii-exa-test-data-patient-11-sdd-stellung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-berufliche-stellung
Usage: #example
Description: "Soziodemographie: zuletzt Arbeiterin (Patient 11)"
* insert JourneySddBase
* code.coding = $loinc#67875-5
* code.text = "Berufliche Stellung"
* valueCodeableConcept.coding[lang] = $sdd-cs-berufliche-stellung-lang#6 "Arbeiter:in (Arbeiter verrichten mehrheitlich körperliche Arbeit)"
* valueCodeableConcept.text = "Zuletzt Arbeiterin in der Textilfertigung"

Instance: mii-exa-test-data-patient-11-sdd-einkommen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-einkommen
Usage: #example
Description: "Soziodemographie: Haushaltsnettoeinkommen 1.000 bis unter 1.500 Euro (Patient 11)"
* insert JourneySddBase
* code.coding = $loinc#98161-3
* code.text = "Monatliches Nettoeinkommen des Haushalts"
* valueCodeableConcept.coding = $sdd-cs-einkommen#1000-1500 "1.000 € - unter 1.500 €"
