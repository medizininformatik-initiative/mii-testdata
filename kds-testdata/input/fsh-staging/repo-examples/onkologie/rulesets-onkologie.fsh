RuleSet: MetaProfile(canonical)
* meta.profile[+] = "{canonical}|2027.0.0-ballot.1"

RuleSet: OnkoCRMIConceptMap
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableconceptmap"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableconceptmap"
* insert CRMIMetaLicenseAndSourceInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* insert CRMIVersionPolicyStrictInstance
* insert CRMIApprovalDateInstance(2026-09-15)
* insert CRMIArtifactTopicInstance(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C3262)
* insert CRMIArtifactContributorsInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "SemVer"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* extension[=].valuePeriod.start = "2027"

RuleSet: SNOMEDCopyrightForInstance
* copyright = "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license."

// ── UICC / TNM ────────────────────────────────────────────────────────────────
// Die TNM-Klassifikation ist urheberrechtlich geschuetztes Werk der UICC. Das
// Modul fuehrt die Codes als FHIR-CodeSystem unter der UICC-Kanonical-URL
// (special-url in sushi-config) — die Zusammenstellung ist unsere Arbeit, der
// Inhalt aber nicht unser Werk. Daher: Copyright-Vermerk statt einer
// CC-BY-Lizenzbehauptung.

RuleSet: Version
* version = "2027.0.0-ballot.1"
