// ============================================================================
// ICU - Observations (alle Profile)
// Intensivmedizin Testdaten fuer Patient-1
// ============================================================================

// --- Bilanz Observations ---

Instance: mii-exa-test-data-patient-1-icu-bilanz-haemofiltr-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-haemofiltration-einzelmesswerte
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Abnahme Haemofiltration Einzelmesswerte"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251850009 "Ultrafiltrate fluid loss (observable entity)"
* code.coding[loinc] = $loinc#99741-1 "Ultrafiltrate volume removed"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 120 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-drainage-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-drainage-generisch
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Drainage Generisch"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251843005 "Fluid output from drain"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 50 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-fluess-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-fluessigkeit-gesamt
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Fluessigkeit Gesamt"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251847006 "Total fluid loss"
* code.coding[loinc] = $loinc#9257-7 "Fluid output total Measured"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 2200 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-galle-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-gallenfluessigkeit
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Gallenfluessigkeit"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#1162667009 "Volume of drainage of bile duct (observable entity)"
* code.coding[loinc] = $loinc#9113-2 "Fluid output biliary drain"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 30 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-gallengang-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-gallenfluessigkeit
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Gallengang"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#1162667009 "Volume of drainage of bile duct (observable entity)"
* code.coding[loinc] = $loinc#9113-2 "Fluid output biliary drain"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 25 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-magen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-magensonde
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Magensonde"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#1162665001 "Volume of drainage of gastric contents (observable entity)"
* code.coding[loinc] = $loinc#79561-7 "Fluid output enteral tube [Volume] Measured"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 100 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-opdrain-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-op-drainage
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Opdrainage"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251844004 "Fluid output from surgical drain (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 75 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-pankreas-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-pankreasdrainage
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Pankreasdrainage"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#1162668004 "Volume of drainage of pancreatic fluid (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 20 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-stuhl-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-stuhlgang
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Stuhlgang"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[loinc] = $loinc#9217-1 "Output.stool [Volume]"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 200 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-urin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-urin
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Urin"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#364201005 "Urine output observable (observable entity)"
* code.coding[loinc] = $loinc#9187-6 "Urine output"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 1800 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-wunde-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-wunddrainage
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Wunddrainage"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251845003 "Fluid output from wound drain (observable entity)"
* code.coding[loinc] = $loinc#9203-1 "Fluid output wound drain"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 45 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-blutverlust-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-blutverlust
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Blutverlust"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#250771004 "Actual blood loss"
* code.coding[loinc] = $loinc#81661-1 "Blood loss [Volume] Measured"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 150 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-enteral-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-enterale-fluessigkeit
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Einfuhr Enterale Fluessigkeit"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251854000 "Enteral fluid input (observable entity)"
* code.coding[loinc] = $loinc#8953-2 "Fluid intake enteral tube Measured"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 1500 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-fluess-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-fluessigkeit-gesamt
Usage: #example
Description: "ICU Observation: SD MII ICU Bilanz Einfuhr Fluessigkeit Gesamt"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251852001 "Total fluid input (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 2500 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-oral-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-fluessigkeit-gesamt
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Einfuhr Oraler Fluessigkeit"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251852001 "Total fluid input (observable entity)"
* code.coding[loinc] = $loinc#9103-3 "Fluid intake total Measured"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 800 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ges-ausf-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-fluessigkeit-gesamt
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Gesamte Ausfuhr"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251847006 "Total fluid loss"
* code.coding[loinc] = $loinc#9257-7 "Fluid output total Measured"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 2400 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ges-einf-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-fluessigkeit-gesamt
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Gesamte Einfuhr"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251852001 "Total fluid input (observable entity)"
* code.coding[loinc] = $loinc#9103-3 "Fluid intake total Measured"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 2800 'ml' "ml"

Instance: mii-exa-test-data-patient-1-icu-bilanz-tages-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-tagesbilanz-fluessigkeit
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Gesamte Tages Bilanz"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251856003 "Fluid balance status (observable entity)"
* code.coding[loinc] = $loinc#9097-7 "Fluid balance 24 hour"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 400 'ml' "ml"

// --- ECT Observations ---

Instance: mii-exa-test-data-patient-1-icu-ect-art-druck-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-arterieller-druck
Usage: #example
Description: "ICU Observation: MII PR ICU Arterieller Druck"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#386534000 "Arterial blood pressure"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 85 'mm[Hg]' "mmHg"

Instance: mii-exa-test-data-patient-1-icu-ect-blutfl-cardio-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-blutfluss-cardiovasculaeres-geraet
Usage: #example
Description: "ICU Observation: MII PR ICU Blutfluss Cardiovasculaeres Geraet"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#444479000 "Rate of blood flow through cardiovascular device"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 4.5 'L/min' "L/min"

Instance: mii-exa-test-data-patient-1-icu-ect-blutfl-extra-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-blutfluss-extrakorporaler-gasaustausch
Usage: #example
Description: "ICU Observation: MII PR ICU Blutfluss Extrakorporaler Gasaustausch"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#251288004 "Extracorporeal gas exchange flow rate"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 3.0 'L/min' "L/min"

Instance: mii-exa-test-data-patient-1-icu-ect-blutfl-idx-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-blutflussindex-extrakorporaler-gasaustausch
Usage: #example
Description: "ICU Observation: MII PR ICU Blutflussindex Extrakorporaler Gasaustausch"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Renal dialysis (procedure)"
* code.coding[sct] = $sct#251289007 "Extracorporeal gas exchange flow index"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 1.8 'L/(min.m2)' "L/(min.m2)"

Instance: mii-exa-test-data-patient-1-icu-ect-dauer-extra-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dauer-extrakorporaler-gasaustausch
Usage: #example
Description: "ICU Observation: MII PR ICU Dauer Extrakorporaler Gasaustausch"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Renal dialysis (procedure)"
* code.coding[sct] = $sct#251286000 "Extracorporeal gas exchange duration"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 72 'h' "hours"

Instance: mii-exa-test-data-patient-1-icu-ect-dauer-haemo-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dauer-haemodialysesitzung
Usage: #example
Description: "ICU Observation: MII ICU Dauer Haemodialysesitzung"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Renal dialysis (procedure)"
* code.coding[sct] = $sct#445940005 "Duration of haemodialysis session"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 4 'h' "hours"

Instance: mii-exa-test-data-patient-1-icu-ect-gasfluss-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Gasfluss"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#79063001 "Gas flow rate (v)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 3 'L/min' "L/min"

Instance: mii-exa-test-data-patient-1-icu-ect-haemo-blutfl-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-haemodialyse-blutfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Haemodialyse Blutfluss"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Renal dialysis (procedure)"
* code.coding[sct] = $sct#401000124105 "Hemodialysis blood flow"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 250 'mL/min' "mL/min"

Instance: mii-exa-test-data-patient-1-icu-ect-kalzium-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ionisiertes-kalzium-nierenersatzverfahren
Usage: #example
Description: "ICU Observation: MII PR ICU Ionisiertes Kalzium Nierenersatzverfahren"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Renal dialysis (procedure)"
* code.coding[loinc] = $loinc#83064-6 "Calcium.ionized [Moles/volume] in Blood drawn from CRRT circuit"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 1.15 'mmol/L' "mmol/L"

Instance: mii-exa-test-data-patient-1-icu-ect-substituatfl-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-substituatfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Substituatfluss"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Renal dialysis (procedure)"
* code.coding[sct] = $sct#708513005 "Substitution flow rate"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 2000 'mL/h' "mL/h"

Instance: mii-exa-test-data-patient-1-icu-ect-substituatvol-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-substituatvolumen
Usage: #example
Description: "ICU Observation: MII PR ICU Substituatvolumen"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Renal dialysis (procedure)"
* code.coding[sct] = $sct#708514004 "Substitution volume"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 48 'L' "L"

Instance: mii-exa-test-data-patient-1-icu-ect-ven-druck-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-venoeser-druck
Usage: #example
Description: "ICU Observation: MII PR ICU Venous Pressure"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#252076005 "Venous pressure"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 15 'mm[Hg]' "mmHg"

// --- Event Observations ---

Instance: mii-exa-test-data-patient-1-icu-event-o2-partial-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-exspiratorischer-sauerstoffpartialdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Exspiratorischer Sauerstoffpartialdruck"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[Beatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#442720002 "Expired oxygen tension"
* code.coding[loinc] = $loinc#3147-6 "Oxygen [Partial pressure] in Exhaled gas"
* code.coding[IEEE-11073] = $11073-10101#153132 "MDC_CONC_AWAY_O2_EXP"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 40 'mm[Hg]' "mmHg"

// --- MUV Observations ---

Instance: mii-exa-test-data-patient-1-icu-muv-blutdruck-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-arterieller-blutdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Arterieller Blutdruck"
* insert TestDataLabel
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.coding[snomed] = $sct#75367002 "Blood pressure"
* code.coding[sct] = $sct#364090009 "Systemic arterial pressure"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* component[SystolicBP].valueQuantity = 120 'mm[Hg]' "mmHg"
* component[DiastolicBP].valueQuantity = 80 'mm[Hg]' "mmHg"

Instance: mii-exa-test-data-patient-1-icu-muv-atemfreq-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-atemfrequenz
Usage: #example
Description: "ICU Observation: MII PR ICU Atemfrequenz"
* insert TestDataLabel
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#9279-1 "Respiratory rate"
* code.coding[snomed] = $sct#86290005 "Respiratory rate"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 14 '/min' "breaths per minute"

Instance: mii-exa-test-data-patient-1-icu-muv-herzfreq-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-herzfrequenz
Usage: #example
Description: "ICU Observation: MII SD ICU Herzfrequenz"
* insert TestDataLabel
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[sct] = $sct#364075005 "Heart rate"
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE-11073] = $11073-10101#147842 "MDC_ECG_HEART_RATE"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 72 '/min' "beats per minute"

Instance: mii-exa-test-data-patient-1-icu-muv-gewicht-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-koerpergewicht
Usage: #example
Description: "ICU Observation: MII PR ICU Koerpergewicht"
* insert TestDataLabel
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#29463-7 "Body weight"
* code.coding[loinc-zusatzcode] = $loinc#8339-4 "Birth weight Measured"
* code.coding[snomed] = $sct#27113001 "Body weight"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 80 'kg' "kilogram"

Instance: mii-exa-test-data-patient-1-icu-muv-groesse-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-koerpergroesse
Usage: #example
Description: "ICU Observation: MII PR ICU Koerpergroesse"
* insert TestDataLabel
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8302-2 "Body height"
* code.coding[loinc-zusatzcode] = $loinc#89269-5 "Body height Measured --at birth"
* code.coding[snomed] = $sct#1153637007 "Body height"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 175 'cm' "centimeter"

Instance: mii-exa-test-data-patient-1-icu-muv-kopfumfang-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-kopfumfang
Usage: #example
Description: "ICU Observation: MII PR ICU Kopfumfang"
* insert TestDataLabel
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#9843-4 "Head Occipital-frontal circumference"
* code.coding[snomed] = $sct#363812007 "Head circumference"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 57 'cm' "centimeter"

// --- Vent Observations ---

Instance: mii-exa-test-data-patient-1-icu-vent-fio2-eingest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-inspiratorische-sauerstofffraktion-eingestellt
Usage: #example
Description: "ICU Observation: mii-pr-icu-inspiratorische-sauerstofffraktion-eingestellt"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250774007 "Inspired oxygen concentration"
* code.coding[loinc] = $loinc#19994-3 "Oxygen/Total gas setting [Volume Fraction] Ventilator"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 0.4 '%' "percent"

Instance: mii-exa-test-data-patient-1-icu-vent-atemdr-null-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-atemwegsdruck-bei-null-expiratorischem-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Atemwegsdruck Bei Null Expiratorischem Gasfluss"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#20060-0 "Airway pressure --at zero inspiratory flow on ventilator"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 3 'cm[H2O]' "cmH2O"

Instance: mii-exa-test-data-patient-1-icu-vent-atemdr-mitt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-atemwegsdruck-bei-mittlerem-expiratorischem-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Atemwegsdruck Bei Mittlerem Expiratorischem Gasfluss"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#20056-8 "Airway pressure --at mean expiratory flow on ventilator"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 8 'cm[H2O]' "cmH2O"

Instance: mii-exa-test-data-patient-1-icu-vent-vt-einst-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-atemzugvolumen-einstellung
Usage: #example
Description: "ICU Observation: MII PR ICU Atemzugvolumen Einstellung"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#416811008 "Tidal volume setting"
* code.coding[loinc] = $loinc#20112-9 "Tidal volume setting Ventilator"
* code.coding[IEEE-11073] = $11073-10101#16929196 "MDC_VENT_VOL_TIDAL_SETTING"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 500 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-vent-vt-beat-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-atemzugvolumen-waehrend-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Atemzugvolumen Waehrend Beatmung"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250874002 "Ventilator delivered tidal volume"
* code.coding[loinc] = $loinc#76222-9 "Tidal volume Ventilator --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151980 "MDC_VENT_VOL_TIDAL"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 480 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-vent-mv-masch-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-beatmungsvolumen-pro-minute-maschineller-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Beatmungsvolumen Pro Minute Maschineller Beatmung"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250875001 "Ventilator delivered minute volume"
* code.coding[loinc] = $loinc#76009-0 "Inspired minute Volume during Mechanical ventilation"
* code.coding[IEEE-11073] = $11073-10101#152004 "MDC_VENT_VOL_MINUTE_INSP"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 7.5 'L/min' "L/min"

Instance: mii-exa-test-data-patient-1-icu-vent-zeit-hoch-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-beatmungszeit-hohem-druck
Usage: #example
Description: "ICU Observation: MII ICU Beatmungszeit Hohem Druck"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#76190-8 "High pressure hold time setting Ventilator"
* code.coding[IEEE-11073] = $11073-10101#16929860 "MDC_VENT_TIME_PD_INSP_THIGH_SETTING"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 1.0 's' "seconds"

Instance: mii-exa-test-data-patient-1-icu-vent-zeit-niedrig-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-beatmungszeit-niedrigem-druck
Usage: #example
Description: "ICU Observation: MII PR ICU Beatmungszeit Niedrigem Druck"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#76229-4 "Low pressure hold time setting Ventilator"
* code.coding[IEEE-11073] = $11073-10101#16929864 "MDC_VENT_TIME_PD_EXP_TLOW_SETTING"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 0.8 's' "seconds"

Instance: mii-exa-test-data-patient-1-icu-vent-insp-flow-set-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-eingestellter-inspiratorischer-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Eingestellter Inspiratorischer Gasfluss"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[Beatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#76275-7 "Inspiratory flow setting Ventilator"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 40 'L/min' "L/min"

Instance: mii-exa-test-data-patient-1-icu-vent-te-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-einstellung-ausatmungszeit-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Einstellung Ausatmungszeit Beatmung"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250820008 "Expiratory time"
* code.coding[loinc] = $loinc#76187-4 "Expiratory hold time setting Ventilator"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 2.0 's' "seconds"

Instance: mii-exa-test-data-patient-1-icu-vent-ti-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-einstellung-einatmungszeit-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Einstellung Einatmungszeit Beatmung"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250819002 "Inspiratory time"
* code.coding[loinc] = $loinc#76334-2 "Inspiratory time setting Ventilator"
* code.coding[IEEE-11073] = $11073-10101#16929632 "MDC_VENT_TIME_PD_INSP_SETTING"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 1.0 's' "seconds"

Instance: mii-exa-test-data-patient-1-icu-vent-etco2-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-endexpiratorischer-kohlendioxidpartialdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Endexpiratorischer Kohlendioxidpartialdruck"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[Beatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250790007 "End tidal carbon dioxide tension"
* code.coding[loinc] = $loinc#19891-1 "Carbon dioxide [Partial pressure] in Exhaled gas --at end expiration"
* code.coding[IEEE-11073] = $11073-10101#151708 "MDC_CONC_AWAY_CO2_ET"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 35 'mm[Hg]' "mmHg"

Instance: mii-exa-test-data-patient-1-icu-vent-exp-flow-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-exspiratorischer-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Exspiratorischer Gasfluss"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[Beatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#60792-9 "Expiratory gas flow Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151944 "MDC_VENT_FLOW_EXP"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 35 'L/min' "L/min"

Instance: mii-exa-test-data-patient-1-icu-vent-horowitz-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-horowitz-in-arteriellem-blut
Usage: #example
Description: "ICU Observation: MII PR ICU Horowitz In Arteriellem Blut"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[vs-cat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#50984-4 "Horowitz index in Arterial blood"
* code.coding[IEEE-11073] = $11073-10101#150656 "MDC_O2_OXYGENATION_RATIO"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 350 'mm[Hg]' "mmHg"

Instance: mii-exa-test-data-patient-1-icu-vent-fio2-gem-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-inspiratorische-sauerstofffraktion-gemessen
Usage: #example
Description: "ICU Observation: MIIm PR ICU Inspiratorische Sauerstofffraktion Gemessen"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[Beatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250774007 "Inspired oxygen concentration"
* code.coding[loinc] = $loinc#71835-3 "Oxygen/Gas total [Pure volume fraction] Inhaled gas"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 0.42 '%' "percent"

Instance: mii-exa-test-data-patient-1-icu-vent-insp-flow-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-inspiratorischer-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Inspiratorischer Gasfluss"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[Beatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#60794-5 "Inspiratory gas flow Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151948 "MDC_VENT_FLOW_INSP"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 40 'L/min' "L/min"

Instance: mii-exa-test-data-patient-1-icu-vent-pip-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-maximaler-beatmungsdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Maximaler Beatmungsdruck"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#27913002 "Maximum inspiratory pressure"
* code.coding[loinc] = $loinc#76531-3 "Pressure.max Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151973 "MDC_VENT_PRESS_AWAY_MAX"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 25 'cm[H2O]' "cmH2O"

Instance: mii-exa-test-data-patient-1-icu-vent-freq-mech-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-mechanische-atemfrequenz-beatmet
Usage: #example
Description: "ICU Observation: MII PR ICU Mechanische Atemfrequenz Beatmet"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250876000 "Ventilator rate"
* code.coding[loinc] = $loinc#33438-3 "Breath rate mechanical --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151586 "MDC_VENT_RESP_RATE"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 16 '{Breaths}/min' "breaths per minute"

Instance: mii-exa-test-data-patient-1-icu-vent-map-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-mittlerer-beatmungsdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Mittlerer Beatmungsdruck"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#698821009 "Mean inspiratory airway pressure"
* code.coding[loinc] = $loinc#76530-5 "Mean pressure Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151975 "MDC_VENT_PRESS_AWAY_MEAN"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 15 'cm[H2O]' "cmH2O"

Instance: mii-exa-test-data-patient-1-icu-vent-peep-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-positiv-endexpiratorischer-druck
Usage: #example
Description: "ICU Observation: MII PR ICU Positiv Endexpiratorischer Druck"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250854009 "Positive end expiratory pressure"
* code.coding[loinc] = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151976 "MDC_VENT_PRESS_AWAY_END_EXP_POS"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 8 'cm[H2O]' "cmH2O"

Instance: mii-exa-test-data-patient-1-icu-vent-freq-spont-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-spontane-atemfrequenz-beatmet
Usage: #example
Description: "ICU Observation: MII PR ICU Spontane Atemfrequenz Beatmet"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[IEEE-11073] = $11073-10101#152498 "MDC_VENT_RESP_BTSD_P_RATE"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 4 '/min' "breaths per minute"

Instance: mii-exa-test-data-patient-1-icu-vent-freq-spont-mech-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-spontane-mechanische-atemfrequenz-beatmet
Usage: #example
Description: "ICU Observation: MII PR ICU Spontane Mechanische Atemfrequenz Beatmet"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250810003 "Total breath rate"
* code.coding[loinc] = $loinc#19840-8 "Breath rate spontaneous and mechanical --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#152490 "MDC_VENT_RESP_BTSD_PSAZC_RATE"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 20 '/min' "breaths per minute"

Instance: mii-exa-test-data-patient-1-icu-vent-vt-spont-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-spontanes-atemzugvolumen
Usage: #example
Description: "ICU Observation: MII PR ICU Spontanes Atemzugvolumen"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250816009 "Spontaneous tidal volume"
* code.coding[loinc] = $loinc#20116-0 "Tidal volume.spontaneous --on ventilator"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 450 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-vent-vt-spont-mech-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-spontanes-mechanisches-atemzugvolumen-waehrend-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Spontanes Plus Mechanisches Atemzugvolumen"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#20118-6 "Tidal volume.spontaneous+mechanical --on ventilator"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 470 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-vent-ps-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-unterstuetzungsdruck-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Unterstuezungsdruck Beatmung"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#20079-0 "Pressure support setting Ventilator"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 12 'cm[H2O]' "cmH2O"

Instance: mii-exa-test-data-patient-1-icu-vent-ie-ratio-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-zeitverhaeltnis-ein-ausatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Zeitverhaeltnis Ein Ausatmung"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250822000 "Inspiration/expiration time ratio"
* code.coding[loinc] = $loinc#75931-6 "Inspiration/Expiration time Ratio"
* code.coding[IEEE-11073] = $11073-10101#151832 "MDC_RATIO_IE"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 0.5 '{ratio}' "ratio"

Instance: mii-exa-test-data-patient-1-icu-vent-compliance-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dynamische-kompliance
Usage: #example
Description: "ICU Observation: mii-pr-icu-dynamische-kompliance"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250823005 "Total dynamic compliance"
* code.coding[loinc] = $loinc#0827-3 "Dynamic lung compliance"
* code.coding[IEEE-11073] = $11073-10101#151692 "MDC_COMPL_LUNG_DYN"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 50 'mL/cm[H2O]' "mL/cmH2O"

Instance: mii-exa-test-data-patient-1-icu-vent-dp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-druckdifferenz-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Druckdifferenz Beatmung"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#76154-4 "Airway pressure delta --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#152720 "MDC_VENT_PRESS_AWAY_DELTA"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 13 'cm[H2O]' "cmH2O"
