Instance: mii-exa-onko-prostata-gleason-pattern-primary-1
InstanceOf: MII_PR_Onko_Prostata_Gleason_Pattern
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns)
* status = #final
* code.coding[snomed] = http://snomed.info/sct#384994009 "Primary Gleason pattern (observable entity)"
* code.coding[loinc] = http://loinc.org#44641-9 "Gleason pattern.primary in Prostate tumor"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus = Reference(mii-exa-onko-prostata-diagnose)

* effectiveDateTime = "2024-01-02"
* valueCodeableConcept.coding = http://snomed.info/sct#369772003 "Gleason Pattern 3"

Instance: mii-exa-onko-prostata-gleason-pattern-secondary-1
InstanceOf: MII_PR_Onko_Prostata_Gleason_Pattern
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns)
* status = #final
* code.coding[snomed] = http://snomed.info/sct#384995005 "Secondary Gleason pattern (observable entity)"
* code.coding[loinc] = http://loinc.org#44642-7 "Gleason pattern.secondary in Prostate tumor"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus = Reference(mii-exa-onko-prostata-diagnose)

* effectiveDateTime = "2024-01-02"
* valueCodeableConcept.coding = http://snomed.info/sct#369773008 "Gleason Pattern 4"

Instance: mii-exa-onko-prostata-gleason-pattern-grade-group-1
InstanceOf: MII_PR_Onko_Prostata_Gleason_Grade_Group
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-grade-group)
* status = #final
* code.coding[snomed] = http://snomed.info/sct#1812491000004107 "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
* code.coding[loinc] = http://loinc.org#94734-1 "Prostate cancer grade group [Score] in Prostate tumor Qualitative"
* effectiveDateTime = "2024-01-02"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus = Reference(mii-exa-onko-prostata-diagnose)
* derivedFrom[+] = Reference(mii-exa-onko-prostata-gleason-pattern-primary-1)
* derivedFrom[+] = Reference(mii-exa-onko-prostata-gleason-pattern-secondary-1)

* valueCodeableConcept.coding = http://snomed.info/sct#1279714001 "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"

// Nur ScoreErgebnis dokumentiert: Gesamtscore < 6 ohne Primaer-/Sekundaer-Pattern und ohne Grade Group

Instance: mii-exa-onko-prostata-gleason-score-gesamt-1
InstanceOf: MII_PR_Onko_Prostata_Gleason_Score_Gesamt
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-score-gesamt)
* status = #final
* code.coding[snomed] = http://snomed.info/sct#372278000 "Gleason score (observable entity)"
* code.coding[loinc] = http://loinc.org#35266-6 "Gleason score in Specimen Qualitative"
* effectiveDateTime = "2024-01-02"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus = Reference(mii-exa-onko-prostata-diagnose)

* valueCodeableConcept.coding = http://snomed.info/sct#74013009 "Gleason grade score 5 out of 10 (finding)"
