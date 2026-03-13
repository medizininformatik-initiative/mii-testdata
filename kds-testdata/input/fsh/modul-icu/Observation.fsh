// ============================================================================
// ICU - Observations (alle Profile)
// Intensivmedizin Testdaten fuer Patient-1
// ============================================================================

// --- Bilanz Observations ---

Instance: mii-exa-test-data-patient-1-icu-bilanz-haemofiltr-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-abnahme-haemofiltration-einzelmesswerte
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Abnahme Haemofiltration Einzelmesswerte"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#vital-sign
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251850009 "251850009"
* code.coding[loinc] = $loinc#99741-1 "99741-1"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 120 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-drainage-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-drainage-generisch
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Drainage Generisch"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251843005 "251843005"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 50 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-fluess-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-fluessigkeit-gesamt
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Fluessigkeit Gesamt"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#vital-sign
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251847006 "251847006"
* code.coding[loinc] = $loinc#9257-7 "9257-7"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 2200 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-galle-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-gallenfluessigkeit
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Gallenfluessigkeit"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#1162670008 "1162670008"
* code.coding[loinc] = $loinc#9113-2 "9113-2"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 30 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-gallengang-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-gallengang
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Gallengang"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#1162667009 "1162667009"
* code.coding[loinc] = $loinc#9113-2 "9113-2"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 25 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-magen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-magensonde
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Magensonde"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251848001 "251848001"
* code.coding[loinc] = $loinc#79561-7 "79561-7"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 100 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-opdrain-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-opdrainage
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Opdrainage"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251844004 "251844004"
* code.coding[loinc] = $loinc#9203-1 "9203-1"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 75 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-pankreas-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-pankreasdrainage
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Pankreasdrainage"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#1162668004 "1162668004"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 20 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-stuhl-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-stuhlgang
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Stuhlgang"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251849009 "251849009"
* code.coding[loinc] = $loinc#9167-8 "9167-8"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 200 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-urin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-urin
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Urin"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#vital-sign
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#364202003 "364202003"
* code.coding[loinc] = $loinc#9187-6 "9187-6"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 1800 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-wunde-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-wunddrainage
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Wunddrainage"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251845003 "251845003"
* code.coding[loinc] = $loinc#9203-1 "9203-1"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 45 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-blutverlust-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-blutverlust
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Blutverlust"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#vital-sign
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#250771004 "250771004"
* code.coding[loinc] = $loinc#81661-1 "81661-1"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 150 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-enteral-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-enterale-fluessigkeit
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Einfuhr Enterale Fluessigkeit"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#therapy
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251854000 "251854000"
* code.coding[loinc] = $loinc#8953-2 "8953-2"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 1500 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-fluess-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-fluessigkeit-gesamt
Usage: #example
Description: "ICU Observation: SD MII ICU Bilanz Einfuhr Fluessigkeit Gesamt"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#therapy
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251855004 "251855004"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 2500 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-oral-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-oraler-fluessigkeit
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Einfuhr Oraler Fluessigkeit"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#therapy
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251853006 "251853006"
* code.coding[loinc] = $loinc#9000-1 "9000-1"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 800 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ges-ausf-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-gesamte-ausfuhr
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Gesamte Ausfuhr"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251841007 "251841007"
* code.coding[loinc] = $loinc#9257-7 "9257-7"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 2400 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ges-einf-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-gesamte-einfuhr
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Gesamte Einfuhr"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#therapy
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251852001 "251852001"
* code.coding[loinc] = $loinc#9103-3 "9103-3"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 2800 'mL' "mL"

Instance: mii-exa-test-data-patient-1-icu-bilanz-tages-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-gesamte-tages-bilanz
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Gesamte Tages Bilanz"
* insert TestDataLabel
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#vital-sign
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251856003 "251856003"
* code.coding[loinc] = $loinc#9097-7 "9097-7"
* code.coding[IEEE-11073] = $11073-10101#157756 "157756"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 400 'mL' "mL"

// --- ECT Observations ---

Instance: mii-exa-test-data-patient-1-icu-ect-art-druck-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-arterieller-druck
Usage: #example
Description: "ICU Observation: MII PR ICU Arterieller Druck"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#386534000 "386534000"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 85 'mm[Hg]' "mmHg"

Instance: mii-exa-test-data-patient-1-icu-ect-blutfl-cardio-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-blutfluss-cardiovasculaeres-geraet
Usage: #example
Description: "ICU Observation: MII PR ICU Blutfluss Cardiovasculaeres Geraet"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#444479000 "444479000"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 4.5 'L/min' "L/min"

Instance: mii-exa-test-data-patient-1-icu-ect-blutfl-extra-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-blutfluss-extrakorporaler-gasaustausch
Usage: #example
Description: "ICU Observation: MII PR ICU Blutfluss Extrakorporaler Gasaustausch"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#251288004 "251288004"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#251289007 "251289007"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#251286000 "251286000"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#445940005 "445940005"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 4 'h' "hours"

Instance: mii-exa-test-data-patient-1-icu-ect-gasfluss-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Gasfluss"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#79063001 "79063001"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#401000124105 "401000124105"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[loinc] = $loinc#83064-6 "83064-6"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#708513005 "708513005"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#708514004 "708514004"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 48 'L' "L"

Instance: mii-exa-test-data-patient-1-icu-ect-ven-druck-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-venoeser-druck
Usage: #example
Description: "ICU Observation: MII PR ICU Venous Pressure"
* insert TestDataLabel
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#252076005 "252076005"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#442720002 "442720002"
* code.coding[loinc] = $loinc#3147-6 "3147-6"
* code.coding[IEEE-11073] = $11073-10101#153132 "153132"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 40 'mm[Hg]' "mmHg"

// --- MUV Observations ---

Instance: mii-exa-test-data-patient-1-icu-muv-blutdruck-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-arterieller-blutdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Arterieller Blutdruck"
* insert TestDataLabel
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#85354-9 "85354-9"
* code.coding[snomed] = $sct#75367002 "75367002"
* code.coding[sct] = $sct#364090009 "364090009"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* component[SystolicBP].valueQuantity = 120 'mm[Hg]' "mmHg"
* component[DiastolicBP].valueQuantity = 80 'mm[Hg]' "mmHg"

Instance: mii-exa-test-data-patient-1-icu-muv-atemfreq-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-atemfrequenz
Usage: #example
Description: "ICU Observation: MII PR ICU Atemfrequenz"
* insert TestDataLabel
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#9279-1 "9279-1"
* code.coding[snomed] = $sct#86290005 "86290005"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 14 '/min' "breaths per minute"

Instance: mii-exa-test-data-patient-1-icu-muv-herzfreq-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-herzfrequenz
Usage: #example
Description: "ICU Observation: MII SD ICU Herzfrequenz"
* insert TestDataLabel
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[sct] = $sct#364075005 "364075005"
* code.coding[loinc] = $loinc#8867-4 "8867-4"
* code.coding[IEEE-11073] = $11073-10101#147842 "147842"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 72 '/min' "beats per minute"

Instance: mii-exa-test-data-patient-1-icu-muv-gewicht-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-koerpergewicht
Usage: #example
Description: "ICU Observation: MII PR ICU Koerpergewicht"
* insert TestDataLabel
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#29463-7 "29463-7"
* code.coding[loinc-zusatzcode] = $loinc#8339-4 "8339-4"
* code.coding[snomed] = $sct#27113001 "27113001"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 80 'kg' "kilogram"

Instance: mii-exa-test-data-patient-1-icu-muv-groesse-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-koerpergroesse
Usage: #example
Description: "ICU Observation: MII PR ICU Koerpergroesse"
* insert TestDataLabel
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8302-2 "8302-2"
* code.coding[loinc-zusatzcode] = $loinc#89269-5 "89269-5"
* code.coding[snomed] = $sct#1153637007 "1153637007"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 175 'cm' "centimeter"

Instance: mii-exa-test-data-patient-1-icu-muv-kopfumfang-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-kopfumfang
Usage: #example
Description: "ICU Observation: MII PR ICU Kopfumfang"
* insert TestDataLabel
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#9843-4 "9843-4"
* code.coding[snomed] = $sct#363812007 "363812007"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250774007 "250774007"
* code.coding[loinc] = $loinc#19994-3 "19994-3"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[loinc] = $loinc#20060-0 "20060-0"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[loinc] = $loinc#20056-8 "20056-8"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#416811008 "416811008"
* code.coding[loinc] = $loinc#20112-9 "20112-9"
* code.coding[IEEE-11073] = $11073-10101#16929196 "16929196"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250874002 "250874002"
* code.coding[loinc] = $loinc#76222-9 "76222-9"
* code.coding[IEEE-11073] = $11073-10101#151980 "151980"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250875001 "250875001"
* code.coding[loinc] = $loinc#76009-0 "76009-0"
* code.coding[IEEE-11073] = $11073-10101#152004 "152004"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[loinc] = $loinc#76190-8 "76190-8"
* code.coding[IEEE-11073] = $11073-10101#16929860 "16929860"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[loinc] = $loinc#76229-4 "76229-4"
* code.coding[IEEE-11073] = $11073-10101#16929864 "16929864"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[loinc] = $loinc#76275-7 "76275-7"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250820008 "250820008"
* code.coding[loinc] = $loinc#76187-4 "76187-4"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250819002 "250819002"
* code.coding[loinc] = $loinc#76334-2 "76334-2"
* code.coding[IEEE-11073] = $11073-10101#16929632 "16929632"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250790007 "250790007"
* code.coding[loinc] = $loinc#19891-1 "19891-1"
* code.coding[IEEE-11073] = $11073-10101#151708 "151708"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[loinc] = $loinc#60792-9 "60792-9"
* code.coding[IEEE-11073] = $11073-10101#151944 "151944"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[loinc] = $loinc#50984-4 "50984-4"
* code.coding[IEEE-11073] = $11073-10101#150656 "150656"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250774007 "250774007"
* code.coding[loinc] = $loinc#71835-3 "71835-3"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[loinc] = $loinc#60794-5 "60794-5"
* code.coding[IEEE-11073] = $11073-10101#151948 "151948"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#27913002 "27913002"
* code.coding[loinc] = $loinc#76531-3 "76531-3"
* code.coding[IEEE-11073] = $11073-10101#151973 "151973"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250876000 "250876000"
* code.coding[loinc] = $loinc#33438-3 "33438-3"
* code.coding[IEEE-11073] = $11073-10101#151586 "151586"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#698821009 "698821009"
* code.coding[loinc] = $loinc#76530-5 "76530-5"
* code.coding[IEEE-11073] = $11073-10101#151975 "151975"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250854009 "250854009"
* code.coding[loinc] = $loinc#76248-4 "76248-4"
* code.coding[IEEE-11073] = $11073-10101#151976 "151976"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[IEEE-11073] = $11073-10101#152498 "152498"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250810003 "250810003"
* code.coding[loinc] = $loinc#19840-8 "19840-8"
* code.coding[IEEE-11073] = $11073-10101#152490 "152490"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250816009 "250816009"
* code.coding[loinc] = $loinc#20116-0 "20116-0"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[loinc] = $loinc#20118-6 "20118-6"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[loinc] = $loinc#20079-0 "20079-0"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250822000 "250822000"
* code.coding[loinc] = $loinc#75931-6 "75931-6"
* code.coding[IEEE-11073] = $11073-10101#151832 "151832"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[sct] = $sct#250823005 "250823005"
* code.coding[loinc] = $loinc#0827-3 "0827-3"
* code.coding[IEEE-11073] = $11073-10101#151692 "151692"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
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
* code.coding[loinc] = $loinc#76154-4 "76154-4"
* code.coding[IEEE-11073] = $11073-10101#152720 "152720"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity = 13 'cm[H2O]' "cmH2O"
