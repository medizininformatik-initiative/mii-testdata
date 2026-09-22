Instance: mii-exa-onko-tumorkonferenz-01
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "Tumorkonferenz_1"
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/request-intent#plan
* subject = Reference(Patient/example)
* category.coding.code = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ#postop
* created = "2024-01-11"
* activity[obds].detail.code.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ#OP
* activity[obds].detail.status = http://hl7.org/fhir/care-plan-activity-status#completed

Instance: mii-exa-onko-tumorkonferenz-02
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "Tumorkonferenz_2"
* status = http://hl7.org/fhir/request-status#completed
* intent = http://hl7.org/fhir/request-intent#plan
* subject = Reference(Patient/example)
* category.coding.code = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ#postop
* created = "2024-01-11"
* activity[obds][+].detail.code.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ#OP
* activity[obds][=].detail.status = http://hl7.org/fhir/care-plan-activity-status#cancelled
* activity[obds][=].detail.statusReason.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung#N "nein"
* activity[obds][+].detail.code.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ#ZS "Zielgerichtete Substanzen"
* activity[obds][=].detail.status = http://hl7.org/fhir/care-plan-activity-status#cancelled
* activity[obds][=].detail.statusReason.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung#N "nein"
