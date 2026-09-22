Instance: mii-exa-mtb-kim-musterperson-therapieplan
InstanceOf: MII_PR_MTB_Therapieplan
Title: "MTB-Beschluss Kim Musterperson"
Description: "Beschluss MTB-Fall Kim Musterperson vom 28.03.2023"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan)
* status = #active

// Prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)
* category = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ#praeth

// Patientin Kim Musterperson (siehe KDS Erweiterungsmodul Onkologie)
* subject = Reference(Patient/PatientKimMusterperson)

// Beschluss nach Wiedervorstellung am 28.03.2023
* created = 2023-03-28

// Primärdiagnose (siehe KDS Erweiterungsmodul Onkologie)
* addresses = Reference(Condition/PatientKimMusterperson-PrimaryDiagnosis-2)

// Behandlungsepisode
* supportingInfo[Behandlungsepisode] = Reference(mii-exa-mtb-kim-musterperson-behandlungsepisode)

// Prio 1 - Therapieempfehlung: Mirvetuximab soravtansine (m1A)
* activity[extended][Therapieempfehlung][+].reference = Reference(mii-exa-mtb-medication-request-mirvetuximab)
* activity[extended][Therapieempfehlung][=].outcomeReference = Reference(MTBChemo2Procedure)

// Prio 2.1 - Studieneinschlussempfehlung: Phase 1/2 CLDN6 CAR-T-Zell-Studie (Kohorte 2: Eierstockkrebs, PI Dr. Desuki, Mainz oder Prof. Ungerechts, Heidelberg)
* activity[extended][Studieneinschlussempfehlung][+].reference = Reference(mii-exa-mtb-study-request-cldn6)

// Prio 2.2 - Studieneinschlussempfehlung: TEDOVA (NCT04713514, PI Prof. Schochter, Ulm. platin-sensibles Rezidiv (=CR, PR oder SD), nach mind. 4 Zyklen Platin im Rezidiv und HLA-A2)
* activity[extended][Studieneinschlussempfehlung][+].reference = Reference(mii-exa-mtb-study-request-tedova)

// Prio 2.3 - Studieneinschlussempfehlung: Studie bei CCNE1 ampl. OvCA (UKF, PI Prof. Duque, ID ausstehend)
* activity[extended][Studieneinschlussempfehlung][+].reference = Reference(mii-exa-mtb-study-request-ccne1)

// Prio 3 - Therapieempfehlung: Trastuzumab deruxtecan (m1B)
* activity[extended][Therapieempfehlung][+].reference = Reference(mii-exa-mtb-medication-request-trastuzumab-deruxtecan)

// Prio 4 - Therapieempfehlung: Adavosertib +/- Carboplatin (m1B) sofern verfügbar
* activity[extended][Therapieempfehlung][+].reference = Reference(mii-exa-mtb-request-group-adavosertib-carboplatin)

// Prio 5 - Therapieempfehlung: Lunresertib + Camonsertib (m1B) sofern verfügbar
* activity[extended][Therapieempfehlung][+].reference = Reference(mii-exa-mtb-request-group-lunresertib-camonsertib)

// Prio 6 - Therapieempfehlung: MEKi, z.B. Cobimetinib (m3)
* activity[extended][Therapieempfehlung][+].reference = Reference(mii-exa-mtb-medication-request-cobimetinib)


// NOTE: Zusätzliche Angaben, die nicht zum fiktiven Therapieverlauf passen und nur der Veranschaulichung dienen
* activity[extended][HumangenetischeBeratung][+].reference = Reference(mii-exa-mtb-kim-humangenetische-beratung-aszites)

* activity[extended][HistologieEvaluation][+].reference = Reference(mii-exa-mtb-kim-histologie-evaluation-aszites)

* activity[extended][Biopsie][+].reference = Reference(mii-exa-mtb-kim-rebiopsie-aszites)
