// ============================================================================
// SZENARIO: Standortübergreifender Onkologie-Patient
// ----------------------------------------------------------------------------
// Eine logische Person (Kim Musterperson, w, *1956-03-14), verknüpft über eine
// gemeinsame gesetzliche Versichertennummer (KVNR, http://fhir.de/sid/gkv/kvid-10),
// erscheint an ZWEI Standorten:
//
//   Standort A – Onkologisches Zentrum (modul-onkologie):
//     Vollständige onkologische Dokumentation. Die Krebserkrankung
//     (Ovarialkarzinom, C56) ist als Onko-Profil
//     MII_PR_Onko_Diagnose_Primaertumor abgelegt -> meta.profile trägt die
//     Onko-Canonical.  Ressource: mii-exa-test-data-onko-diagnose-1
//
//   Standort B – Intensivstation eines anderen Hauses (modul-icu):
//     Aufnahme wegen COVID-19 (U07.1). Dieselbe Krebserkrankung taucht hier
//     NUR als Neben-/Encounter-Diagnose auf: eine schlichte Basis-`Diagnose`
//     (ICD-10 C56), OHNE Onko-meta.profile.
//     Ressource: mii-exa-crossmodul-icu-onko-nebendiagnose (siehe unten)
//
// ZWECK (vgl. docs/canonical-discrimination-analysis):
//   Testfall für die Profil-Diskriminierung. Eine Suche über
//   `_profile=.../mii-pr-onko-diagnose-primaertumor` (TORCH / DIZ-Dashboard)
//   findet den Patienten NUR an Standort A. Eine daten-inhärente Suche
//   (Condition.code = ICD-10 C-Code) findet ihn an BEIDEN Standorten.
// ============================================================================

// ---------------------------------------------------------------------------
// Standort-Organisationen
// ---------------------------------------------------------------------------
Instance: mii-exa-crossmodul-standort-a
InstanceOf: Organization
Usage: #example
Description: "Standort A – Onkologisches Zentrum (führt die onkologische Primärdokumentation)"
* insert TestDataLabel
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier.value = "DIZ-ONKO-A"
* name = "Onkologisches Zentrum Standort A"
* type = $organization-type#prov "Healthcare Provider"

Instance: mii-exa-crossmodul-standort-b
InstanceOf: Organization
Usage: #example
Description: "Standort B – Universitätsklinikum mit Intensivstation (COVID-Versorgung)"
* insert TestDataLabel
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier.value = "DIZ-ICU-B"
* name = "Universitätsklinikum Standort B (Intensivmedizin)"
* type = $organization-type#prov "Healthcare Provider"

// ---------------------------------------------------------------------------
// KERN-RESSOURCE: Onkologie als Neben-/Komorbiditätsdiagnose am ICU-Standort B
// Basis-`Diagnose` (KEIN Onko-Profil). Trägt denselben ICD-10 C-Code (C56) wie
// die Onko-Primärdiagnose an Standort A, ist aber über `meta.profile` NICHT als
// Onko-Ressource erkennbar. Wird vom ICU-Encounter als Komorbidität referenziert.
// ---------------------------------------------------------------------------
Instance: mii-exa-crossmodul-icu-onko-nebendiagnose
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Usage: #example
Description: "Condition: Ovarialkarzinom als onkologische Nebendiagnose des ICU-Falls (Standort B) – Basis-Diagnose ohne Onko-Profil"
* insert TestDataLabel
* insert AddDiagnose(C56, 2024, mii-exa-test-data-icu-patient-1, 2024-05-02, Ovarialkarzinom - vorbekannte onkologische Nebendiagnose - Primaerdokumentation an anderem Standort)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)

// Hinweis: Standort B wird durch das vollständige modul-icu/Bundle.fsh
// abgebildet (COVID-19-Aufnahme, VV-ECMO, Beatmung, Bilanzen). Dieses Bundle
// enthält u.a. den ICU-Patienten, den ICU-Encounter mit COVID-Haupt- und
// Onko-Nebendiagnose (use=CC) sowie die hier definierte Onko-Nebendiagnose.
