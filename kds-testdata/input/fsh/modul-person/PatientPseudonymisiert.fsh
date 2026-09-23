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
// Maskierter Versicherten-Identifier: Wert maskiert (data-absent-reason),
// Assigner als logische Referenz auf die Krankenkasse (IKNR)
* identifier[MaskierterVersichertenIdentifer].type = $identifier-type-de-basis#KVZ10
* identifier[MaskierterVersichertenIdentifer].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[MaskierterVersichertenIdentifer].value.extension[0].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* identifier[MaskierterVersichertenIdentifer].value.extension[0].valueCode = #masked
* identifier[MaskierterVersichertenIdentifer].assigner.identifier.type = $v2-0203#XX
* identifier[MaskierterVersichertenIdentifer].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* identifier[MaskierterVersichertenIdentifer].assigner.identifier.value = "987654321"
* active = true
* gender = #other
// Extension per Index + explizitem url statt Slice-Name: SUSHI kann das
// Extension-Profil gender-amtlich-de nicht aufloesen (nicht in der BOM)
* gender.extension[0].url = "http://fhir.de/StructureDefinition/gender-amtlich-de"
* gender.extension[0].valueCoding = $gender-amtlich-de#X "unbestimmt"
* birthDate = "1975"
// Pseudonymisierte Anschrift: nur Region/PLZ, keine identifizierende Zeile
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].city = "Berlin"
* address[Strassenanschrift].city.extension[0].url = "http://fhir.de/StructureDefinition/destatis/ags"
* address[Strassenanschrift].city.extension[0].valueCoding = http://fhir.de/sid/destatis/ags#11000000
* address[Strassenanschrift].postalCode = "13051"
* address[Strassenanschrift].country = "DE"
