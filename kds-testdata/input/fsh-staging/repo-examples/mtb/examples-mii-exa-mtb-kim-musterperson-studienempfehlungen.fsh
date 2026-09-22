Instance: mii-exa-mtb-study-request-cldn6
InstanceOf: MII_PR_MTB_Studieneinschluss_Anfrage
Title: "Phase 1/2 CLDN6 CAR-T-Zell-Studie"
Description: "Studieneinschlussempfehlung: Phase 1/2 CLDN6 CAR-T-Zell-Studie, Priorität: 2.1"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage)
* status = #draft
* subject = Reference(Patient/PatientKimMusterperson)
* supportingInfo = Reference(mii-exa-mtb-study-cldn6)
* insert BeschlussSubPrioritaet(2.1)
* insert BeschlussEvidenzPublikation(http://www.ncbi.nlm.nih.gov/pubmed, 37872225)

Instance: mii-exa-mtb-study-cldn6
InstanceOf: MII_PR_MTB_Studie
//Title: "Phase I/IIa, First-in-human (FIH), Open-label, Dose Escalation Trial With Expansion Cohorts to Evaluate Safety and Preliminary Efficacy of CLDN6 CAR-T With or Without CLDN6 RNA-LPX in Patients With CLDN6-positive Relapsed or Refractory Advanced Solid Tumors"
//Description: "CLDN6 CAR-T is used as a general term to refer to CLDN6 CAR-T cells from the manual and automated manufacturing processes.\n\nThe trial consists of two parts.\n\nThe trial began using a manual CLDN6 CAR-T production process.\n\nPart 1 is a CLDN6 CAR-T dose escalation in lymphodepleted patients until the maximum tolerated dose (MTD) and/or recommended phase 2 dose (RP2D) of CLDN6 CAR-T are defined.\n\nDose escalation with CLDN6 CAR-T cells from the automated manufacturing process follows an accelerated titration design, as opposed to the classical 3+3 trial design used for the dose escalation with CLDN6 CAR-T manufactured with the manual process.\n\nIn addition, an optional de-escalation dose level may be explored to further evaluate clinical safety and efficacy of CLDN6 CAR-T manufactured with the automated process.\n\nPart 2 is a vaccine-modulated dose escalation using a bifurcated design until the MTD and/or RP2D of CLDN6 CAR-T + CLDN6 RNA-LPX are defined.\n\nThe trial started with a CLDN6 encoding uridine containing RNA formulated in lipoplexes (CLDN6 uRNA-LPX). In order to optimize CAR-T cell persistence in patients, an alternative RNA-LPX, CLDN6 modRNA-LPX, will be tested once the RP2D dose for CLDN6 CAR-T ± CLDN6 RNA-LPX is identified."
Title: "A Clinical Study of the Safety and Effectiveness of an Investigational Cell Therapy Given With and Without an Investigational RNA-based Vaccine in Patients With Organ Tumors"
Description: "This is a Phase I, FIH, open-label, multicenter, dose escalation trial with expansion cohorts to evaluate safety and preliminary efficacy of claudin 6 (CLDN6) chimeric antigen receptor T cells (CAR-T) with or without CLDN6 ribonucleic acid lipoplexes (RNA-LPX) in patients with CLDN6-positive relapsed or refractory advanced solid tumors."
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie)
* identifier[+].system = https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct
* identifier[=].value = "04503278"
* status = #active
* primaryPurposeType = #treatment
* phase = #phase-1
* condition = http://snomed.info/sct#369757002 "Solid tumor configuration"
* keyword.text = "CLDN6-positive relapsed or refractory advanced solid tumors"
* keyword.text = "Testicular cancer"
* keyword.text = "Ovarian cancer"
* keyword.text = "Gastric cancer"
* keyword.text = "Endometrial cancer"
* keyword.text = "Non-small cell lung cancer (NSCLC)"
* enrollment = Reference(mii-exa-mtb-study-cldn6-eligibility-criteria)
* period.start = 2020-09-16
* period.end = 2040-01
* sponsor = Reference(mii-exa-mtb-study-sponsor-biontech)
* principalInvestigator = Reference(mii-exa-mtb-study-investigator-biontech)
* site = Reference(mii-exa-mtb-study-cldn6-location-0)
* site = Reference(mii-exa-mtb-study-cldn6-location-1)
* site = Reference(mii-exa-mtb-study-cldn6-location-2)
* site = Reference(mii-exa-mtb-study-cldn6-location-3)
* site = Reference(mii-exa-mtb-study-cldn6-location-4)
* site = Reference(mii-exa-mtb-study-cldn6-location-5)
* site = Reference(mii-exa-mtb-study-cldn6-location-6)
* site = Reference(mii-exa-mtb-study-cldn6-location-7)
* site = Reference(mii-exa-mtb-study-cldn6-location-8)
* site = Reference(mii-exa-mtb-study-cldn6-location-9)
* site = Reference(mii-exa-mtb-study-cldn6-location-10)
* site = Reference(mii-exa-mtb-study-cldn6-location-11)
* arm[+].name = "Part 1 - CLDN6 CAR-T: Dose escalation in lymphodepleted patients until the MTD and/or RP2D"
* arm[+].name = "Part 2 Vaccine-modulated - CLDN6 uRNA-LPX/CLDN6 modRNA-LPX: Dose escalation until the MTD and/or RP2D"
* objective[+].type = #primary
* objective[=].name = "Occurrence of treatment-emergent adverse events (TEAEs) including ≥ Grade 3, serious, fatal TEAEs by relationship"
* objective[+].type = #primary
* objective[=].name = "Occurrence of dose reduction and discontinuation of investigational medicinal product (IMP) due to TEAEs"
* objective[+].type = #primary
* objective[=].name = "Occurrence of dose-limiting toxicity (DLT) during the DLT evaluation period"
* objective[+].type = #secondary
* objective[=].name = "Change from baseline in the levels and kinetics of soluble immune factors measured by cytokine multiplex assay"
* objective[+].type = #secondary
* objective[=].name = "Objective response rate (ORR) defined as the proportion of patients in whom a complete response (CR) or partial response (PR) (per response evaluation criteria in solid tumors [RECIST 1.1]) is observed as best overall response"
* objective[+].type = #secondary
* objective[=].name = "Disease control rate (DCR) defined as the proportion of patients in whom a CR or PR or stable disease (SD) (per RECIST 1.1, SD assessed at least 6 weeks after the first dose) is observed as best overall response"
* objective[+].type = #secondary
* objective[=].name = "Duration of response (DOR) defined as the time from first objective response (CR or PR per RECIST 1.1) to first occurrence of objective progressive disease (PD) per RECIST 1.1/recurrence or death from any cause, whichever occurs first"

Instance: mii-exa-mtb-study-cldn6-eligibility-criteria
InstanceOf: Group
Title: "NCT04503278 Eligibility Criteria"
Description: "NCT04503278 Eligibility Criteria"
Usage: #example
* type = #person
* actual = false
* quantity = 145
* characteristic[+].code.text = "Eligibility Criteria"
* characteristic[=].valueReference.display = "Inclusion Criteria:\n\n* Each patient enrolled in the trial must have CLDN6-positive tumor regardless of tumor histology defined as ≥ 50% of tumor cells expressing ≥ 2+ CLDN6 protein using a semi-quantitative immunohistochemistry (IHC) assay in a central laboratory for specific detection of CLDN6 protein expression in formalin-fixed, paraffin-embedded (FFPE) neoplastic tissues.\n* Availability of a FFPE tumor tissue sample. FFPE can be from an archival tumor tissue sample, and it should be from the most recent tumor tissue obtained. If this is not available, patient must be biopsied for CLDN6 staining.\n* Must have histological documentation of the original primary tumor via a pathology report.\n* Must have measurable disease per RECIST 1.1 (except for germ cell tumors, where patients can be evaluated according to Cancer-Antigen (CA)-125, Alpha-fetoprotein or human chorionic gonadotropin \\[as applicable\\] or ovarian cancer, where patients can be evaluated according to CA-125. The pre-treatment sample must be at least twice the upper limit of normal).\n* Must have a histologically confirmed solid tumor that is metastatic or unresectable and for which there is no available standard therapy likely to confer clinical benefit, or patient who is not a candidate for such available therapy.\n* Must be ≥ 18 years of age at the time the pre-screening informed consent is signed.\n* Must sign an informed consent form (ICF) indicating that he or she understands the purpose of and procedures required for the trial and are willing to participate in the trial prior to any trial-related assessments or procedures.\n* Must have an Eastern Cooperative Oncology Group performance status of 0 to 1.\n* Must have adequate coagulation function at screening as defined in the protocol.\n* Must have adequate hematologic function at screening as defined in the protocol.\n* Must have adequate hepatic function at screening as defined in the protocol.\n* Must have adequate renal function at screening as defined in the protocol.\n* Must be able to attend trial visits as required by the protocol.\n* Women of childbearing potential (WOCBP) must have a negative serum (beta-human chorionic gonadotropin) test/value at screening. Patients who are post-menopausal or permanently sterilized can be considered as not having reproductive potential.\n* WOCBP must agree not to donate eggs (ova, oocytes) for the purposes of assisted reproduction during the entire trial and thereafter.\n* WOCBP and men that are sexually active with a WOCBP and have not had a vasectomy must agree to use highly effective birth control method(s), as defined in the protocol. True abstinence is an acceptable alternative to the use of contraception.\n* Men must agree not to father a child or donate sperm, and WOCBP must agree not to become pregnant during the trial and for at least 12 months after the CLDN6 CAR-T infusion or CLDN6 RNA-LPX treatment.\n\nFor Part 2 only:\n\n* Histologically or cytologically confirmed solid tumor fulfilling inclusion criteria 1-4 that is metastatic or unresectable, and for whom there is no available standard therapy likely to confer clinical benefit, or patient who is not a candidate for such available therapy.\n\nExclusion Criteria:\n\n* Has received prior CAR-T therapy, except CLDN6 CAR-T therapy.\n* Has received vaccination with live virus vaccines within 6 weeks prior to the start of lymphodepletion (LD).\n* Receives concurrent systemic (oral or i.v.) steroid therapy \\> 10 mg prednisolone daily, or its equivalent, for an underlying condition.\n* Has side effects of any prior therapy or procedures for any medical condition not recovered to national cancer institute common terminology criteria for adverse events (CTCAE v.5) Grade ≤ 1.\n\nMedical conditions:\n\n* Current evidence of new or growing brain or spinal metastases during screening. Patients with known brain or spinal metastases may be eligible if they:\n\n  1. Have had radiotherapy or another appropriate therapy for the brain or spinal metastases,\n  2. Have no neurological symptoms,\n  3. Have stable brain or spinal disease on the computer tomography or magnetic resonance imaging scan within 4 weeks before signing of the ICF,\n  4. Are not undergoing acute corticosteroid therapy or steroid taper. Chronic steroid therapy is acceptable provided that the dose is stable for the last 14 days prior to screening (≤ 10 mg prednisolone daily or equivalent),\n  5. Do not require steroid therapy within 7 days before the first dose of CLDN6 CAR-T,\n  6. Do not have anticipated imminent fracture or cord compression due to spinal bone metastases.\n* Has history of epilepsy. Isolated seizures in the past or febrile seizures in childhood are permitted; has a history of a cerebrovascular accident or transient ischemic attack less than 6 months ago.\n* Pericardial effusion requiring any drainage is excluded.\n* Has an active autoimmune disease including but not limited to inflammatory bowel disease, systemic lupus erythematosus, ankylosing spondylitis, scleroderma, or multiple sclerosis. Has any active immunologic disorder requiring immunosuppression with steroids or other immunosuppressive agents with the exception of patients with isolated vitiligo, resolved childhood asthma or atopic dermatitis, controlled hypoadrenalism or hypopituitarism, and euthyroid patients with a history of Grave's disease. Patients with controlled hyperthyroidism must be negative for thyroglobulin, thyroid peroxidase antibodies, and thyroid-stimulating immunoglobulin prior to trial drug administration.\n* Seropositivity for human immunodeficiency virus.\n* Known history/positive serology for hepatitis B requiring active antiviral therapy (unless immune due to vaccination or resolved natural infection or unless passive immunization due to immunoglobulin therapy). Patients with positive serology must have hepatitis B virus viral load below the limit of quantification.\n* Active hepatitis C virus (HCV) infection; patients who have completed curative antiviral treatment with HCV viral load below the limit of quantification are allowed.\n* Has a known hypersensitivity to a component of CLDN6 CAR-T or CLDN6 RNA-LPX cancer vaccine drug product, or another similar compound.\n* Only for patients recruited for Part 2 with LD chemotherapy (CLDN6 CAR-T + CLDN6 RNA-LPX with LD chemotherapy): history of severe immediate hypersensitivity reaction to LD chemotherapy consisting of cyclophosphamide or fludarabine.\n* Has a history of another primary cancer within the 2 years prior to enrollment except for the following: Non-melanoma skin cancer, cervical carcinoma in situ, superficial bladder cancer, prostate cancer with currently undetectable prostate specific antigen, or other non-metastatic carcinoma that has been in complete remission without treatment for more than 2 years.\n* Receipt of allogenic stem cell transplantation in the 5 years prior to enrollment into the trial.\n* Patients with acute or chronic graft versus host disease.\n\nOther comorbidities:\n\n* Has abnormal electrocardiograms that are clinically significant, such as QT prolongation.\n* In the opinion of the Investigator, has any concurrent conditions that could pose an undue medical hazard or interfere with the interpretation of the trial results; these conditions include, but are not limited to:\n\n  1. Ongoing or active infection requiring antibiotic/antiviral/antifungal therapy\n  2. Concurrent congestive heart failure (New York Heart Association Functional Classification Class III or IV)\n  3. Concurrent unstable angina\n  4. Concurrent cardiac arrhythmia requiring treatment (excluding asymptomatic atrial fibrillation)\n  5. Acute coronary syndrome within the previous 6 months\n  6. Significant pulmonary disease (shortness of breath at rest or on mild exertion) for example due concurrent severe obstructive pulmonary disease.\n* Has a cognitive, psychological or psychosocial impediment that would impair the ability of the patient to receive therapy according to the protocol or adversely affect the ability of the patient to comply with the informed consent process, protocol, or protocol-required visits and procedures.\n* Is pregnant or breastfeeding"
* characteristic[=].exclude = false
* characteristic[+].code.text = "Accepts Healthy Volunteers"
* characteristic[=].valueBoolean = false
* characteristic[=].exclude = false
* characteristic[+].code.text = "Age"
* characteristic[=].valueRange.low = 18 'a' "year"
* characteristic[=].exclude = false
* characteristic[+].code.text = "Age Group"
* characteristic[=].valueReference = Reference(mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups)
* characteristic[=].exclude = false

Instance: mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups
InstanceOf: Group
Title: "NCT04503278 Age Group"
Description: "NCT04503278 Eligibility Criteria Age Group"
* type = #person
* actual = false
* characteristic[+].code.text = "Age Group (Adult)"
* characteristic[=].valueCodeableConcept = http://snomed.info/sct#41847000 "Adulthood (qualifier value)"
* characteristic[=].exclude = false
* characteristic[+].code.text = "Age Group (Older Adult)"
* characteristic[=].valueCodeableConcept = http://snomed.info/sct#271872005 "Old age (qualifier value)"
* characteristic[=].exclude = false

Instance: mii-exa-mtb-study-cldn6-comparison-group-0
InstanceOf: Group
Title: "NCT04503278 Comparison Group: Part 1 - CLDN6 CAR-T"
Description: "NCT04503278 CLDN6 CAR-T: Dose escalation in lymphodepleted patients until the MTD and/or RP2D"
Usage: #example
* type = #person
* actual = false
* characteristic.code.text = "Exposed to"
* characteristic.valueReference = Reference(mii-exa-mtb-study-cldn6-evidence-variable-0)
* characteristic.valueReference.display = "Biological: CLDN6 CAR-T"
* characteristic.exclude = false

Instance: mii-exa-mtb-study-cldn6-evidence-variable-0
InstanceOf: EvidenceVariable
Title: "NCT04503278 CLDN6 CAR-T"
Description: "NCT04503278 CLDN6 CAR-T: Administered as an intravenous (i.v.) infusion"
Usage: #example
* status = #active
* useContext.code = http://snomed.info/sct#362956003 "Procedure/intervention (navigational concept)"
* useContext.valueCodeableConcept.coding = http://snomed.info/sct#12893009 "Biological"
* characteristic.definitionReference = Reference(mii-exa-mtb-study-cldn6-eligibility-criteria)

Instance: mii-exa-mtb-study-cldn6-comparison-group-1
InstanceOf: Group
Title: "NCT04503278 Comparison Group: Part 2 Vaccine-modulated - CLDN6 uRNA-LPX/CLDN6 modRNA-LPX"
Description: "Dose escalation until the MTD and/or RP2D"
Usage: #example
* type = #person
* actual = false
* characteristic[+].code.text = "Exposed to"
* characteristic[=].valueReference = Reference(mii-exa-mtb-study-cldn6-evidence-variable-1)
* characteristic[=].valueReference.display = "Biological: CLDN6 uRNA-LPX/CLDN6 modRNA-LPX"
* characteristic[=].exclude = false

Instance: mii-exa-mtb-study-cldn6-evidence-variable-1
InstanceOf: EvidenceVariable
Title: "NCT04503278 CLDN6 uRNA-LPX/CLDN6 modRNA-LPX"
Description: "NCT04503278 CLDN6 uRNA-LPX/CLDN6 modRNA-LPX: Administered as an i.v. injection at protocol-specified intervals"
Usage: #example
* status = #active
* useContext.code = http://snomed.info/sct#362956003 "Procedure/intervention (navigational concept)"
* useContext.valueCodeableConcept.coding = http://snomed.info/sct#12893009 "Biological"
* characteristic.definitionReference = Reference(mii-exa-mtb-study-cldn6-eligibility-criteria)

Instance: mii-exa-mtb-study-sponsor-biontech
InstanceOf: Organization
Title: "BioNTech Cell & Gene Therapies GmbH"
Description: "Sponsor: BioNTech Cell & Gene Therapies GmbH"
Usage: #example
* type = http://terminology.hl7.org/CodeSystem/organization-type#crs "Clinical Research Sponsor"
* name = "BioNTech Cell & Gene Therapies GmbH"

Instance: mii-exa-mtb-study-investigator-biontech
InstanceOf: MII_PR_Studie_Beteiligte_Person
Title: "BioNTech Responsible Person"
Description: "Investigator: BioNTech Responsible Person, BioNTech SE"
Usage: #example
* code = http://snomed.info/sct#768734005 "Study coordinator"

Instance: mii-exa-mtb-study-cldn6-location-0
InstanceOf: Location
Title: "NCT04503278 L0"
Description: "NCT04503278 Location 0"
Usage: #example
* name = "Peter MacCallum Cancer Centre"
* address.city = "Melbourne"
* address.state = "Victoria"
* address.postalCode = "3000"
* address.country = "Australia"
* position.longitude = 144.96332
* position.latitude = -37.814

Instance: mii-exa-mtb-study-cldn6-location-1
InstanceOf: Location
Title: "NCT04503278 L1"
Description: "NCT04503278 Location 1"
Usage: #example
* name = "Charité - Universitätsmedizin Berlin - Campus Benjamin Franklin"
* address.city = "Berlin"
* address.postalCode = "12200"
* address.country = "Germany"
* position.longitude = 13.41053
* position.latitude = 52.52437

Instance: mii-exa-mtb-study-cldn6-location-2
InstanceOf: Location
Title: "NCT04503278 L2"
Description: "NCT04503278 Location 2"
Usage: #example
* name = "Universitätsklinikum Erlangen - Hämatologie & Intrinsische Onkologie - Medizinische Klinik 5"
* address.city = "Erlangen"
* address.postalCode = "91054"
* address.country = "Germany"
* position.longitude = 11.00783
* position.latitude = 49.59099

Instance: mii-exa-mtb-study-cldn6-location-3
InstanceOf: Location
Title: "NCT04503278 L3"
Description: "NCT04503278 Location 3"
Usage: #example
* name = "Universitätsklinikum Hamburg Eppendorf - II Medizinische Klinik und Poliklinik"
* address.city = "Hamburg"
* address.postalCode = "20246"
* address.country = "Germany"
* position.longitude = 10.01534
* position.latitude = 53.57532

Instance: mii-exa-mtb-study-cldn6-location-4
InstanceOf: Location
Title: "NCT04503278 L4"
Description: "NCT04503278 Location 4"
Usage: #example
* name = "Medizinische Hochschule Hannover - Klinik für Hämatologie, Hämostaseologie, Onkologie und Stammzelltransplantation"
* address.city = "Hannover"
* address.postalCode = "30625"
* address.country = "Germany"
* position.longitude = 9.73322
* position.latitude = 52.37052

Instance: mii-exa-mtb-study-cldn6-location-5
InstanceOf: Location
Title: "NCT04503278 L5"
Description: "NCT04503278 Location 5"
Usage: #example
* name = "Nationales Centrum für Tumorerkrankungen (NCT) Heidelberg"
* address.city = "Heidelberg"
* address.postalCode = "69120"
* address.country = "Germany"
* position.longitude = 8.69079
* position.latitude = 49.40768

Instance: mii-exa-mtb-study-cldn6-location-6
InstanceOf: Location
Title: "NCT04503278 L6"
Description: "NCT04503278 Location 6"
Usage: #example
* name = "Universitätsklinikum Köln AÖR-Centrum für Integrierte Onkologie (CIO)-Studienzentrum der Klinik I für Innere Medizin (CTU Cologne)"
* address.city = "Köln"
* address.postalCode = "50937"
* address.country = "Germany"
* position.longitude = 6.95
* position.latitude = 50.93333

Instance: mii-exa-mtb-study-cldn6-location-7
InstanceOf: Location
Title: "NCT04503278 L7"
Description: "NCT04503278 Location 7"
Usage: #example
* name = "Universitätsmedizin Mainz - III Medizinische Klinik und Poliklinik"
* address.city = "Mainz"
* address.postalCode = "55131"
* address.country = "Germany"
* position.longitude = 8.2791
* position.latitude = 49.98419

Instance: mii-exa-mtb-study-cldn6-location-8
InstanceOf: Location
Title: "NCT04503278 L8"
Description: "NCT04503278 Location 8"
Usage: #example
* name = "Universitätsklinikum Regensburg - Klinik und Poliklinik für Innere Medizin III"
* address.city = "Regensburg"
* address.postalCode = "93053"
* address.country = "Germany"
* position.longitude = 12.10161
* position.latitude = 49.01513

Instance: mii-exa-mtb-study-cldn6-location-9
InstanceOf: Location
Title: "NCT04503278 L9"
Description: "NCT04503278 Location 9"
Usage: #example
* name = "He Nederlands Kanker Instituut (The Netherlands Cancer Institute) - Antoni van Leeuwenhoek Ziekenhuis (NKI-AVL)"
* address.city = "Amsterdam"
* address.postalCode = "1066"
* address.country = "Netherlands"
* position.longitude = 4.88969
* position.latitude = 52.37403

Instance: mii-exa-mtb-study-cldn6-location-10
InstanceOf: Location
Title: "NCT04503278 L10"
Description: "NCT04503278 Location 10"
Usage: #example
* name = "Erasmus MC - Universitair Medisch Centrum - Medical oncology"
* address.city = "Rotterdam"
* address.postalCode = "3015"
* address.country = "Netherlands"
* position.longitude = 4.47917
* position.latitude = 51.9225

Instance: mii-exa-mtb-study-cldn6-location-11
InstanceOf: Location
Title: "NCT04503278 L11"
Description: "NCT04503278 Location 11"
Usage: #example
* name = "Karolinska Comprehensive Cancer Center Cancerstudieenheten Huddinge Karolinska Universitetssjukhuset"
* address.city = "Stockholm"
* address.postalCode = "14186"
* address.country = "Sweden"
* position.longitude = 18.0649
* position.latitude = 59.33258

// Prio 2.2: TEDOVA (NCT04713514, PI Prof. Schochter, Ulm. platin-sensibles Rezidiv (=CR, PR oder SD), nach mind. 4 Zyklen Platin im Rezidiv und HLA-A2)
// Einschluss prüfen in TEDOVA: OSE2101 (Neo-Epitop-Vakzin)+/- Pembrolizumab vs. BSC in Platin-sensitiven
// rez. Ov-CA (NCT04713514, PI Prof. Schochter, Ulm. platin-sensibles Rezidiv (=CR, PR oder SD), nach
// mind. 4 Zyklen Platin im Rezidiv und HLA-A2).

Instance: mii-exa-mtb-study-tedova
InstanceOf: MII_PR_MTB_Studie
Title: "TEDOVA"
Description: "Studie: TEDOVA - OSE2101 (Neo-Epitop-Vakzin)+/- Pembrolizumab vs. BSC in Platin-sensitiven rez. Ov-CA"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie)
* status = #active
* identifier[+].system = https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct
* identifier[=].value = "04713514"

Instance: mii-exa-mtb-study-request-tedova
InstanceOf: MII_PR_MTB_Studieneinschluss_Anfrage
Title: "TEDOVA"
Description: "Studieeinschlussempfehlung: TEDOVA - OSE2101 (Neo-Epitop-Vakzin)+/- Pembrolizumab vs. BSC in Platin-sensitiven rez. Ov-CA"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage)
* status = #draft
* subject = Reference(Patient/PatientKimMusterperson)
* supportingInfo = Reference(mii-exa-mtb-study-tedova)
* insert BeschlussSubPrioritaet(2.2)

// Prio 2.3: Studie bei CCNE1 ampl. OvCA (UKF, PI Prof. Duque, ID ausstehend)
// Zudem Beachtung einer geplanten Studie bei CCNE1 ampl. OvCA (UKF, PI Prof. Duque, ID ausstehend).

Instance: mii-exa-mtb-study-ccne1
InstanceOf: MII_PR_MTB_Studie
Title: "CCNE1"
Description: "Studie: CCNE1 ampl. OvCA"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie)
* status = #active

Instance: mii-exa-mtb-study-request-ccne1
InstanceOf: MII_PR_MTB_Studieneinschluss_Anfrage
Title: "CCNE1"
Description: "Studieneinschlussempfehlung: CCNE1 ampl. OvCA"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage)
* status = #draft
* subject = Reference(Patient/PatientKimMusterperson)
* supportingInfo = Reference(mii-exa-mtb-study-ccne1)
* insert BeschlussSubPrioritaet(2.3)
