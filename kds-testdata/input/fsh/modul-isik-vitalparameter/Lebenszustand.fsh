// ============================================================================
// ISiK Vitalparameter Test Data - LebensZustand-Familie (ISiK 6.0.0)
// Deckt die konkreten Ableitungen des ABSTRAKTEN Basisprofils ISiKLebensZustand
// ab: AlkoholAbusus, Schwangerschaftsstatus, ErwarteterEntbindungstermin,
// Stillstatus. ISiKRaucherStatus ist bereits ueber modul-kardiologie
// (Raucherstatus-Instanz) abgedeckt und wird hier NICHT dupliziert.
// Alle Instanzen: Anamnese bei Aufnahme am 2026-05-11 (Encounter-1).
// ============================================================================

// Gemeinsames Geruest der LebensZustand-Instanzen
RuleSet: IsikLebenszustandBase(time)
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#social-history
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "{time}"
* performer.display = "Dienstarzt Notaufnahme"

// Alkoholabusus: verneint (v2-0532 required-Binding yes-no-unknown-not-asked)
Instance: mii-exa-test-data-isik-vitalparameter-alkoholabusus-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKAlkoholAbusus
Usage: #example
Description: "ISiK AlkoholAbusus: verneint (Aufnahmeanamnese)"
* insert IsikLebenszustandBase(2026-05-11T18:15:00+02:00)
* code.coding[loinc] = $loinc#74043-1 "Alcohol use disorder"
* code.coding[snomed-ct] = $sct#15167005 "Alcohol abuse (disorder)"
* valueCodeableConcept = $v2-0532#N "No"

// Schwangerschaftsstatus: nicht schwanger
Instance: mii-exa-test-data-isik-vitalparameter-schwangerschaft-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKSchwangerschaftsstatus
Usage: #example
Description: "ISiK Schwangerschaftsstatus: nicht schwanger (Aufnahmeanamnese)"
* insert IsikLebenszustandBase(2026-05-11T18:15:00+02:00)
* code.coding[loinc] = $loinc#82810-3 "Pregnancy status"
* valueCodeableConcept = $loinc#LA26683-5 "Not pregnant"

// Erwarteter Entbindungstermin: rein technische Instanz (Methode: klinisch
// geschaetzt); im Bundle bewusst OHNE hasMember-Verknuepfung zum
// Schwangerschaftsstatus (dieser ist "nicht schwanger", s. Research-Doku).
Instance: mii-exa-test-data-isik-vitalparameter-entbindungstermin-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKSchwangerschaftErwarteterEntbindungstermin
Usage: #example
Description: "ISiK Erwarteter Entbindungstermin: 2026-11-20 (geschaetzt, technische Instanz)"
* insert IsikLebenszustandBase(2026-05-11T18:15:00+02:00)
* code.coding[loinc] = $loinc#11778-8 "Delivery date Estimated"
* valueDateTime = "2026-11-20"

// Stillstatus: stillt derzeit nicht
Instance: mii-exa-test-data-isik-vitalparameter-stillstatus-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKStillstatus
Usage: #example
Description: "ISiK Stillstatus: stillt derzeit nicht (Aufnahmeanamnese)"
* insert IsikLebenszustandBase(2026-05-11T18:15:00+02:00)
* code.coding[loinc] = $loinc#63895-7 "Breastfeeding status"
* code.coding[snomed-ct] = $sct#413712001 "Breastfeeding (mother) (finding)"
* valueCodeableConcept = $loinc#LA29253-4 "Not currently breastfeeding"
