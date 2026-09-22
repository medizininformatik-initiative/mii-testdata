// ============================================================================
// MII Kardiologie Test Data - Conditions
// mii-pr-kardio-diagnose (2x) und mii-pr-kardio-klappenvitium (1x)
// ============================================================================

// Kardiologische Diagnose: Z.n. akutem Myokardinfarkt der Vorderwand
Instance: mii-exa-test-data-kardiologie-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose
Usage: #example
Description: "Kardio Diagnose: Akuter transmuraler Myokardinfarkt der Vorderwand"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code.coding[icd10-gm] = $icd-10-gm#I21.0 "Akuter transmuraler Myokardinfarkt der Vorderwand"
* code.coding[icd10-gm].version = "2026"
* code.coding[sct] = $sct20260701#22298006 "Myocardial infarction (disorder)"
* severity = $sct20260701#24484000 "Severe (severity modifier) (qualifier value)"
* subject = Reference(mii-exa-test-data-kardiologie-patient-1)
* recorder.display = "Facharzt fuer Kardiologie"
* asserter.display = "Facharzt fuer Kardiologie"
* onsetDateTime = "2020-03-15"
* recordedDate = "2025-03-10"
* note.text = "Z.n. Vorderwandinfarkt 03/2020 mit PCI und Stentimplantation RIVA."

// Kardiologische Diagnose: embolischer Gefaessverschluss cerebro-vaskulaer
// (nutzt den modul-eigenen Slice code.coding[kardio] mit Code eg-cv)
Instance: mii-exa-test-data-kardiologie-diagnose-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose
Usage: #example
Description: "Kardio Diagnose: Hirninfarkt durch embolischen Verschluss zerebraler Arterien (eg-cv)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code.coding[icd10-gm] = $icd-10-gm#I63.4 "Hirninfarkt durch Embolie zerebraler Arterien"
* code.coding[icd10-gm].version = "2026"
* code.coding[sct] = $sct20260701#75543006 "Cerebral embolism (disorder)"
* code.coding[kardio] = $kardio-cs-atherosklerotisches-ereignis#eg-cv "Embolischer Gefäßverschluss cerebro-vaskulär"
* code.coding[kardio].version = "2027.0.0-ballot"
* subject = Reference(mii-exa-test-data-kardiologie-patient-1)
* recorder.display = "Facharzt fuer Neurologie"
* asserter.display = "Facharzt fuer Neurologie"
* onsetDateTime = "2023-08-02"
* recordedDate = "2025-03-10"
* note.text = "Embolischer Mediainfarkt links 08/2023 bei intermittierendem Vorhofflimmern."

// Klappenvitium: hoehergradige Aortenklappenstenose
Instance: mii-exa-test-data-kardiologie-klappenvitium-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-klappenvitium
Usage: #example
Description: "Kardio Klappenvitium: hoehergradige Aortenklappenstenose"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code.coding[icd10-gm] = $icd-10-gm#I35.0 "Aortenklappenstenose"
* code.coding[icd10-gm].version = "2026"
* code.coding[sct] = $sct20260701#60573004 "Aortic valve stenosis (disorder)"
* severity = $sct20260701#423343006 "Grade 3 on a scale of 1 to 3 (qualifier value)"
* bodySite.coding[snomed-ct] = $sct20260701#34202007 "Aortic valve structure (body structure)"
* subject = Reference(mii-exa-test-data-kardiologie-patient-1)
* recorder.display = "Facharzt fuer Kardiologie"
* asserter.display = "Facharzt fuer Kardiologie"
* onsetDateTime = "2024-06-11"
* recordedDate = "2025-03-10"
* note.text = "Echokardiographisch hochgradige Aortenklappenstenose (AOeF 0,9 cm2)."
