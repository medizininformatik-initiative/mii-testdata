// ============================================================================
// ICU - Specimen (Proben zu den Bilanz-Observations)
//
// Die Bilanz-Profile fuehren Observation.specimen als Must-Support. Fuer die
// AUSFUHR-Profile ist das die aus dem Patienten stammende Fluessigkeit (Urin,
// Stuhl, Magensaft, Galle, Drainagesekret ...), die zusaetzlich zur reinen
// Volumenbilanz asserviert wird. Fuer die EINFUHR-Profile ist es die
// Rueckstellprobe / Chargenprobe der verabreichten Fluessigkeit (in der
// Neonatologie fuer Mutter-, Spendermilch und Formulanahrung Routine).
//
// Specimen.type: SNOMED CT (Basis-Binding ist "example"), Codes verifiziert.
// ============================================================================

RuleSet: IcuSpecimenBase
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #available
* identifier.system = "https://www.charite.de/fhir/sid/icu-specimen-id"

// ----------------------------------------------------------------------------
// Ausfuhr: patienteneigene Koerperfluessigkeiten
// ----------------------------------------------------------------------------

Instance: mii-exa-test-data-patient-1-icu-spec-urin-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Urinprobe aus dem Dauerkatheter-Sammelsystem (Bilanz Ausfuhr Urin)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-urin-1"
* type = $sct#122575003 "Urine specimen"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* receivedTime = "2024-05-05T08:30:00+02:00"
* collection.collectedDateTime = "2024-05-05T08:00:00+02:00"
* collection.bodySite = $sct#89837001 "Structure of urinary bladder"

Instance: mii-exa-test-data-patient-1-icu-spec-stuhl-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Stuhlprobe aus dem Faekalkollektor (Bilanz Ausfuhr Stuhlgang)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-stuhl-1"
* type = $sct#119339001 "Faeces specimen"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* receivedTime = "2024-05-05T08:30:00+02:00"
* collection.collectedDateTime = "2024-05-05T08:00:00+02:00"
* collection.bodySite = $sct#71854001 "Colon structure"

Instance: mii-exa-test-data-patient-1-icu-spec-magensaft-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Magensaft aus der Ableitung ueber die Magensonde (Bilanz Ausfuhr Magensonde)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-magensaft-1"
* type = $sct#258459007 "Gastric fluid"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* receivedTime = "2024-05-05T08:30:00+02:00"
* collection.collectedDateTime = "2024-05-05T08:00:00+02:00"
* collection.bodySite = $sct#69695003 "Structure of stomach"

Instance: mii-exa-test-data-patient-1-icu-spec-galle-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Gallefluessigkeit aus der biliaeren Drainage (Bilanz Ausfuhr Gallenfluessigkeit)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-galle-1"
* type = $sct#119341000 "Bile specimen"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* receivedTime = "2024-05-05T08:30:00+02:00"
* collection.collectedDateTime = "2024-05-05T08:00:00+02:00"
* collection.bodySite = $sct#28273000 "Bile duct structure"

Instance: mii-exa-test-data-patient-1-icu-spec-pankreassekret-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Pankreassekret aus der Pankreasdrainage (Bilanz Ausfuhr Pankreasdrainage)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-pankreassekret-1"
* type = $sct#119343002 "Pancreatic fluid"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* receivedTime = "2024-05-05T08:30:00+02:00"
* collection.collectedDateTime = "2024-05-05T08:00:00+02:00"
* collection.bodySite = $sct#15776009 "Pancreatic structure"

Instance: mii-exa-test-data-patient-1-icu-spec-drainagesekret-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Drainagesekret (generische Drainage und OP-Drainage)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-drainagesekret-1"
* type = $sct#258455001 "Drainage fluid"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* receivedTime = "2024-05-05T08:30:00+02:00"
* collection.collectedDateTime = "2024-05-05T08:00:00+02:00"

Instance: mii-exa-test-data-patient-1-icu-spec-wundsekret-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Wundsekret aus der Wunddrainage (Bilanz Ausfuhr Wunddrainage)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-wundsekret-1"
* type = $sct#122566000 "Fluid specimen from wound"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* receivedTime = "2024-05-05T08:30:00+02:00"
* collection.collectedDateTime = "2024-05-05T08:00:00+02:00"
* collection.bodySite = $sct#59380008 "Anterior abdominal wall structure"

Instance: mii-exa-test-data-patient-1-icu-spec-blut-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: blutiges Trachealsekret / Blutprobe zur Quantifizierung des Blutverlusts"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-blut-1"
* type = $sct#119297000 "Blood specimen"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* receivedTime = "2024-05-05T08:30:00+02:00"
* collection.collectedDateTime = "2024-05-05T08:00:00+02:00"

Instance: mii-exa-test-data-patient-1-icu-spec-haemofiltrat-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Effluat/Ultrafiltrat aus dem Haemofiltrationskreislauf"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-haemofiltrat-1"
* type = $sct#258454002 "Dialysate specimen"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* receivedTime = "2024-05-05T08:30:00+02:00"
* collection.collectedDateTime = "2024-05-05T08:00:00+02:00"

Instance: mii-exa-test-data-patient-1-icu-spec-koerperfluessigkeit-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Sammelprobe Koerperfluessigkeit (Gesamtbilanz / Tagesbilanz)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-koerperfluessigkeit-1"
* type = $sct#258442002 "Fluid sample"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* receivedTime = "2024-05-05T08:30:00+02:00"
* collection.collectedDateTime = "2024-05-05T08:00:00+02:00"

// ----------------------------------------------------------------------------
// Einfuhr: Rueckstellproben der verabreichten Fluessigkeiten
// (kein Patientenbezug - die Probe stammt aus dem verabreichten Produkt)
// ----------------------------------------------------------------------------

Instance: mii-exa-test-data-patient-1-icu-spec-muttermilch-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Rueckstellprobe Muttermilch (Bilanz Einfuhr Muttermilch)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-muttermilch-1"
* type = $sct#119328004 "Mother's milk specimen"
* receivedTime = "2024-05-06T05:45:00+02:00"
* collection.collectedDateTime = "2024-05-06T05:30:00+02:00"

Instance: mii-exa-test-data-patient-1-icu-spec-muttermilch-abgep-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Rueckstellprobe abgepumpte Muttermilch (Bilanz Einfuhr abgepumpte Muttermilch)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-muttermilch-abgep-1"
* type = $sct#446676001 "Expressed breast milk specimen"
* receivedTime = "2024-05-06T05:45:00+02:00"
* collection.collectedDateTime = "2024-05-06T05:30:00+02:00"

Instance: mii-exa-test-data-patient-1-icu-spec-spendermilch-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Chargenprobe Spendermilch aus der Frauenmilchbank (Bilanz Einfuhr Spendermilch)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-spendermilch-1"
* type = $sct#119321005 "Milk specimen"
* receivedTime = "2024-05-06T05:45:00+02:00"
* collection.collectedDateTime = "2024-05-06T05:30:00+02:00"

Instance: mii-exa-test-data-patient-1-icu-spec-saeuglingsnahrung-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Chargenprobe Saeuglingsnahrung (Bilanz Einfuhr Saeuglingsnahrung)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-saeuglingsnahrung-1"
* type = $sct#258653001 "Formula milk sample"
* receivedTime = "2024-05-06T05:45:00+02:00"
* collection.collectedDateTime = "2024-05-06T05:30:00+02:00"

Instance: mii-exa-test-data-patient-1-icu-spec-sondennahrung-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Chargenprobe Sondennahrung (Bilanz Einfuhr enterale Fluessigkeit)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-sondennahrung-1"
* type = $sct#119320006 "Food specimen"
* receivedTime = "2024-05-05T07:45:00+02:00"
* collection.collectedDateTime = "2024-05-05T07:30:00+02:00"

Instance: mii-exa-test-data-patient-1-icu-spec-trinkwasser-1
InstanceOf: Specimen
Usage: #example
Description: "ICU Specimen: Probe des oral verabreichten Trinkwassers (Bilanz Einfuhr orale Fluessigkeit)"
* insert IcuSpecimenBase
* identifier.value = "icu-spec-trinkwasser-1"
* type = $sct#119318008 "Water specimen"
* receivedTime = "2024-05-05T07:45:00+02:00"
* collection.collectedDateTime = "2024-05-05T07:30:00+02:00"
