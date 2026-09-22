Instance: mii-exa-onko-mamma-her2neu-status
InstanceOf: MII_PR_Onko_Mamma_Her2neu_Status
Usage: #example
Title: "MII EXA Onko Mamma Her2neu Status"
Description: "Beispiel für Her2neu Status bei Mammakarzinom - HER2-positiv (IHC 3+)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-her2neu-status)
* status = #final
* code.coding = http://loinc.org#48676-1 "HER2 Ag [Interpretation] in Tissue"
* subject = Reference(mii-exa-onko-mamma-bundle-patient)
* focus = Reference(Condition/mii-exa-onko-mamma-diagnose)
* effectiveDateTime = "2024-01-10T10:00:00Z"
* valueCodeableConcept.coding[DefinitionOBDS] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-obds#P "positiv"
* valueCodeableConcept.coding[DefinitionLeitlinie] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-leitlinie#positiv "HER2-positiv"
* component[IHCScore].code.coding = http://loinc.org#85319-2 "HER2 Ag [Presence] in Breast cancer specimen by Immune stain"
* component[IHCScore].valueCodeableConcept.coding = http://loinc.org#LA11843-2 "3+"
