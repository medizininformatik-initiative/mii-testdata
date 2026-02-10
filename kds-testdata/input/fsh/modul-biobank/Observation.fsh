// ============================================================================
// ObservationDNAKonzentration - DNA concentration of a specimen
// ============================================================================

// Patient-1: DNA concentration measured from blood specimen
Instance: mii-exa-test-data-patient-1-biobank-dna-konzentration-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-dna-konzentration
Usage: #example
Description: "Observation: DNA-Konzentration aus EDTA-Blut (Patient 1)"
* insert TestDataLabel
* status = #final
* code = $loinc#72496-3 "DNA double strand [Mass/volume] in Specimen"
* focus = Reference(mii-exa-test-data-patient-1-specimen-1)
* valueQuantity.value = 42.5
* valueQuantity.unit = "ng/uL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #ng/uL
* effectiveDateTime = "2024-02-16T09:30:00+01:00"

// Patient-3: DNA concentration measured from tissue specimen
Instance: mii-exa-test-data-patient-3-biobank-dna-konzentration-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-dna-konzentration
Usage: #example
Description: "Observation: DNA-Konzentration aus Gewebeprobe Kolon (Patient 3)"
* insert TestDataLabel
* status = #final
* code = $loinc#72496-3 "DNA double strand [Mass/volume] in Specimen"
* focus = Reference(mii-exa-test-data-patient-3-specimen-1)
* valueQuantity.value = 125.8
* valueQuantity.unit = "ng/uL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #ng/uL
* effectiveDateTime = "2022-03-25T14:00:00+01:00"

// Patient-5: DNA concentration from EDTA blood
Instance: mii-exa-test-data-patient-5-biobank-dna-konzentration-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-dna-konzentration
Usage: #example
Description: "Observation: DNA-Konzentration aus EDTA-Blut (Patient 5)"
* insert TestDataLabel
* status = #final
* code = $loinc#72496-3 "DNA double strand [Mass/volume] in Specimen"
* focus = Reference(mii-exa-test-data-patient-5-specimen-1)
* valueQuantity.value = 850.0
* valueQuantity.unit = "pg/uL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #pg/uL
* effectiveDateTime = "2023-07-13T10:15:00+02:00"

// ============================================================================
// ObservationQualitaetspruefung - Quality check observation
// ============================================================================

// Patient-1: Quality check on blood specimen (Nucleic acid sequencing - Present)
Instance: mii-exa-test-data-patient-1-biobank-qualitaetspruefung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung
Usage: #example
Description: "Observation: Qualitaetspruefung STR-Analyse EDTA-Blut (Patient 1)"
* insert TestDataLabel
* status = #final
* code = $sct#386404008 "Quality monitoring (procedure)"
* focus = Reference(mii-exa-test-data-patient-1-specimen-1)
* effectiveDateTime = "2024-02-16T10:00:00+01:00"
* component[0].code = $sct#246423001 "Test protocol used (attribute)"
* component[0].valueCodeableConcept.coding.system = $sct
* component[0].valueCodeableConcept.coding.code = #117040002
* component[0].valueCodeableConcept.coding.display = "Nucleic acid sequencing (procedure)"
* component[1].code = $sct#79409006 "Resulting in (attribute)"
* component[1].valueCodeableConcept.coding.system = "http://loinc.org"
* component[1].valueCodeableConcept.coding.code = #LA9633-4
* component[1].valueCodeableConcept.coding.display = "Present"

// Patient-3: Quality check on tissue specimen (Viability - 95%)
Instance: mii-exa-test-data-patient-3-biobank-qualitaetspruefung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung
Usage: #example
Description: "Observation: Qualitaetspruefung Viabilitaetstest Gewebe (Patient 3)"
* insert TestDataLabel
* status = #final
* code = $sct#386404008 "Quality monitoring (procedure)"
* focus = Reference(mii-exa-test-data-patient-3-specimen-1)
* effectiveDateTime = "2022-03-25T11:30:00+01:00"
* component[0].code = $sct#246423001 "Test protocol used (attribute)"
* component[0].valueCodeableConcept.coding.system = $sct
* component[0].valueCodeableConcept.coding.code = #14788002
* component[0].valueCodeableConcept.coding.display = "Determination of cell viability (procedure)"
* component[1].code = $sct#79409006 "Resulting in (attribute)"
* component[1].valueQuantity.value = 95
* component[1].valueQuantity.unit = "%"
* component[1].valueQuantity.system = "http://unitsofmeasure.org"
* component[1].valueQuantity.code = #%

// Patient-7: Quality check on serum specimen (RNA integrity)
Instance: mii-exa-test-data-patient-7-biobank-qualitaetspruefung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung
Usage: #example
Description: "Observation: Qualitaetspruefung RNA-Integritaet Serum (Patient 7)"
* insert TestDataLabel
* status = #final
* code = $sct#386404008 "Quality monitoring (procedure)"
* focus = Reference(mii-exa-test-data-patient-7-specimen-2)
* effectiveDateTime = "2024-01-11T08:45:00+01:00"
* component[0].code = $sct#246423001 "Test protocol used (attribute)"
* component[0].valueString = "RNA Integrity Number (RIN) Messung mittels Bioanalyzer"
* component[1].code = $sct#79409006 "Resulting in (attribute)"
* component[1].valueQuantity.value = 8.2
* component[1].valueQuantity.unit = "RIN"
* component[1].valueQuantity.system = "http://unitsofmeasure.org"
* component[1].valueQuantity.code = #{RIN}

// ============================================================================
// ObservationMorphologie - Morphology of cell line / organoid
// ============================================================================

// Patient-3: Morphology of cell line derived from colon tissue
Instance: mii-exa-test-data-patient-3-biobank-morphologie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-morphologie
Usage: #example
Description: "Observation: Morphologie der Zelllinie aus Kolon-Gewebe (Patient 3)"
* insert TestDataLabel
* status = #final
* code = $PATO#PATO:0010006 "cell morphology"
* focus = Reference(mii-exa-test-data-patient-3-biobank-zelllinie-1)
* valueCodeableConcept.coding.system = $sct
* valueCodeableConcept.coding.code = #4421005
* valueCodeableConcept.coding.display = "Cell flattening (morphologic abnormality)"

// Patient-5: Morphology observation for cell line
Instance: mii-exa-test-data-patient-5-biobank-morphologie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-morphologie
Usage: #example
Description: "Observation: Morphologie der Zelllinie (Patient 5)"
* insert TestDataLabel
* status = #final
* code = $PATO#PATO:0010006 "cell morphology"
* focus = Reference(mii-exa-test-data-patient-5-biobank-zelllinie-1)
* valueCodeableConcept.coding.system = $sct
* valueCodeableConcept.coding.code = #11737001
* valueCodeableConcept.coding.display = "Stellate (morphologic abnormality)"

// ============================================================================
// ObservationKaryotyp - Karyotype of cell line / organoid
// ============================================================================

// Patient-3: Karyotype of cell line from colon tissue (46,XY - diploid male)
Instance: mii-exa-test-data-patient-3-biobank-karyotyp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-karyotyp
Usage: #example
Description: "Observation: Karyotyp 46,XY der Zelllinie (Patient 3)"
* insert TestDataLabel
* status = #final
* code = $sct#734840008 "Karyotype (cell structure)"
* focus = Reference(mii-exa-test-data-patient-3-biobank-zelllinie-1)
* valueCodeableConcept.coding.system = $sct
* valueCodeableConcept.coding.code = #734876009
* valueCodeableConcept.coding.display = "Karyotype 46, XY (cell structure)"
* effectiveDateTime = "2022-05-10T14:00:00+02:00"

// Patient-5: Karyotype of cell line (46,XX - diploid female)
Instance: mii-exa-test-data-patient-5-biobank-karyotyp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-karyotyp
Usage: #example
Description: "Observation: Karyotyp 46,XX der Zelllinie (Patient 5)"
* insert TestDataLabel
* status = #final
* code = $sct#734840008 "Karyotype (cell structure)"
* focus = Reference(mii-exa-test-data-patient-5-biobank-zelllinie-1)
* valueCodeableConcept.coding.system = $sct
* valueCodeableConcept.coding.code = #734875008
* valueCodeableConcept.coding.display = "Karyotype 46, XX (cell structure)"
* effectiveDateTime = "2023-08-20T11:30:00+02:00"

// ============================================================================
// ObservationWachstumstyp - Growth type of cell line / organoid
// ============================================================================

// Patient-3: Adherent growth of colon cell line
Instance: mii-exa-test-data-patient-3-biobank-wachstumstyp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-wachstumstyp
Usage: #example
Description: "Observation: Adhaerenter Wachstumstyp der Zelllinie (Patient 3)"
* insert TestDataLabel
* status = #final
* code = $CLO#CLO:0000030 "cell culture growth mode"
* focus = Reference(mii-exa-test-data-patient-3-biobank-zelllinie-1)
* valueCodeableConcept.coding.system = "http://purl.obolibrary.org/obo/clo.owl"
* valueCodeableConcept.coding.code = #CLO:0000028
* valueCodeableConcept.coding.display = "adherent cell culture growth mode"

// Patient-5: Suspension growth of cell line
Instance: mii-exa-test-data-patient-5-biobank-wachstumstyp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-wachstumstyp
Usage: #example
Description: "Observation: Suspensions-Wachstumstyp der Zelllinie (Patient 5)"
* insert TestDataLabel
* status = #final
* code = $CLO#CLO:0000030 "cell culture growth mode"
* focus = Reference(mii-exa-test-data-patient-5-biobank-zelllinie-1)
* valueCodeableConcept.coding.system = "http://purl.obolibrary.org/obo/clo.owl"
* valueCodeableConcept.coding.code = #CLO:0000029
* valueCodeableConcept.coding.display = "suspension cell culture growth mode"

// ============================================================================
// ObservationProliferation - Proliferation of cell line / organoid
// ============================================================================

// Patient-3: High proliferation of colon cell line
Instance: mii-exa-test-data-patient-3-biobank-proliferation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-proliferation
Usage: #example
Description: "Observation: Hohe Proliferation der Zelllinie (Patient 3)"
* insert TestDataLabel
* status = #final
* code = $GO#GO:0008283 "cell population proliferation"
* focus = Reference(mii-exa-test-data-patient-3-biobank-zelllinie-1)
* valueCodeableConcept.coding.system = $sct
* valueCodeableConcept.coding.code = #75540009
* valueCodeableConcept.coding.display = "High (qualifier value)"

// Patient-5: Viable proliferation status
Instance: mii-exa-test-data-patient-5-biobank-proliferation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-proliferation
Usage: #example
Description: "Observation: Viable Proliferationsstatus der Zelllinie (Patient 5)"
* insert TestDataLabel
* status = #final
* code = $GO#GO:0008283 "cell population proliferation"
* focus = Reference(mii-exa-test-data-patient-5-biobank-zelllinie-1)
* valueCodeableConcept.coding.system = "http://purl.obolibrary.org/obo/pato.owl"
* valueCodeableConcept.coding.code = #PATO:0000719
* valueCodeableConcept.coding.display = "viable"

// Patient-8: Immortal proliferation (immortalized cell line)
Instance: mii-exa-test-data-patient-8-biobank-proliferation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-proliferation
Usage: #example
Description: "Observation: Immortale Proliferation der Zelllinie (Patient 8)"
* insert TestDataLabel
* status = #final
* code = $GO#GO:0008283 "cell population proliferation"
* focus = Reference(mii-exa-test-data-patient-8-specimen-1)
* valueCodeableConcept.coding.system = "http://purl.obolibrary.org/obo/pato.owl"
* valueCodeableConcept.coding.code = #PATO:0001991
* valueCodeableConcept.coding.display = "immortal"
