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
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251850009 "Ultrafiltrate fluid loss (observable entity)"
* code.coding[loinc] = $loinc#99741-1 "Ultrafiltrate volume removed"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 120 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-haemofiltr-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
// Gefaesszugang des CVVH-Kreislaufs (Shaldon-Katheter V. jugularis interna re.)
* bodySite = $sct#771195007 "Structure of right internal jugular vein"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-haemofiltrat-1)
* referenceRange.low = 1000 'mL' "mL"
* referenceRange.high = 3000 'mL' "mL"
* referenceRange.text = "angestrebtes Ultrafiltratvolumen pro 24h unter CVVH"

Instance: mii-exa-test-data-patient-1-icu-bilanz-drainage-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-drainage-generisch
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Drainage Generisch"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251843005 "Fluid output from drain"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 50 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-drainage-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#818983003 "Structure of abdomen"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-drainagesekret-1)
* referenceRange.low = 0 'mL' "mL"
* referenceRange.high = 200 'mL' "mL"
* referenceRange.text = "unauffaellige Drainagefoerderung pro 24h"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-fluess-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-fluessigkeit-gesamt
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Fluessigkeit Gesamt"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251847006 "Total fluid loss"
* code.coding[loinc] = $loinc#9257-7 "Fluid output total Measured"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 2200 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-ausf-fluess-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#38266002 "Entire body as a whole"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-koerperfluessigkeit-1)
* referenceRange.low = 1500 'mL' "mL"
* referenceRange.high = 2500 'mL' "mL"
* referenceRange.text = "Gesamtausfuhr Erwachsene pro 24h"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-galle-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-gallenfluessigkeit
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Gallenfluessigkeit"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[loinc] = $loinc#9113-2 "Fluid output biliary drain"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 30 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-ausf-galle-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#28273000 "Bile duct structure (body structure)"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-galle-1)
* referenceRange.low = 100 'mL' "mL"
* referenceRange.high = 800 'mL' "mL"
* referenceRange.text = "Gallefoerderung ueber die biliaere Drainage pro 24h"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-gallengang-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-gallenfluessigkeit
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Gallengang"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[loinc] = $loinc#9113-2 "Fluid output biliary drain"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 25 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-ausf-gallengang-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#28273000 "Bile duct structure (body structure)"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-magen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-magensonde
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Magensonde"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[loinc] = $loinc#79561-7 "Fluid output enteral tube [Volume] Measured"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 100 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-ausf-magen-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#69695003 "Stomach structure (body structure)"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-magensaft-1)
* referenceRange.low = 0 'mL' "mL"
* referenceRange.high = 500 'mL' "mL"
* referenceRange.text = "toleriertes Magenrestvolumen ueber die Sonde pro 24h"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-opdrain-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-op-drainage
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Opdrainage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251844004 "Fluid output from surgical drain (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 75 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-ausf-opdrain-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#51185008 "Structure of thorax"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-drainagesekret-1)
* referenceRange.low = 0 'mL' "mL"
* referenceRange.high = 200 'mL' "mL"
* referenceRange.text = "unauffaellige Foerderung der OP-Drainage pro 24h"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-pankreas-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-pankreasdrainage
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Pankreasdrainage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#1162668004 "Volume of drainage of pancreatic fluid (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 20 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-ausf-pankreas-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#15776009 "Pancreatic structure (body structure)"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-pankreassekret-1)
* referenceRange.low = 0 'mL' "mL"
* referenceRange.high = 100 'mL' "mL"
* referenceRange.text = "unauffaellige Foerderung der Pankreasdrainage pro 24h"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-stuhl-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-stuhlgang
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Stuhlgang"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 200 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-ausf-stuhl-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#71854001 "Colon structure (body structure)"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-stuhl-1)
* referenceRange.low = 100 'mL' "mL"
* referenceRange.high = 300 'mL' "mL"
* referenceRange.text = "unauffaellige Stuhlmenge pro 24h"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-urin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-urin
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Urin"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[loinc] = $loinc#9187-6 "Urine output"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 1800 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-ausf-urin-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#89837001 "Urinary bladder structure (body structure)"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-urin-1)
* referenceRange.low = 800 'mL' "mL"
* referenceRange.high = 2000 'mL' "mL"
* referenceRange.text = "Urinausfuhr Erwachsene pro 24h"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ausf-wunde-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-wunddrainage
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Ausfuhr Wunddrainage"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[hl7-category] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251845003 "Fluid output from wound drain (observable entity)"
* code.coding[loinc] = $loinc#9203-1 "Fluid output wound drain"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 45 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-ausf-wunde-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#59380008 "Anterior abdominal wall structure"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-wundsekret-1)
* referenceRange.low = 0 'mL' "mL"
* referenceRange.high = 150 'mL' "mL"
* referenceRange.text = "unauffaellige Foerderung der Wunddrainage pro 24h"

Instance: mii-exa-test-data-patient-1-icu-bilanz-blutverlust-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-blutverlust
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Blutverlust"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#250771004 "Actual blood loss"
* code.coding[loinc] = $loinc#81661-1 "Blood loss [Volume] Measured"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 150 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-blutverlust-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
// Blutiges Trachealsekret unter therapeutischer Antikoagulation bei VV-ECMO
* bodySite = $sct#89187006 "Structure of airway"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-blut-1)
* referenceRange.low = 0 'mL' "mL"
* referenceRange.high = 200 'mL' "mL"
* referenceRange.text = "tolerierter Blutverlust pro 24h unter Antikoagulation"

Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-enteral-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-enterale-fluessigkeit
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Einfuhr Enterale Fluessigkeit"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251854000 "Enteral fluid input (observable entity)"
* code.coding[loinc] = $loinc#8953-2 "Fluid intake enteral tube Measured"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 1500 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-einf-enteral-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#69695003 "Stomach structure (body structure)"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-sondennahrung-1)
* referenceRange.low = 1000 'mL' "mL"
* referenceRange.high = 2000 'mL' "mL"
* referenceRange.text = "Zielkorridor enterale Zufuhr pro 24h"

Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-fluess-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-fluessigkeit-gesamt
Usage: #example
Description: "ICU Observation: SD MII ICU Bilanz Einfuhr Fluessigkeit Gesamt"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 2500 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-einf-fluess-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#38266002 "Entire body as a whole"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-koerperfluessigkeit-1)
* referenceRange.low = 2000 'mL' "mL"
* referenceRange.high = 3000 'mL' "mL"
* referenceRange.text = "Zielkorridor Gesamteinfuhr Erwachsene pro 24h"

Instance: mii-exa-test-data-patient-1-icu-bilanz-einf-oral-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-fluessigkeit-gesamt
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Einfuhr Oraler Fluessigkeit"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 800 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-einf-oral-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ges-ausf-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-fluessigkeit-gesamt
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Gesamte Ausfuhr"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251847006 "Total fluid loss"
* code.coding[loinc] = $loinc#9257-7 "Fluid output total Measured"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 2400 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-ges-ausf-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* referenceRange.low = 1500 'mL' "mL"
* referenceRange.high = 2500 'mL' "mL"
* referenceRange.text = "Gesamtausfuhr Erwachsene pro 24h"

Instance: mii-exa-test-data-patient-1-icu-bilanz-ges-einf-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-einfuhr-fluessigkeit-gesamt
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Gesamte Einfuhr"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 2800 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-ges-einf-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"

Instance: mii-exa-test-data-patient-1-icu-bilanz-tages-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-tagesbilanz-fluessigkeit
Usage: #example
Description: "ICU Observation: MII PR ICU Bilanz Gesamte Tages Bilanz"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251856003 "Fluid balance status (observable entity)"
* code.coding[loinc] = $loinc#9097-7 "Fluid balance 24 hour"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 400 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-tages-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-device-pdms-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#38266002 "Entire body as a whole"
* specimen = Reference(mii-exa-test-data-patient-1-icu-spec-koerperfluessigkeit-1)
* referenceRange.low = -500 'mL' "mL"
* referenceRange.high = 500 'mL' "mL"
* referenceRange.text = "ausgeglichene Tagesbilanz"

// --- ECT Observations ---
Instance: mii-exa-test-data-patient-1-icu-ect-art-druck-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-arterieller-druck
Usage: #example
Description: "ICU Observation: MII PR ICU Arterieller Druck"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"
* code.coding[sct] = $sct#386534000 "Arterial blood pressure"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 85 'mm[Hg]' "mmHg"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-ect-art-druck-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-ect-blutfl-cardio-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-blutfluss-cardiovasculaeres-geraet
Usage: #example
Description: "ICU Observation: MII PR ICU Blutfluss Cardiovasculaeres Geraet"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#444479000 "Rate of blood flow through cardiovascular device"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 4.5 'L/min' "L/min"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-ect-blutfl-cardio-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"

Instance: mii-exa-test-data-patient-1-icu-ect-blutfl-extra-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-blutfluss-extrakorporaler-gasaustausch
Usage: #example
Description: "ICU Observation: MII PR ICU Blutfluss Extrakorporaler Gasaustausch"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#251288004 "Extracorporeal gas exchange flow rate"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 4.5 'L/min' "L/min"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-ect-blutfl-extra-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"

Instance: mii-exa-test-data-patient-1-icu-ect-blutfl-idx-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-blutflussindex-extrakorporaler-gasaustausch
Usage: #example
Description: "ICU Observation: MII PR ICU Blutflussindex Extrakorporaler Gasaustausch"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"
* code.coding[sct] = $sct#251289007 "Extracorporeal gas exchange flow index"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 1.8 'L/(min.m2)' "L/(min.m2)"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-ect-blutfl-idx-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-ect-dauer-extra-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-dauer-extrakorporaler-gasaustausch
Usage: #example
Description: "ICU Observation: MII PR ICU Dauer Extrakorporaler Gasaustausch"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"
* code.coding[sct] = $sct#251286000 "Extracorporeal gas exchange duration"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 72 'h' "hours"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-ect-dauer-extra-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-ect-dauer-haemo-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-dauer-haemodialysesitzung
Usage: #example
Description: "ICU Observation: MII ICU Dauer Haemodialysesitzung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"
* code.coding[sct] = $sct#445940005 "Duration of haemodialysis session"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 4 'h' "hours"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-ect-dauer-haemo-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-ect-gasfluss-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Gasfluss"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#79063001 "Gas flow rate (v)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 5 'L/min' "L/min"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-ect-gasfluss-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"

Instance: mii-exa-test-data-patient-1-icu-ect-haemo-blutfl-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-haemodialyse-blutfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Haemodialyse Blutfluss"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"
* code.coding[sct] = $sct#401000124105 "Hemodialysis blood flow"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 250 'mL/min' "mL/min"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-ect-haemo-blutfl-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-ect-kalzium-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-ionisiertes-kalzium-nierenersatzverfahren
Usage: #example
Description: "ICU Observation: MII PR ICU Ionisiertes Kalzium Nierenersatzverfahren"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"
* code.coding[loinc] = $loinc#83064-6 "Calcium.ionized [Moles/volume] in Blood drawn from CRRT circuit"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 1.15 'mmol/L' "mmol/L"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-ect-kalzium-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-ect-substituatfl-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-substituatfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Substituatfluss"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"
* code.coding[sct] = $sct#708513005 "Substitution flow rate"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 2000 'mL/h' "mL/h"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-ect-substituatfl-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-ect-substituatvol-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-substituatvolumen
Usage: #example
Description: "ICU Observation: MII PR ICU Substituatvolumen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"
* code.coding[sct] = $sct#708514004 "Substitution volume"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 48 'L' "L"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-ect-substituatvol-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-ect-ven-druck-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-venoeser-druck
Usage: #example
Description: "ICU Observation: MII PR ICU Venous Pressure"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* code.coding[sct] = $sct#252076005 "Venous pressure"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 15 'mm[Hg]' "mmHg"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-ect-ven-druck-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"

// --- Event Observations ---
Instance: mii-exa-test-data-patient-1-icu-event-o2-partial-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-exspiratorischer-sauerstoffpartialdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Exspiratorischer Sauerstoffpartialdruck"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#442720002 "Expired oxygen tension (observable entity)"
* code.coding[loinc] = $loinc#3147-6 "Oxygen [Partial pressure] in Exhaled gas"
* code.coding[IEEE-11073] = $11073-10101#153132 "Partial pressure of oxygen in airway gas measured during expiration."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 40 'mm[Hg]' "mmHg"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-event-o2-partial-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

// --- MUV Observations ---
Instance: mii-exa-test-data-patient-1-icu-muv-blutdruck-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-arterieller-blutdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Arterieller Blutdruck"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.coding[snomed] = $sct#75367002 "Blood pressure"
* code.coding[sct] = $sct#364090009 "Systemic arterial pressure"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* component[SystolicBP].valueQuantity = 120 'mm[Hg]' "millimeter Mercury column"
* component[DiastolicBP].valueQuantity = 80 'mm[Hg]' "millimeter Mercury column"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-device-monitor-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#17146006 "Arterial pressure monitoring, invasive method (regime/therapy)"
* bodySite = $sct#45631007 "Structure of radial artery (body structure)"
* component[SystolicBP].code.coding[loinc] = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code.coding[sct] = $sct#271649006 "Systolic blood pressure"
* component[SystolicBP].code.coding[IEEE-11073] = $11073-10101#150017 "MDC_PRESS_BLD_NONINV_SYS"
* component[DiastolicBP].code.coding[loinc] = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[sct] = $sct#271650006 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[IEEE-11073] = $11073-10101#150018 "MDC_PRESS_BLD_NONINV_DIA"
* component[meanBP].code.coding[loinc] = $loinc#8478-0 "Mean blood pressure"
* component[meanBP].code.coding[sct] = $sct#6797001 "Mean blood pressure"
* component[meanBP].code.coding[IEEE-11073] = $11073-10101#150019 "MDC_PRESS_BLD_NONINV_MEAN"
* component[meanBP].valueQuantity = 93 'mm[Hg]' "millimeter Mercury column"
// Zielkorridor des mittleren arteriellen Drucks unter Katecholamintherapie
* referenceRange.low = 65 'mm[Hg]' "millimeter Mercury column"
* referenceRange.high = 90 'mm[Hg]' "millimeter Mercury column"
* referenceRange.text = "MAD-Zielkorridor unter Kreislaufunterstuetzung"

Instance: mii-exa-test-data-patient-1-icu-muv-atemfreq-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-atemfrequenz
Usage: #example
Description: "ICU Observation: MII PR ICU Atemfrequenz"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#9279-1 "Respiratory rate"
* code.coding[snomed] = $sct#86290005 "Respiratory rate"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 14 '/min' "breaths per minute"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-muv-atemfreq-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)

Instance: mii-exa-test-data-patient-1-icu-muv-herzfreq-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-herzfrequenz
Usage: #example
Description: "ICU Observation: MII SD ICU Herzfrequenz"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[sct] = $sct#364075005 "Heart rate"
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE-11073] = $11073-10101#147842 "MDC_ECG_HEART_RATE"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 72 '/min' "beats per minute"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-muv-herzfreq-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* device = Reference(mii-exa-test-data-patient-1-icu-device-monitor-1)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* performer = Reference(mii-exa-test-data-icu-practitioner-1)
* method = $sct#29303009 "Electrocardiographic procedure"
* bodySite = $sct#80891009 "Heart structure (body structure)"
* referenceRange.low = 60 '/min' "beats per minute"
* referenceRange.high = 100 '/min' "beats per minute"
// Komponente: palpatorische Kontrollmessung der Herzfrequenz (Pulsdefizit-Check)
* component[+].code.coding = $loinc#8867-4 "Heart rate"
* component[=].code.text = "Herzfrequenz, palpatorische Kontrollmessung"
* component[=].valueQuantity = 72 '/min' "beats per minute"
* component[=].interpretation = $v3-ObservationInterpretation#N "Normal"
* component[=].referenceRange.low = 60 '/min' "beats per minute"
* component[=].referenceRange.high = 100 '/min' "beats per minute"
* basedOn = Reference(mii-exa-test-data-icu-servicerequest-monitoring-1)

Instance: mii-exa-test-data-patient-1-icu-muv-gewicht-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-koerpergewicht
Usage: #example
Description: "ICU Observation: MII PR ICU Koerpergewicht"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#29463-7 "Body weight"
* code.coding[snomed] = $sct#27113001 "Body weight"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 80 'kg' "kilogram"
* category[VSCat].coding.display = "Vital Signs"
* category[sct] = $sct#248326004 "Body measure (observable entity)"
// Komponente: geschaetztes Gewicht (Bettwaage nicht verfuegbar, Angehoerigenangabe)
* component[+].code.coding = $loinc#8335-2 "Body weight Estimated"
* component[=].code.text = "Geschaetztes Koerpergewicht (Angehoerigenangabe bei Aufnahme)"
* component[=].valueQuantity = 78 'kg' "kilogram"
* component[=].interpretation = $v3-ObservationInterpretation#N "Normal"

Instance: mii-exa-test-data-patient-1-icu-muv-groesse-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-koerpergroesse
Usage: #example
Description: "ICU Observation: MII PR ICU Koerpergroesse"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8302-2 "Body height"
* code.coding[loinc-zusatzcode] = $loinc#89269-5 "Body height Measured --at birth"
* code.coding[snomed] = $sct#1153637007 "Body height"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 175 'cm' "centimeter"
* category[VSCat].coding.display = "Vital Signs"
* category[sct] = $sct#248326004 "Body measure (observable entity)"

Instance: mii-exa-test-data-patient-1-icu-muv-kopfumfang-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-kopfumfang
Usage: #example
Description: "ICU Observation: MII PR ICU Kopfumfang"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#9843-4 "Head Occipital-frontal circumference"
* code.coding[snomed] = $sct#363812007
* subject = Reference(mii-exa-test-data-icu-patient-1)
// Workaround: the generated 2025.0.4 kopfumfang snapshot has a malformed effective[x]
// type-slice (effectiveDateTime carries both dateTime+Period), so SUSHI rejects
// effectiveDateTime. effective[x] slicing is open, so a Period satisfies the profile.
* effectivePeriod.start = "2024-02-15T14:30:00+01:00"
* valueQuantity = 57 'cm' "centimeter"
* category[sct] = $sct#248326004 "Body measure (observable entity)"
* bodySite = $sct#69536005 "Head structure (body structure)"
* effectivePeriod.end = "2024-02-15T14:35:00+01:00"

// --- Vent Observations ---
Instance: mii-exa-test-data-patient-1-icu-vent-fio2-eingest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-inspiratorische-sauerstofffraktion
Usage: #example
Description: "ICU Observation: inspiratorische-sauerstofffraktion-eingestellt"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250774007 "Inspired oxygen concentration (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 0.5 '%' "percent"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-fio2-eingest-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-atemdr-null-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-atemwegsdruck-bei-null-expiratorischem-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Atemwegsdruck Bei Null Expiratorischem Gasfluss"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#20060-0 "Pressure.airway^at zero inspiratory flow on ventilator"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 3 'cm[H2O]' "cmH2O"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-atemdr-null-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-atemdr-mitt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-atemwegsdruck-bei-mittlerem-expiratorischem-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Atemwegsdruck Bei Mittlerem Expiratorischem Gasfluss"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#20056-8 "Pressure.airway^at mean expiratory flow on ventilator"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 8 'cm[H2O]' "cmH2O"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-atemdr-mitt-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-vt-einst-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-atemzugvolumen-einstellung
Usage: #example
Description: "ICU Observation: MII PR ICU Atemzugvolumen Einstellung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#416811008 "Tidal volume setting (observable entity)"
* code.coding[loinc] = $loinc#20112-9 "Tidal volume setting Ventilator"
* code.coding[IEEE-11073] = $11073-10101#16929196 "MDC_VENT_VOL_TIDAL_SETTING"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 340 'mL' "mL"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-vt-einst-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-vt-beat-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-atemzugvolumen-waehrend-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Atemzugvolumen Waehrend Beatmung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250874002 "Ventilator delivered tidal volume (observable entity)"
* code.coding[loinc] = $loinc#76222-9 "Tidal volume Ventilator --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151980 "Volume of gas delivered through the patient-connection port during a respiratory cycle."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 320 'mL' "mL"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-vt-beat-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-mv-masch-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-beatmungsvolumen-pro-minute-maschineller-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Beatmungsvolumen Pro Minute Maschineller Beatmung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250875001 "Ventilator delivered minute volume (observable entity)"
* code.coding[loinc] = $loinc#76009-0 "Inspired minute Volume during Mechanical ventilation"
* code.coding[IEEE-11073] = $11073-10101#152004 "Total volume of gas breathed in during 1 min during mechanical ventilation."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 7.5 'L/min' "L/min"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-mv-masch-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-zeit-hoch-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-beatmungszeit-hohem-druck
Usage: #example
Description: "ICU Observation: MII ICU Beatmungszeit Hohem Druck"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#76190-8 "High pressure hold time setting Ventilator"
* code.coding[IEEE-11073] = $11073-10101#16929860 "MDC_VENT_TIME_PD_INSP_THIGH_SETTING"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 1.0 's' "seconds"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-zeit-hoch-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-zeit-niedrig-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-beatmungszeit-niedrigem-druck
Usage: #example
Description: "ICU Observation: MII PR ICU Beatmungszeit Niedrigem Druck"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#76229-4 "Low pressure hold time setting Ventilator"
* code.coding[IEEE-11073] = $11073-10101#16929864 "MDC_VENT_TIME_PD_EXP_TLOW_SETTING"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 0.8 's' "seconds"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-zeit-niedrig-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-insp-flow-set-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-eingestellter-inspiratorischer-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Eingestellter Inspiratorischer Gasfluss"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#76275-7 "Inspiratory flow setting Ventilator"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 40 'L/min' "L/min"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-insp-flow-set-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-te-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-einstellung-ausatmungszeit-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Einstellung Ausatmungszeit Beatmung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250820008 "Expiratory time (observable entity)"
* code.coding[loinc] = $loinc#76187-4 "Expiratory hold time setting"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 2.0 's' "seconds"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-te-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-ti-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-einstellung-einatmungszeit-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Einstellung Einatmungszeit Beatmung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250819002 "Inspiratory time (observable entity)"
* code.coding[loinc] = $loinc#76334-2 "Inspiratory time setting"
* code.coding[IEEE-11073] = $11073-10101#16929632 "MDC_VENT_TIME_PD_INSP_SETTING"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 1.0 's' "seconds"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-ti-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-etco2-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-endexpiratorischer-kohlendioxidpartialdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Endexpiratorischer Kohlendioxidpartialdruck"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250790007 "End tidal carbon dioxide tension (observable entity)"
* code.coding[loinc] = $loinc#19891-1 "Carbon dioxide^at end expiration"
* code.coding[IEEE-11073] = $11073-10101#151708 "Partial pressure of carbon dioxide in airway gas measured at the end of expiration."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 35 'mm[Hg]' "mmHg"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-etco2-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-exp-flow-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-exspiratorischer-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Exspiratorischer Gasfluss"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#60792-9 "Expiratory gas flow Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151944 "Expiratory gas flow during mechanical ventilation. "
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 35 'L/min' "L/min"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-exp-flow-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-horowitz-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-horowitz-in-arteriellem-blut
Usage: #example
Description: "ICU Observation: MII PR ICU Horowitz In Arteriellem Blut"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#50984-4 "Horowitz index in Arterial blood"
* code.coding[IEEE-11073] = $11073-10101#150656 "Oxygenation Ratio, calculated as the ratio of PaO2 (partial pressure of arterial oxygen) divided by FiO2 (the fractional of inspired oxygen, e.g., FiO2 in air = 0.21)."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 68 'mm[Hg]' "mmHg"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-horowitz-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-fio2-gem-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-inspiratorische-sauerstofffraktion
Usage: #example
Description: "ICU Observation: MIIm PR ICU Inspiratorische Sauerstofffraktion Gemessen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250774007 "Inspired oxygen concentration (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 0.52 '%' "percent"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-fio2-gem-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-insp-flow-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-inspiratorischer-gasfluss
Usage: #example
Description: "ICU Observation: MII PR ICU Inspiratorischer Gasfluss"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#60794-5 "Inspiratory gas flow Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151948 "MDC_VENT_FLOW_INSP"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 40 'L/min' "L/min"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-insp-flow-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-pip-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-maximaler-beatmungsdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Maximaler Beatmungsdruck"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#27913002 "Maximum inspiratory pressure"
* code.coding[loinc] = $loinc#76531-3 "Pressure.max Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151957 "Maximum airway pressure during mechanical ventilation."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 27 'cm[H2O]' "cmH2O"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-pip-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-freq-mech-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-mechanische-atemfrequenz-beatmet
Usage: #example
Description: "ICU Observation: MII PR ICU Mechanische Atemfrequenz Beatmet"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250876000 "Ventilator rate (observable entity)"
* code.coding[loinc] = $loinc#33438-3 "Breath rate mechanical --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151586 "Rate of mechanical ventilation; method not specified."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 12 '{Breaths}/min' "breaths per minute"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-freq-mech-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-map-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-mittlerer-beatmungsdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Mittlerer Beatmungsdruck"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#698821009 "Mean inspiratory airway pressure (observable entity)"
* code.coding[loinc] = $loinc#76530-5 "Mean pressure Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151975 "Mean inspiratory airway pressure."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 18 'cm[H2O]' "cmH2O"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-map-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-peep-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-positiv-endexpiratorischer-druck
Usage: #example
Description: "ICU Observation: MII PR ICU Positiv Endexpiratorischer Druck"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250854009 "Positive end expiratory pressure (observable entity)"
* code.coding[loinc] = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151976 "Positive end expiratory pressure applied to the airway."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 14 'cm[H2O]' "cmH2O"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-peep-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-freq-spont-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-spontane-atemfrequenz-beatmet
Usage: #example
Description: "ICU Observation: MII PR ICU Spontane Atemfrequenz Beatmet"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[IEEE-11073] = $11073-10101#152498 "Rate of breaths or inspiratory gas flow initiated and terminated by the patient where pressure and flow/volume delivery are determined by the patient without support or assistance by the ventilator. Includes unassisted breaths that are superimposed on the intermittently elevated baseline pressure with APRV, bilevel or spontaneous-only modes."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 4 '/min' "breaths per minute"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-freq-spont-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-freq-spont-mech-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-spontane-mechanische-atemfrequenz-beatmet
Usage: #example
Description: "ICU Observation: MII PR ICU Spontane Mechanische Atemfrequenz Beatmet"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250810003 "Total breath rate (observable entity)"
* code.coding[loinc] = $loinc#19840-8 "Breath rate spontaneous and mechanical --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#152490 "Total rate of breaths or inspiratory gas flow comprised of unassisted (P), supported (S), assisted (A), synchronized assisted (Z) and controlled (C) breath types."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 20 '/min' "breaths per minute"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-freq-spont-mech-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-vt-spont-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-spontanes-atemzugvolumen
Usage: #example
Description: "ICU Observation: MII PR ICU Spontanes Atemzugvolumen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250816009 "Spontaneous tidal volume (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 450 'mL' "mL"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-vt-spont-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-vt-spont-mech-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-spontanes-mechanisches-atemzugvolumen-waehrend-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Spontanes Plus Mechanisches Atemzugvolumen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#20118-6 "Tidal volume.spontaneous+mechanical --on ventilator"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 470 'mL' "mL"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-vt-spont-mech-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-ps-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-unterstuetzungsdruck-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Unterstuezungsdruck Beatmung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#20079-0 "Pressure support setting Ventilator"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 12 'cm[H2O]' "cmH2O"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-ps-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-ie-ratio-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-zeitverhaeltnis-ein-ausatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Zeitverhaeltnis Ein Ausatmung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250822000 "Inspiration/expiration time ratio (observable entity)"
* code.coding[loinc] = $loinc#75931-6 "Inspiration/Expiration time Ratio"
* code.coding[IEEE-11073] = $11073-10101#151832 "Ratio of durations of inspiratory and expiratory phases."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 0.5 '{ratio}' "ratio"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-ie-ratio-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-compliance-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-dynamische-kompliance
Usage: #example
Description: "ICU Observation: dynamische-kompliance"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250823005 "Total dynamic compliance (observable entity)"
* code.coding[IEEE-11073] = $11073-10101#151692 "Change of tidal volume per unit change of transthoracic pressure."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 50 'mL/cm[H2O]' "mL/cmH2O"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-compliance-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

Instance: mii-exa-test-data-patient-1-icu-vent-dp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-druckdifferenz-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Druckdifferenz Beatmung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[loinc] = $loinc#76154-4 "Airway pressure delta^on ventilator"
* code.coding[IEEE-11073] = $11073-10101#152720 "Inspiratory airway pressure relative to PEEP or BAP."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 13 'cm[H2O]' "cmH2O"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-dp-1"
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* issued = "2024-05-05T11:00:00+02:00"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)
