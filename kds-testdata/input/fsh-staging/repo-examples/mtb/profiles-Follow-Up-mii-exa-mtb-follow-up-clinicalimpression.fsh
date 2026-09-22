Instance: MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1
InstanceOf: MII_PR_MTB_Follow_Up_ClinicalImpression
Usage: #example
Title: "Beispiel fuer eine Follow-Up Clinical Impression "

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression)
* subject = Reference(Patient/mii-exa-mtb-patient)
* status = #completed
* code.coding = http://snomed.info/sct#390906007 "Follow-up encounter (procedure)"
* effectiveDateTime = "2024-07-07"
* investigation.code.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status#ongoing
* previous = Reference(mii-exa-mtb-kim-musterperson-behandlungsepisode)
* supportingInfo[UmgesetzteTherapien][+] = Reference(Procedure/MII-EXA-MTB-Systemtherapie-Beispiel-1)
* supportingInfo[AntraegeKostenuebernahme][+] = Reference(Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1)
* supportingInfo[AntwortenKostenuebernahme][+] = Reference(ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1)
