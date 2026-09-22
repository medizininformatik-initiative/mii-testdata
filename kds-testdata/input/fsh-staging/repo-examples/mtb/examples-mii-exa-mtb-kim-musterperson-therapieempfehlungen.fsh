Instance: mii-exa-mtb-medication-request-mirvetuximab
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Mirvetuximab soravtansine"
Description: "Therapieempfehlung: Mirvetuximab soravtansine, Priorität: 1, Evidenzgrad: m1A"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)
* status = #completed
* intent = #proposal
* authoredOn = 2023-03-28
* subject = Reference(Patient/PatientKimMusterperson)
* basedOn = Reference(CarePlan/mii-exa-mtb-kim-musterperson-therapieplan)
// Hier sonst auch wirkstoffgruppe angeben - nur bei targeted therapy macht das evtl. keinen Sinn
* medicationCodeableConcept.coding[+] = http://fdasis.nlm.nih.gov#98DE7VN88D "MIRVETUXIMAB SORAVTANSINE"
* medicationCodeableConcept.coding[+] = http://fhir.de/CodeSystem/bfarm/atc#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[=].version = "2025"
* medicationCodeableConcept.coding[+] = http://fhir.de/CodeSystem/bfarm/atc#L01FX "Andere monoklonale Antikörper und Antikörper-Wirkstoff-Konjugate"
* medicationCodeableConcept.coding[=].version = "2025"
* reasonReference[Primaertumor] = Reference(PatientKimMusterperson-PrimaryDiagnosis-2)

* insert BeschlussPrioritaet(1)
* insert BeschlussEvidenzZweiQuellen(m1A, http://doi.org, 10.1200/JCO.2022.40.16_suppl.5512, http://www.ncbi.nlm.nih.gov/pubmed, 38055253)

// Prio 3: Trastuzumab deruxtecan (m1B)
// Her2neu Score 2+: Bei Her2low in der immunhistochemischen Untersuchung besteht eine off-label Therapieoption mit
// Trastuzumab Deruxtecan. In einer Phase-III-Studie Trastuzumab Deruxtecan vs. Physicians choice Chemotherapyie bei
// Her2low Mamma-Cas zeigte sich ein deutlich positiver Effekt sowohl auf PFS als auch auf OS durch die Behandlung mit
// Trastuzumab deruxtecan (PMID 35665782, EL m1A). Daten aus der DESTINY-PanTumor02-Studie (Phase II), wurden auf dem
// ASCO2023 präsentiert: hier zeigt sich eine sehr gute ORR von 45% in der Kohorte für Ovarialkarzinome, wobei gemäß
// zentralem Assessment auch Score1+-Patient*innen eingeschlossen worden waren. 57% vom Patientinnen mit HER2-pos
// Endometrium Karzinom haben auf die Therapie mit Trastuzumab- Deruxtecan angesprochen
// (10.1200/JCO.2023.41.17_suppl.LBA3000, PMID: 37870536, EL m1B).

Instance: mii-exa-mtb-medication-request-trastuzumab-deruxtecan
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Trastuzumab deruxtecan"
Description: "Therapieempfehlung: Trastuzumab deruxtecan, Priorität: 3, Evidenzgrad: m1B"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)
* status = #draft
* intent = #proposal
* authoredOn = 2023-03-28
* subject = Reference(Patient/PatientKimMusterperson)
* medicationCodeableConcept.coding = http://fhir.de/CodeSystem/bfarm/atc#L01FD04 "Trastuzumab deruxtecan"
* medicationCodeableConcept.coding.version = "2025"
* reasonReference[Primaertumor] = Reference(PatientKimMusterperson-PrimaryDiagnosis-2)
* insert BeschlussPrioritaet(3)
* insert BeschlussEvidenzDreiQuellen(m1B, http://www.ncbi.nlm.nih.gov/pubmed, 35665782, http://www.ncbi.nlm.nih.gov/pubmed, 37870536, http://doi.org, 10.1200/JCO.2023.41.17_suppl.LBA3000)

// Prio 4: Adavosertib +/- Carboplatin (m1B) sofern verfügbar
// Zudem bei CCNE1 ampl Rationale für Kombination aus WEE1-Inhibitor Adavosertib +/- Carboplatin
// (PMID: 37236033, EL m1B), Verfügbarkeit prüfen, jeweils nach Ausschöpfung der LL-Therapie.

Instance: mii-exa-mtb-medication-request-adavosertib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Adavosertib"
Description: "Therapieempfehlung: Adavosertib"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)
* status = #draft
* intent = #option
* authoredOn = 2023-03-28
* subject = Reference(Patient/PatientKimMusterperson)
* medicationCodeableConcept.coding = http://fdasis.nlm.nih.gov#K2T6HJX3I3 "ADAVOSERTIB"
* reasonReference[Primaertumor] = Reference(PatientKimMusterperson-PrimaryDiagnosis-2)

Instance: mii-exa-mtb-medication-request-carboplatin
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Carboplatin"
Description: "Therapieempfehlung: Carboplatin"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)
* status = #draft
* intent = #option
* authoredOn = 2023-03-28
* subject = Reference(Patient/PatientKimMusterperson)
* medicationCodeableConcept.coding = http://fhir.de/CodeSystem/bfarm/atc#L01XA02 "Carboplatin"
* medicationCodeableConcept.coding.version = "2025"
* reasonReference[Primaertumor] = Reference(PatientKimMusterperson-PrimaryDiagnosis-2)

Instance: mii-exa-mtb-request-group-adavosertib-carboplatin
InstanceOf: MII_PR_MTB_Therapieempfehlung_Kombination
Title: "Adavosertib +/- Carboplatin"
Description: "Therapieempfehlung Kombinationstherapie: Adavosertib +/- Carboplatin"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination)
* status = #draft
* intent = #proposal
* authoredOn = 2023-03-28
* subject = Reference(Patient/PatientKimMusterperson)
* code = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ#CZ "Chemotherapie + zielgerichtete Substanzen"
* action.resource = Reference(mii-exa-mtb-medication-request-adavosertib)
* action.resource = Reference(mii-exa-mtb-medication-request-carboplatin)
* insert BeschlussPrioritaet(4)
* insert BeschlussEvidenz(m1B, http://www.ncbi.nlm.nih.gov/pubmed, 37236033)

// 5. Lunresertib + Camonsertib (m1B) sofern verfügbar
// Eine Phase I-Studie mit dem first-in-class PKMYT1-Inhibitor Lunresertib und dem ATR Inhibitor Camonsertib zeigte
// erste klinische Aktivität mit ordentlichem Ansprechen (OR 23,6%, 2x cPR bei OvarialCA mit CCNE1ampl dokumentiert,
// https://www.reparerx.com/wp-content/uploads/2023/10/ANE_B156_MYTHIC-clinical_poster.pdf und
// https://doi.org/10.1158/1535-7163.TARG-23-PR008, EL m1B). Verfügbarkeit prüfen.

Instance: mii-exa-mtb-medication-request-lunresertib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Lunresertib"
Description: "Therapieempfehlung: Lunresertib"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)
* status = #draft
* intent = #option
* authoredOn = 2023-03-28
* subject = Reference(Patient/PatientKimMusterperson)
* medicationCodeableConcept.coding = http://fdasis.nlm.nih.gov#N95U3A7N57 "LUNRESERTIB"
* reasonReference[Primaertumor] = Reference(PatientKimMusterperson-PrimaryDiagnosis-2)

Instance: mii-exa-mtb-medication-request-camonsertib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Camonsertib"
Description: "Therapieempfehlung: Camonsertib"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)
* status = #draft
* intent = #option
* authoredOn = 2023-03-28
* subject = Reference(Patient/PatientKimMusterperson)
* medicationCodeableConcept.coding = http://fdasis.nlm.nih.gov#S1Z7Y5G56T "CAMONSERTIB"
* reasonReference[Primaertumor] = Reference(PatientKimMusterperson-PrimaryDiagnosis-2)

Instance: mii-exa-mtb-request-group-lunresertib-camonsertib
InstanceOf: MII_PR_MTB_Therapieempfehlung_Kombination
Title: "Lunresertib + Camonsertib"
Description: "Therapieempfehlung Kombinationstherapie: Lunresertib + Camonsertib, Priorität: 5, Evidenzgrad: m1B"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination)
* status = #draft
* intent = #proposal
* authoredOn = 2023-03-28
* subject = Reference(Patient/PatientKimMusterperson)
* code = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ#ZS "zielgerichtete Substanzen"
* action.resource = Reference(mii-exa-mtb-medication-request-lunresertib)
* action.resource = Reference(mii-exa-mtb-medication-request-camonsertib)
* insert BeschlussPrioritaet(5)
* insert BeschlussEvidenz(m1B, http://doi.org, 10.1158/1535-7163.TARG-23-PR008)
// Removed BeschlussEvidenzQuelle - cannot have both valueIdentifier and valueString in same extension

// 6. MEKi, z.B. Cobimetinib (m3)
// PIK3R1mut (E160*): Ausweislich präklinischer Daten liegt ein Ansprechen auf MEK-Inhibition nahe (PMID: 31209687, EL m3).

Instance: mii-exa-mtb-medication-request-cobimetinib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Cobimetinib"
Description: "Therapieempfehlung: Cobimetinib, Priorität: 6, Evidenzgrad: m3"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)
* status = #draft
* intent = #option
* authoredOn = 2023-03-28
* subject = Reference(Patient/PatientKimMusterperson)
* medicationCodeableConcept.coding = http://fdasis.nlm.nih.gov#ER29L26N1X "COBIMETINIB"
* reasonReference[Primaertumor] = Reference(PatientKimMusterperson-PrimaryDiagnosis-2)
* insert BeschlussPrioritaet(6)
* insert BeschlussEvidenz(m3, http://www.ncbi.nlm.nih.gov/pubmed, 31209687)
