// Prozedur Patient-1
Instance: mii-exa-test-data-patient-1-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Exzision und Resektion an Lunge für Patient-1"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure|2024.0.0"
* insert AddProzedur(completed, 387713003, 726427004, 2023, 5-323.51, mii-exa-test-data-patient-1, 44714003, Exzision und Resektion an Lunge)
* performedPeriod.start = "2024-02-20T10:14:00+01:00"
* performedPeriod.end = "2024-02-20T12:47:00+01:00"
* extension[Dokumentationsdatum].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* extension[Dokumentationsdatum].valueDateTime = "2024-02-20T16:15:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)

Instance: mii-exa-test-data-patient-1-prozedur-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Gabe von Dalbavancin für Patient-1"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure|2024.0.0"
* insert AddProzedur(completed, 18629005, 281790008, 2024, 6-00g.33, mii-exa-test-data-patient-1, 789218009, Dalbavancin parenteral)
* performedPeriod.start = "2024-02-16T10:20:00.000+01:00"
* performedPeriod.end = "2024-02-16T10:50:00.000+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)

// Patient-2 Prozeduren (Lungenkarzinom, verstorben)
Instance: mii-exa-test-data-patient-2-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Thorakotomie mit Lobektomie des rechten Oberlappens für Patient-2"
* insert TestDataLabel
* insert AddProzedur(completed, 387713003, 726428009, 2024, 5-322.d1, mii-exa-test-data-patient-2, 39607008, Lobektomie des rechten Oberlappens)
* code.coding[ops].extension[http://fhir.de/StructureDefinition/seitenlokalisation].valueCoding = $seitenlokalisation#R
* performedPeriod.start = "2024-03-05T08:00:00+01:00"
* performedPeriod.end = "2024-03-05T12:30:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Thorakotomie mit Lobektomie des rechten Oberlappens bei Lungenkarzinom"

Instance: mii-exa-test-data-patient-2-prozedur-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Postoperative Intensivüberwachung für Patient-2"
* insert TestDataLabel
* insert AddProzedur(completed, 394841004, 182810003, 2024, 8-930, mii-exa-test-data-patient-2, 442083009, Überwachung auf Intensivstation)
* performedPeriod.start = "2024-03-05T12:30:00+01:00"
* performedPeriod.end = "2024-03-10T10:00:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#74964007 "Other"
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Postoperative Intensivüberwachung nach Lobektomie"

Instance: mii-exa-test-data-patient-2-prozedur-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Transfusion von Erythrozytenkonzentrat für Patient-2"
* insert TestDataLabel
* insert AddProzedur(completed, 18629005, 182836005, 2024, 8-800.61, mii-exa-test-data-patient-2, 19715009, Gabe von Erythrozytenkonzentrat)
* performedPeriod.start = "2024-03-08T14:00:00+01:00"
* performedPeriod.end = "2024-03-08T18:00:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#264931009 "Symptomatic"
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Transfusion von 2 Einheiten Erythrozytenkonzentrat bei Anämie"

// Patient-3 Prozeduren (Anorektalkarzinom)
Instance: mii-exa-test-data-patient-3-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Rektoskopie mit Biopsieentnahme für Patient-3"
* insert TestDataLabel
* insert AddProzedur(completed, 165197003, 274324002, 2022, 1-444.7, mii-exa-test-data-patient-3, 372237002, Endoskopische Biopsie des Rektums)
* performedDateTime = "2022-03-15T09:30:00+02:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Rektoskopie mit Entnahme von Gewebeproben zur histologischen Untersuchung"

Instance: mii-exa-test-data-patient-3-prozedur-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Tiefe anteriore Rektumresektion für Patient-3"
* insert TestDataLabel
* insert AddProzedur(completed, 387713003, 265414003, 2022, 5-485.02, mii-exa-test-data-patient-3, 34402009, Tiefe anteriore Rektumresektion)
* performedPeriod.start = "2022-04-08T07:30:00+02:00"
* performedPeriod.end = "2022-04-08T13:45:00+02:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Radikale Rektumresektion mit totaler mesorektaler Exzision"

Instance: mii-exa-test-data-patient-3-prozedur-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Chemotherapie für Patient-3"
* insert TestDataLabel
* insert AddProzedur(completed, 18629005, 724159000, 2022, 6-001.h4, mii-exa-test-data-patient-3, 734748008, Applikation von Medikamenten)
* performedPeriod.start = "2022-04-25T10:00:00+02:00"
* performedPeriod.end = "2022-07-20T16:00:00+02:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Adjuvante Chemotherapie mit FOLFOX-Schema"

// Patient-4 Prozeduren (Magenkarzinom)
Instance: mii-exa-test-data-patient-4-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Ösophagogastroduodenoskopie mit Biopsie-Entnahme für Patient-4"
* insert TestDataLabel
* insert AddProzedur(completed, 165197003, 79121003, 2020, 1-440.9, mii-exa-test-data-patient-4, 69695003, Endoskopische Biopsie des Magens)
* performedDateTime = "2020-08-20T14:00:00+02:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* encounter = Reference(mii-exa-test-data-patient-4-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Ösophagogastroduodenoskopie mit Biopsie-Entnahme"

Instance: mii-exa-test-data-patient-4-prozedur-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Partielle Gastrektomie für Patient-4"
* insert TestDataLabel
* insert AddProzedur(completed, 387713003, 83985009, 2020, 5-437.11, mii-exa-test-data-patient-4, 119212007, Partielle Gastrektomie)
* performedPeriod.start = "2020-09-18T08:00:00+02:00"
* performedPeriod.end = "2020-09-18T14:30:00+02:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* encounter = Reference(mii-exa-test-data-patient-4-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Subtotale Gastrektomie mit Billroth-II-Anastomose"

// Patient-5 Prozeduren (Endometriose)
Instance: mii-exa-test-data-patient-5-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Diagnostische Laparoskopie zur Endometriose-Abklärung für Patient-5"
* insert TestDataLabel
* insert AddProzedur(completed, 165197003, 73632009, 2023, 1-694, mii-exa-test-data-patient-5, 362696003, Diagnostische Laparoskopie)
* performedDateTime = "2023-07-13T09:00:00+02:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* encounter = Reference(mii-exa-test-data-patient-5-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Diagnostische Laparoskopie zur Endometriose-Abklärung"

Instance: mii-exa-test-data-patient-5-prozedur-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Laparoskopische Exzision von Endometriose für Patient-5"
* insert TestDataLabel
* insert AddProzedur(completed, 387713003, 713174005, 2023, 5-681.32, mii-exa-test-data-patient-5, 818983003, Laparoskopische Exzision von Endometriose)
* performedPeriod.start = "2023-07-13T09:30:00+02:00"
* performedPeriod.end = "2023-07-13T12:00:00+02:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* encounter = Reference(mii-exa-test-data-patient-5-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Laparoskopische Sanierung der Endometriose-Herde"

// Patient-6 Prozeduren (Gastritis)
Instance: mii-exa-test-data-patient-6-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Ösophagogastroduodenoskopie bei Gastritis für Patient-6"
* insert TestDataLabel
* insert AddProzedur(completed, 165197003, 76009000, 2022, 1-632.0, mii-exa-test-data-patient-6, 32849002, Ösophagogastroduodenoskopie)
* performedDateTime = "2022-03-15T10:30:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* encounter = Reference(mii-exa-test-data-patient-6-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Endoskopische Untersuchung des oberen Gastrointestinaltrakts bei Gastritis"

Instance: mii-exa-test-data-patient-6-prozedur-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Atemtest auf Helicobacter pylori für Patient-6"
* insert TestDataLabel
* insert AddProzedur(completed, 165197003, 408652004, 2022, 1-760, mii-exa-test-data-patient-6, 122865005, Helicobacter pylori-Atemtest)
* performedDateTime = "2022-03-16T08:00:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* encounter = Reference(mii-exa-test-data-patient-6-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "C13-Harnstoff-Atemtest zum Nachweis von Helicobacter pylori"

// Patient-7 Prozeduren (Bronchitis)
Instance: mii-exa-test-data-patient-7-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Flexible Bronchoskopie mit bronchoalveolärer Lavage für Patient-7"
* insert TestDataLabel
* insert AddProzedur(completed, 165197003, 10847001, 2024, 1-690.0, mii-exa-test-data-patient-7, 321667001, Bronchoskopie)
* performedDateTime = "2024-01-11T14:00:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* encounter = Reference(mii-exa-test-data-patient-7-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Flexible Bronchoskopie mit bronchoalveolärer Lavage"

Instance: mii-exa-test-data-patient-7-prozedur-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Intravenöse Antibiotikatherapie für Patient-7"
* insert TestDataLabel
* insert AddProzedur(completed, 277132007, 281789004, 2024, 8-987.13, mii-exa-test-data-patient-7, 321667001, Antibiotika-Therapie)
* performedPeriod.start = "2024-01-10T16:00:00+01:00"
* performedPeriod.end = "2024-01-17T12:00:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* encounter = Reference(mii-exa-test-data-patient-7-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Intravenöse Antibiotikatherapie mit Amoxicillin/Clavulansäure"

// Patient-8 Prozeduren (Myokardinfarkt, verstorben)
Instance: mii-exa-test-data-patient-8-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Koronarangiographie bei Myokardinfarkt für Patient-8"
* insert TestDataLabel
* insert AddProzedur(completed, 165197003, 33367005, 2023, 1-275.2, mii-exa-test-data-patient-8, 41801008, Koronarangiographie)
* performedDateTime = "2023-11-12T07:30:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* encounter = Reference(mii-exa-test-data-patient-8-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Notfall-Koronarangiographie bei akutem STEMI"

Instance: mii-exa-test-data-patient-8-prozedur-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Perkutane Koronarangioplastie mit Stent-Implantation für Patient-8"
* insert TestDataLabel
* insert AddProzedur(completed, 387713003, 41339005, 2023, 8-837.m0, mii-exa-test-data-patient-8, 41801008, Perkutane Koronarangioplastie)
* performedPeriod.start = "2023-11-12T08:00:00+01:00"
* performedPeriod.end = "2023-11-12T10:30:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* encounter = Reference(mii-exa-test-data-patient-8-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Primäre PCI mit Stent-Implantation in die LAD"

Instance: mii-exa-test-data-patient-8-prozedur-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Kardiopulmonale Reanimation bei Myokardinfarkt für Patient-8"
* insert TestDataLabel
* insert AddProzedur(completed, 277132007, 89666000, 2023, 8-771, mii-exa-test-data-patient-8, 113257007, Kardiopulmonale Reanimation)
* performedPeriod.start = "2023-11-15T14:20:00+01:00"
* performedPeriod.end = "2023-11-15T15:45:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* encounter = Reference(mii-exa-test-data-patient-8-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Erfolglose kardiopulmonale Reanimation bei Kammerflimmern"

// Patient-9 Prozeduren (Ovarialzyste)
Instance: mii-exa-test-data-patient-9-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Diagnostische Laparoskopie bei Ovarialzyste für Patient-9"
* insert TestDataLabel
* insert AddProzedur(completed, 165197003, 73632009, 2024, 1-694, mii-exa-test-data-patient-9, 20304007, Diagnostische Laparoskopie)
* performedDateTime = "2024-02-23T10:00:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* encounter = Reference(mii-exa-test-data-patient-9-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Laparoskopische Abklärung der Ovarialzyste"

Instance: mii-exa-test-data-patient-9-prozedur-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Laparoskopische Zystektomie bei Ovarialzyste für Patient-9"
* insert TestDataLabel
* insert AddProzedur(completed, 387713003, 450560001, 2024, 5-651.82, mii-exa-test-data-patient-9, 15497006, Laparoskopische Zystektomie)
* performedPeriod.start = "2024-02-23T10:30:00+01:00"
* performedPeriod.end = "2024-02-23T12:15:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* encounter = Reference(mii-exa-test-data-patient-9-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Laparoskopische Entfernung der Ovarialzyste mit Ovarerhalt"

// Patient-10 Prozeduren (Migräne)
Instance: mii-exa-test-data-patient-10-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Computertomographie des Schädels bei Migräne für Patient-10"
* insert TestDataLabel
* insert AddProzedur(completed, 165197003, 169066007, 2019, 3-200, mii-exa-test-data-patient-10, 89546000, Computertomographie des Schädels)
* performedDateTime = "2019-05-15T16:30:00+02:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* encounter = Reference(mii-exa-test-data-patient-10-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Kraniale CT zum Ausschluss struktureller Ursachen der Kopfschmerzen"

Instance: mii-exa-test-data-patient-10-prozedur-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Migräne-Prophylaxe mit Topiramat für Patient-10"
* insert TestDataLabel
* insert AddProzedur(completed, 277132007, 408381007, 2019, 8-918.00, mii-exa-test-data-patient-10, 86762007, Migräne-Prophylaxe)
* performedPeriod.start = "2019-05-16T12:00:00+02:00"
* performedPeriod.end = "2019-05-22T10:00:00+02:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* encounter = Reference(mii-exa-test-data-patient-10-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* note.text = "Einstellung auf Migräne-Prophylaxe mit Topiramat"