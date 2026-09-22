// ============================================================================
// MII Soziodemographie - Datenerhebung (mii-pr-sdd-datenerhebung)
// Klammer-Observation: Erhebungszeitpunkt und -methode; verweist per
// hasMember-Slices auf alle erhobenen Einzel-Observations.
// ============================================================================

Instance: mii-exa-test-data-soziodemographie-datenerhebung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-datenerhebung
Usage: #example
Description: "Soziodemographie: Datenerhebung per Selbstauskunft mit allen Einzel-Observations"
* insert SddObservationBase
* identifier.system = "https://www.charite.de/fhir/sid/sdd-erhebung"
* identifier.value = "SDD-ERH-2025-0001"
* code.coding[loinc] = $loinc#45970-1
* code.coding[snomed] = $sct#302147001
* code.text = "Soziodemographische Datenerhebung"
* method = $sdd-cs-erhebungsmethode#selbstauskunft "Selbstangabe"
* hasMember[geburtslandMutter] = Reference(mii-exa-test-data-soziodemographie-geburtsland-mutter-1)
* hasMember[geburtslandVater] = Reference(mii-exa-test-data-soziodemographie-geburtsland-vater-1)
* hasMember[partnerschaft] = Reference(mii-exa-test-data-soziodemographie-partnerschaft-1)
* hasMember[vertrauensperson] = Reference(mii-exa-test-data-soziodemographie-vertrauensperson-1)
* hasMember[haushaltsgroesse] = Reference(mii-exa-test-data-soziodemographie-haushaltsgroesse-1)
* hasMember[betreuungssituation] = Reference(mii-exa-test-data-soziodemographie-betreuungssituation-1)
* hasMember[schwerbehindertenausweis] = Reference(mii-exa-test-data-soziodemographie-schwerbehindertenausweis-1)
* hasMember[ausbildung] = Reference(mii-exa-test-data-soziodemographie-ausbildung-1)
* hasMember[beschaeftigungsstatus] = Reference(mii-exa-test-data-soziodemographie-beschaeftigungsstatus-1)
* hasMember[einkommen] = Reference(mii-exa-test-data-soziodemographie-einkommen-1)
* hasMember[beruflichestellung] = Reference(mii-exa-test-data-soziodemographie-berufliche-stellung-1)
* hasMember[schulabschluss] = Reference(mii-exa-test-data-soziodemographie-schulabschluss-1)
* hasMember[schuljahre] = Reference(mii-exa-test-data-soziodemographie-schuljahre-1)
