// ============================================================================
// MII Person Module - PatientPseudonymisiert
// Covers: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert
//
// Entscheidung: Eigenstaendiger, pseudonymisierter Patient (KEINE pseudonymisierte
// Kopie eines identifizierenden Testpatienten — das waere konzeptionell
// widerspruechlich, da die identifizierenden Patienten-Instanzen bereits
// Klarnamen tragen). Es referenzieren bewusst keine klinischen Ressourcen
// diesen Patienten; die Instanz wird nur zur Registrierung/Transport im
// Pat-1-Bundle mitgefuehrt (technischer Layer, Profilabdeckung).
// ============================================================================

Instance: mii-exa-test-data-patient-pseudonym-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert
Usage: #example
Description: "Patient (pseudonymisiert): eigenstaendiger Testpatient nur mit Pseudonym, ohne identifizierende Daten"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
// type.coding[pseuded] (PSEUDED) wird von SUSHI aus dem Slice-Pattern automatisch gesetzt
* identifier[PseudonymisierterIdentifier].system = "https://www.charite.de/fhir/sid/pseudonym"
* identifier[PseudonymisierterIdentifier].value = "PSN-TEST-0001"
* gender = #female
* birthDate = "1975"
