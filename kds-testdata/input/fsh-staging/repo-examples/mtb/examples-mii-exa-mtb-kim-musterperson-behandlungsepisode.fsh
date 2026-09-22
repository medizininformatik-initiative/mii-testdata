Instance: mii-exa-mtb-kim-musterperson-behandlungsepisode
InstanceOf: MII_PR_MTB_Behandlungsepisode
Title: "MTB-Behandlungsepisode Kim Musterperson"
Description: "Molekulares Tumorboard-Behandlungsepisode von Kim Musterperson ab 01.03.2022"
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode)

* status = #completed

// Patientin Kim Musterperson (siehe KDS Erweiterungsmodul Onkologie)
* subject = Reference(Patient/PatientKimMusterperson)

// Zeitraum der Behandlungsepisode Molekulares Tumorboard
* effectivePeriod.start = 2023-01-20
* effectivePeriod.end = 2023-03-28

// Primärdiagnosie (siehe KDS Erweiterungsmodul Onkologie)
* problem = Reference(Condition/mii-exa-mtb-kim-diagnose)

// NGS Bericht
* investigation[NgsBericht][+].item = Reference(DiagnosticReport/mii-exa-mtb-kim-musterperson-ngs-bericht)

// Molekular Pathologiebefund
* investigation[MolekularPathologieBefund][+].item = Reference(DiagnosticReport/PatientKimMusterperson-MolecularPathologyReport-1)

// Allgemeiner Leistungszustand ECOG (siehe KDS Erweiterungsmodul Onkologie)
* investigation[ECOG][+].item = Reference(Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog)

// TODO: Ggf. nochmal slicen zwischen Imaging, Procedure und MedicationStatement?
// NOTE: Wobei man gucken muss, dass die Zeitliche Reihenfolge passt
// 10.06.2021 CT Abdomen (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-1)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-1)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-2)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-3)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-4)

// 15.06.2021 Aszitespunktion (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-2)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-5)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-6)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-7)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-8)
// 22.06.2021 CT Thorax (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-3)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-9)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-10)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-11)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-12)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-13)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-14)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-15)

// 30.09.2021 OP (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-4)
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-4a)
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-4b)
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-4c)
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-4d)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-16)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-17)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-18)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-19)

// 05.07.21-05.09.21 Chemotherapie Carboplatin/Paclitaxel (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-SystemicTherapy-1)

// 08.11.21-09.01.22 Chemotherapie Carboplatin/Gemcitabin (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-SystemicTherapy-2)

// 25.01.22 Chemotherapie Niraparib (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-SystemicTherapy-3)

// 02.01.23 Aufklärung Molekulares Tumorboard
* investigation[Einwilligung].item = Reference(mii-exa-mtb-kim-musterperson-aufklaerung)

// 04.01.23-24.05.23 Chemotherapie Carboplatin/Doxorubicin
* supportingInfo[Vortherapie][+] = Reference(Procedure/MTBChemo1Procedure)

// 20.03.2023 CT T/A
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-5)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-20)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-21)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-22)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-23)

// 24.06.23-12.10.23 Chemotherapie Mirvetuximab soravtansine
* supportingInfo[Vortherapie][+] = Reference(Procedure/MTBChemo2Procedure)

// 20.08.2023 CT T/A
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-6)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-24)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-25)

// 22.10.2023 CT T/A
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-7)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-26)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-27)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-29)
* supportingInfo[Vorbefund][+] = Reference(Observation/PatientKimMusterperson-Observation-30)

// Aufklärung Molekulares Tumorboard

Instance: mii-exa-mtb-kim-musterperson-aufklaerung
InstanceOf: MII_PR_MTB_Consent_Given
Title: "Einwilligung zur MTB-Besprechung Kim Musterperson"
Description: "Einwilligung von Kim Musterperson zur Besprechung im Molekularen Tumorboard vom 02.01.2023"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given)
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = 2023-01-02
* valueCodeableConcept = http://snomed.info/sct#373066001 "Yes (qualifier value)"
