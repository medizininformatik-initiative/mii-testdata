Instance: mii-exa-seltene-therapieplan
InstanceOf: MII_PR_Seltene_Therapieplan
Usage: #example
Title: "Therapieplan Example"
Description: "Example of a Therapieplan for a patient."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan)
* status = #draft
* created = 2023-03-28
* description = "Therapieplan für den Patienten"
* subject = Reference(mii-exa-seltene-patient)
* intent = #proposal
* activity[MedikamentoesTherapie].reference = Reference(MedicationRequest/mii-exa-seltene-therapieempfehlung-gentherapie-sma)
* activity[NichtMedikamentoesTherapie].reference = Reference(ServiceRequest/mii-exa-seltene-therapieempfehlung-physiotherapie-sma)
* activity[Studieneinschlussempfehlung].reference = Reference(ServiceRequest/mii-exa-seltene-studieneinschluss-anfrage)
// Ergaenzt 2026-09-03: Der Therapieplan oben verwies auf drei Aktivitaeten,
// von denen zwei auf vorhandene Empfehlungen umgebogen werden konnten. Fuer
// die Studieneinschlussempfehlung gab es keine Instanz — das Profil
// MII_PR_Seltene_Studieneinschluss_Anfrage war ohne Beispiel.

Instance: mii-exa-seltene-studieneinschluss-anfrage
InstanceOf: MII_PR_Seltene_Studieneinschluss_Anfrage
Usage: #example
Title: "Studieneinschlussempfehlung"
Description: "Empfehlung, den Patienten für eine Studie zu evaluieren"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage)
* status = #active
* intent = #proposal
* subject = Reference(mii-exa-seltene-patient)
* authoredOn = "2023-03-28"
* note.text = "Pruefung des Einschlusses in eine laufende Studie zur Gentherapie empfohlen."
