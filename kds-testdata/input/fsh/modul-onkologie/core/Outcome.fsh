// ============================================================================
// MII Onkologie Test Data - Outcome & Special Profiles (oBDS Chapters 15, 17, 20, 23, 24)
// ============================================================================

// Verlauf (Disease Progression - Chapter 17)
Instance: mii-exa-test-data-onko-verlauf-1
InstanceOf: MII_PR_Onko_Verlauf
Usage: #example
Description: "Onkologie Test Verlauf - Vollremission nach Therapie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* identifier.value = "VERLAUF-001"
* code = $SCT#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2022-06-15"
* valueCodeableConcept = $mii-cs-onko-verlauf-gesamtbeurteilung#V "Vollremission (complete remission, CR)"
* hasMember = Reference(mii-exa-test-data-onko-fernmetastasen-1)
* component[Tumor_Verlauf].code.coding = $SCT#445200009 "Status of residual neoplasm (observable entity)"
* component[Tumor_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-primaertumor#K "kein Tumor nachweisbar"
* component[Lymphknoten_Verlauf].code.coding = $SCT#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-lymphknoten#K "kein Lymphknotenbefall nachweisbar"
* component[Fernmetastasen_Verlauf].code.coding = $SCT#399608002 "Status of distant metastasis (observable entity)"
* component[Fernmetastasen_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-fernmetastasen#K "keine Fernmetastasen nachweisbar"

// Second Verlauf - demonstrates progression
Instance: mii-exa-test-data-onko-verlauf-2
InstanceOf: MII_PR_Onko_Verlauf
Usage: #example
Description: "Onkologie Test Verlauf - Teilremission mit Lymphknotenprogress"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $SCT#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2023-01-20"
* valueCodeableConcept = $mii-cs-onko-verlauf-gesamtbeurteilung#T "Teilremission (partial remission, PR)"
* component[Tumor_Verlauf].code.coding = $SCT#445200009 "Status of residual neoplasm (observable entity)"
* component[Tumor_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-primaertumor#K "kein Tumor nachweisbar"
* component[Lymphknoten_Verlauf].code.coding = $SCT#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-lymphknoten#P "bekannter Lymphknotenbefall Progress"
* component[Fernmetastasen_Verlauf].code.coding = $SCT#399608002 "Status of distant metastasis (observable entity)"
* component[Fernmetastasen_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-fernmetastasen#K "keine Fernmetastasen nachweisbar"

// Nebenwirkung - AdverseEvent (Chapter 15)
Instance: mii-exa-test-data-onko-nebenwirkung-1
InstanceOf: MII_PR_Onko_Nebenwirkung_Adverse_Event
Usage: #example
Description: "Onkologie Test Nebenwirkung - Fatigue nach Chemotherapie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* actuality = #actual
* event.coding[meddra].system = "https://www.meddra.org"
* event.coding[meddra].code = #10016256
* event.coding[meddra].display = "Fatigue"
* event.coding[meddra].version = "Version 27.0"
* event.text = "Fatigue nach Chemotherapie"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* date = "2021-08-15"
* seriousness = $mii-cs-onko-nebenwirkung-ctcae-grad#2 "moderat"
* seriousness.text = "CTCAE Grad 2 - Mäßig"
* extension[ctcaeVersion].valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-version#5.0 "CTCAE Version 5.0"
* suspectEntity.instance = Reference(mii-exa-test-data-onko-systemische-therapie-1)

// Nebenwirkung - severe grade
Instance: mii-exa-test-data-onko-nebenwirkung-2
InstanceOf: MII_PR_Onko_Nebenwirkung_Adverse_Event
Usage: #example
Description: "Onkologie Test Nebenwirkung - Polyneuropathie nach Strahlentherapie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* actuality = #actual
* event.coding[meddra].system = "https://www.meddra.org"
* event.coding[meddra].code = #10032759
* event.coding[meddra].display = "Polyneuropathy"
* event.coding[meddra].version = "Version 27.0"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* date = "2022-04-01"
* seriousness = $mii-cs-onko-nebenwirkung-ctcae-grad#3 "schwerwiegend"
* extension[ctcaeVersion].valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-version#5.0 "CTCAE Version 5.0"
* suspectEntity.instance = Reference(mii-exa-test-data-onko-strahlentherapie-1)

// Tod (Death - Chapter 20) - Death due to tumor
Instance: mii-exa-test-data-onko-tod-1
InstanceOf: MII_PR_Onko_Tod
Usage: #example
Description: "Onkologie Test Tod - Verstorben an Tumorerkrankung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $SCT#184305005 "Cause of death"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2024-05-15"
* interpretation = $mii-cs-onko-tod#J "Ja, die Person ist an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben."
// ICD-10-GM-Version muss zur ValueSet-Version der Onko-2027-Profile passen (2026).
// ICD-10-GM 2027 ist noch nicht veroeffentlicht; bei Erscheinen upstream pruefen.
* valueCodeableConcept = $ICD10GM|2026#C56 "Bösartige Neubildung des Ovars"

// Alternative Tod - Unknown cause
Instance: mii-exa-test-data-onko-tod-2
InstanceOf: MII_PR_Onko_Tod
Usage: #example
Description: "Onkologie Test Tod - Todesursache unbekannt"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $SCT#184305005 "Cause of death"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* effectiveDateTime = "2024-06-01"
* interpretation = $mii-cs-onko-tod#U "unbekannt"

// Genetische Variante (Chapter 23)
Instance: mii-exa-test-data-onko-genetische-variante-1
InstanceOf: MII_PR_Onko_Genetische_Variante
Usage: #example
Description: "Onkologie Test Genetische Variante - BRCA1 Mutation"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-06-15"
* valueCodeableConcept.coding = $LNC#LA9633-4 "Present"
* note.text = "BRCA1 pathogene Variante nachgewiesen"
* interpretation = $mii-cs-onko-genetische-variante-auspraegung#M "Mutation/positiv"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* issued = "2021-06-16T09:00:00+02:00"
* method = $LNC#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-test-data-onko-specimen-1)
* device = Reference(mii-exa-test-data-onko-sequencer-1)
* component[gene-studied].valueCodeableConcept = http://www.genenames.org#HGNC:1100 "BRCA1"
* component[conclusion-string].valueString = "Pathogene BRCA1-Frameshift-Variante c.68_69del (p.Glu23fs) nachgewiesen."
* component[cytogenetic-location].valueCodeableConcept.text = "17q21.31"
* component[reference-sequence-assembly].valueCodeableConcept = $LNC#LA26806-2 "GRCh38"
* component[chromosome-identifier].valueCodeableConcept.text = "Chromosom 17"
* component[representative-coding-hgvs].valueCodeableConcept.coding = http://varnomen.hgvs.org#NM_007294.4:c.68_69del
* component[genomic-hgvs].valueCodeableConcept.coding = http://varnomen.hgvs.org#NC_000017.11:g.43124027_43124028del
* component[representative-protein-hgvs].valueCodeableConcept.coding = http://varnomen.hgvs.org#NP_009225.1:p.Glu23fs
* component[genomic-ref-seq].valueCodeableConcept.coding = http://www.ncbi.nlm.nih.gov/refseq#NC_000017.11
* component[representative-transcript-ref-seq].valueCodeableConcept.coding = http://www.ncbi.nlm.nih.gov/refseq#NM_007294.4
* component[exact-start-end].valueRange.low.value = 43124027
* component[exact-start-end].valueRange.high.value = 43124028
* component[inner-start-end].valueRange.low.value = 43124027
* component[inner-start-end].valueRange.high.value = 43124028
* component[outer-start-end].valueRange.low.value = 43124020
* component[outer-start-end].valueRange.high.value = 43124035
* component[ref-allele].valueString = "TTC"
* component[alt-allele].valueString = "T"
* component[coding-change-type].valueCodeableConcept.coding = http://www.sequenceontology.org#SO:0000159 "deletion"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[sample-allelic-frequency].valueQuantity = 34 '%'
* component[sample-allelic-frequency].valueQuantity.unit = "%"
* component[allelic-read-depth].valueQuantity.value = 120
* component[allelic-state].valueCodeableConcept = $LNC#LA6706-1 "Heterozygous"
* component[variant-inheritance].valueCodeableConcept = $loinc#LA6684-0 "Somatic"
* component[variant-inheritance].valueCodeableConcept.text = "Somatisch"
* component[variation-code].valueCodeableConcept.coding = http://www.ncbi.nlm.nih.gov/clinvar#17662 "NM_007294.4(BRCA1):c.68_69del"
* component[copy-number].valueQuantity.value = 2
* component[variant-confidence-status].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/variant-confidence-status-cs#high "High"
* component[variant-confidence-status].valueCodeableConcept.text = "hohe Konfidenz"
* component[detection-limit].valueQuantity = 5 '%'
* component[detection-limit].valueQuantity.unit = "%"
* component[dna-region].valueString = "Exon 2"
* component[gene-fusion].valueCodeableConcept = $sct#260415000 "Not detected"
* component[gene-fusion].valueCodeableConcept.text = "keine Genfusion nachweisbar"

// Sequenzierer (Ziel der device-Referenzen von Genetischer Variante, TNM synthetisiert und Tumormarker)
Instance: mii-exa-test-data-onko-sequencer-1
InstanceOf: Device
Usage: #example
Description: "Onkologie Test Device - NGS-Sequenzierer"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* manufacturer = "Illumina"
* deviceName.name = "Illumina NextSeq 550"
* deviceName.type = #user-friendly-name

// Genetische Variante - Wildtype
Instance: mii-exa-test-data-onko-genetische-variante-2
InstanceOf: MII_PR_Onko_Genetische_Variante
Usage: #example
Description: "Onkologie Test Genetische Variante - KRAS Wildtyp"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* subject = Reference(mii-exa-test-data-onko-patient-1)
* effectiveDateTime = "2021-06-15"
* note.text = "KRAS Wildtyp (keine Mutation nachweisbar)"
* interpretation = $mii-cs-onko-genetische-variante-auspraegung#W "Wildtyp/nicht mutiert/ negativ"

// Studienteilnahme (Chapter 24)
Instance: mii-exa-test-data-onko-studienteilnahme-1
InstanceOf: MII_PR_Onko_Studienteilnahme
Usage: #example
Description: "Onkologie Test Studienteilnahme - Patient nimmt an Studie teil"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $SCT#709491003 "Enrollment in clinical trial"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus[primaertumor] = Reference(mii-exa-test-data-onko-diagnose-1)
* focus[studie].display = "OVAR-21 Studie"
* effectiveDateTime = "2021-07-01"
* valueCodeableConcept = $mii-cs-onko-studienteilnahme#J "Ja"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Studienteilnahme - No participation
Instance: mii-exa-test-data-onko-studienteilnahme-2
InstanceOf: MII_PR_Onko_Studienteilnahme
Usage: #example
Description: "Onkologie Test Studienteilnahme - Keine Studienteilnahme"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $SCT#709491003 "Enrollment in clinical trial"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-07-01"
* valueCodeableConcept = $mii-cs-onko-studienteilnahme#N "Nein"

