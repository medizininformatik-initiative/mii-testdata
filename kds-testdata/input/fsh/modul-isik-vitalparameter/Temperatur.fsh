// ============================================================================
// ISiK Vitalparameter Test Data - Koerpertemperatur-Familie (ISiK 6.0.0)
// Zwei Vererbungslinien im ISiK-Paket:
// (a) von ISiKKoerperkerntemperatur abgeleitet (Slices loinc/coretemp-loinc/
//     snomed + je nach Messort specific-loinc/specific-IEEE-11073/IEEE11073),
// (b) von sd-mii-icu-koerpertemperatur-generisch abgeleitet (Slices
//     sct/loinc/IEEE-11073/specific-loinc, Kategorie-Slice vs-cat).
// Je Messort eine Instanz mit orts-typisch plausiblem Wert (2026-05-12).
// ============================================================================

// Geruest fuer die ISiKKoerperkerntemperatur-Linie (Kategorie-Slice VSCat)
RuleSet: IsikTempKernBase(time)
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "{time}"
* performer.display = "Pflegefachkraft Station 14i"

// ---------------------------------------------------------------------------
// (b) sd-mii-icu-koerpertemperatur-generisch und Ableitungen
// ---------------------------------------------------------------------------

// Generisches Profil (konkret): 37.0 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-generisch-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-generisch
Usage: #example
Description: "MII-ICU Koerpertemperatur (generisch): 37.0 GradC"
* insert IsikMuvBase(2026-05-12T11:00:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* valueQuantity = 37.0 'Cel' "Grad Celsius"

// Atemwege: 36.7 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-atemwege-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-atemwege
Usage: #example
Description: "MII-ICU Koerpertemperatur Atemwege: 36.7 GradC"
* insert IsikMuvBase(2026-05-12T11:00:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[IEEE-11073] = $11073-10101#150356
* code.coding[specific-loinc] = $loinc#60955-2 "Airway temperature"
* valueQuantity = 36.7 'Cel' "Grad Celsius"
* bodySite = $sct#89187006 "Airway structure (body structure)"

// Brust (Hauttemperatur): 36.4 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-brust-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-brust
Usage: #example
Description: "MII-ICU Koerpertemperatur Brust: 36.4 GradC"
* insert IsikMuvBase(2026-05-12T11:00:00+02:00)
* code.coding[sct] = $sct#248835004 "Breast temperature (observable entity)"
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* valueQuantity = 36.4 'Cel' "Grad Celsius"
* bodySite = $sct#76752008 "Breast structure (body structure)"

// Brustwirbelsaeule: 36.9 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-bws-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-brustwirbelsaeule
Usage: #example
Description: "MII-ICU Koerpertemperatur Brustwirbelsaeule: 36.9 GradC"
* insert IsikMuvBase(2026-05-12T11:00:00+02:00)
* code.coding[sct] = $sct#364424001 "Thoracic spine temperature (observable entity)"
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* valueQuantity = 36.9 'Cel' "Grad Celsius"
* bodySite = $sct#122495006 "Thoracic vertebral column structure (body structure)"

// Gelenk (Knie): 35.8 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-gelenk-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-gelenk
Usage: #example
Description: "MII-ICU Koerpertemperatur Gelenk: 35.8 GradC"
* insert IsikMuvBase(2026-05-12T11:05:00+02:00)
* code.coding[sct] = $sct#250124002 "Joint temperature (observable entity)"
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* valueQuantity = 35.8 'Cel' "Grad Celsius"
* bodySite = $sct#39352004 "Joint structure (body structure)"

// Halswirbelsaeule: 36.8 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-hws-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-halswirbelsaeule
Usage: #example
Description: "MII-ICU Koerpertemperatur Halswirbelsaeule: 36.8 GradC"
* insert IsikMuvBase(2026-05-12T11:05:00+02:00)
* code.coding[sct] = $sct#364419004 "Cervical spine temperature (observable entity)"
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* valueQuantity = 36.8 'Cel' "Grad Celsius"
* bodySite = $sct#122494005 "Cervical vertebral column structure (body structure)"

// Lendenwirbelsaeule: 36.9 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-lws-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-lendenwirbelsaeule
Usage: #example
Description: "MII-ICU Koerpertemperatur Lendenwirbelsaeule: 36.9 GradC"
* insert IsikMuvBase(2026-05-12T11:05:00+02:00)
* code.coding[sct] = $sct#364429006 "Temperature of lumbar spine (observable entity)"
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* valueQuantity = 36.9 'Cel' "Grad Celsius"
* bodySite = $sct#122496007 "Lumbar vertebral column structure (body structure)"

// Myokard: 37.0 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-myokard-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-myokard
Usage: #example
Description: "MII-ICU Koerpertemperatur Myokard: 37.0 GradC"
* insert IsikMuvBase(2026-05-12T11:05:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[IEEE-11073] = $11073-10101#188500
* code.coding[specific-loinc] = $loinc#61009-7 "Myocardium temperature"
* valueQuantity = 37.0 'Cel' "Grad Celsius"
* bodySite = $sct#74281007 "Myocardium structure (body structure)"

// Nasal: 36.5 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-nasal-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-nasal
Usage: #example
Description: "MII-ICU Koerpertemperatur nasal: 36.5 GradC"
* insert IsikMuvBase(2026-05-12T11:10:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[IEEE-11073] = $11073-10101#188504
* code.coding[specific-loinc] = $loinc#76010-8 "Nasal temperature"
* valueQuantity = 36.5 'Cel' "Grad Celsius"
* bodySite = $sct#45206002 "Nasal structure (body structure)"

// Nasen-Rachen-Raum: 36.9 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-nasopharynx-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-nasen-rachen-raum
Usage: #example
Description: "MII-ICU Koerpertemperatur Nasen-Rachen-Raum: 36.9 GradC"
* insert IsikMuvBase(2026-05-12T11:10:00+02:00)
* code.coding[sct] = $sct#698831002 "Core body temperature measured at nasopharynx (observable entity)"
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[IEEE-11073] = $11073-10101#150380
* code.coding[specific-loinc] = $loinc#60838-0 "Nasopharyngeal temperature"
* valueQuantity = 36.9 'Cel' "Grad Celsius"
* bodySite = $sct#71836000 "Nasopharyngeal structure (body structure)"

// Stirn (Hauttemperatur): 36.3 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-stirn-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-stirn
Usage: #example
Description: "MII-ICU Koerpertemperatur Stirn: 36.3 GradC"
* insert IsikMuvBase(2026-05-12T11:10:00+02:00)
* code.coding[sct] = $sct#415922000 "Forehead temperature (observable entity)"
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* valueQuantity = 36.3 'Cel' "Grad Celsius"
* bodySite = $sct#52795006 "Forehead structure (body structure)"

// ---------------------------------------------------------------------------
// (a) ISiKKoerperkerntemperatur-Linie
// ---------------------------------------------------------------------------

// Kerntemperatur (unspezifischer Messort): 37.2 GradC - IEEE11073-Slice
// 150364 ist hier (anders als bei den Geschwistern) 1..1
Instance: mii-exa-test-data-isik-vitalparameter-temp-kern-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-kern
Usage: #example
Description: "MII-ICU Koerperkerntemperatur (Kern): 37.2 GradC"
* insert IsikTempKernBase(2026-05-12T11:15:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[snomed] = $sct#276885007 "Core body temperature (observable entity)"
* code.coding[IEEE11073] = $11073-10101#150364
* valueQuantity = 37.2 'Cel' "Grad Celsius"

// Rektal: 37.6 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-rektal-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-rektal
Usage: #example
Description: "MII-ICU Koerpertemperatur rektal: 37.6 GradC"
* insert IsikTempKernBase(2026-05-12T11:15:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[snomed] = $sct#307047009 "Rectal temperature (observable entity)"
* code.coding[specific-loinc] = $loinc#8332-9 "Rectal temperature"
* code.coding[specific-IEEE-11073] = $11073-10101#188420
* valueQuantity = 37.6 'Cel' "Grad Celsius"
* bodySite = $sct#34402009 "Rectum structure (body structure)"

// Blut (invasiv, z.B. PA-Katheter): 37.3 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-blut-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-blut
Usage: #example
Description: "MII-ICU Koerpertemperatur Blut: 37.3 GradC"
* insert IsikTempKernBase(2026-05-12T11:15:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[snomed] = $sct#1222808002 "Core body temperature measured in blood (observable entity)"
* code.coding[specific-loinc] = $loinc#60834-9 "Blood temperature"
* code.coding[specific-IEEE-11073] = $11073-10101#188436
* valueQuantity = 37.3 'Cel' "Grad Celsius"

// Achsel (axillaer): 36.6 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-achsel-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-achsel
Usage: #example
Description: "MII-ICU Koerpertemperatur axillaer: 36.6 GradC"
* insert IsikTempKernBase(2026-05-12T11:20:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[snomed] = $sct#415882003 "Axillary temperature (observable entity)"
* code.coding[specific-loinc] = $loinc#8328-7 "Axillary temperature"
* valueQuantity = 36.6 'Cel' "Grad Celsius"
* bodySite = $sct#91470000 "Axillary fossa structure (body structure)"

// Harnblase (Blasenkatheter mit Temperatursonde): 37.4 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-harnblase-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-harnblase
Usage: #example
Description: "MII-ICU Koerpertemperatur Harnblase: 37.4 GradC"
* insert IsikTempKernBase(2026-05-12T11:20:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[snomed] = $sct#698832009 "Core body temperature measured in urinary bladder (observable entity)"
* code.coding[specific-loinc] = $loinc#8334-5 "Body temperature - Urinary bladder"
* valueQuantity = 37.4 'Cel' "Grad Celsius"
* bodySite = $sct#89837001 "Urinary bladder structure (body structure)"

// Leiste (inguinal): 36.8 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-leiste-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-leiste
Usage: #example
Description: "MII-ICU Koerpertemperatur Leiste: 36.8 GradC"
* insert IsikTempKernBase(2026-05-12T11:20:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[snomed] = $sct#415929009 "Groin temperature (observable entity)"
* code.coding[specific-loinc] = $loinc#104063-3 "Groin temperature"
* valueQuantity = 36.8 'Cel' "Grad Celsius"
* bodySite = $sct#26893007 "Inguinal region structure (body structure)"

// Speiseroehre (oesophageal): 37.3 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-oesophagus-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-speiseroehre
Usage: #example
Description: "MII-ICU Koerpertemperatur oesophageal: 37.3 GradC"
* insert IsikTempKernBase(2026-05-12T11:25:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[snomed] = $sct#431598003 "Core body temperature measured in esophagus (observable entity)"
* code.coding[specific-loinc] = $loinc#60836-4 "Esophageal temperature"
* code.coding[specific-IEEE-11073] = $11073-10101#150372
* valueQuantity = 37.3 'Cel' "Grad Celsius"
* bodySite = $sct#32849002 "Esophageal structure (body structure)"

// Trommelfell (tympanal): 37.1 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-trommelfell-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-trommelfell
Usage: #example
Description: "MII-ICU Koerpertemperatur tympanal: 37.1 GradC"
* insert IsikTempKernBase(2026-05-12T11:25:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[snomed] = $sct#415974002 "Core body temperature measured at tympanic membrane (observable entity)"
* code.coding[specific-loinc] = $loinc#8333-7 "Tympanic membrane temperature"
* code.coding[specific-IEEE-11073] = $11073-10101#150392
* valueQuantity = 37.1 'Cel' "Grad Celsius"
* bodySite = $sct#42859004 "Tympanic membrane structure (body structure)"

// Unter der Zunge (sublingual/oral): 36.9 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-sublingual-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-unter-der-zunge
Usage: #example
Description: "MII-ICU Koerpertemperatur sublingual: 36.9 GradC"
* insert IsikTempKernBase(2026-05-12T11:25:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[snomed] = $sct#415945006 "Oral temperature (observable entity)"
* code.coding[specific-loinc] = $loinc#8331-1 "Oral temperature"
* code.coding[specific-IEEE-11073] = $11073-10101#188424
* valueQuantity = 36.9 'Cel' "Grad Celsius"
* bodySite = $sct#123851003 "Region of oral cavity (body structure)"

// Vaginal: 37.2 GradC
Instance: mii-exa-test-data-isik-vitalparameter-temp-vaginal-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-vaginal
Usage: #example
Description: "MII-ICU Koerpertemperatur vaginal: 37.2 GradC"
* insert IsikTempKernBase(2026-05-12T11:30:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[snomed] = $sct#364246006 "Vaginal temperature (observable entity)"
* valueQuantity = 37.2 'Cel' "Grad Celsius"
* bodySite = $sct#76784001 "Vaginal structure (body structure)"

// Koerperkerntemperatur Stirn (z.B. Zero-Heat-Flux-Sensor): 36.9 GradC
Instance: mii-exa-test-data-isik-vitalparameter-kerntemp-stirn-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerperkerntemperatur-stirn
Usage: #example
Description: "MII-ICU Koerperkerntemperatur Stirn: 36.9 GradC"
* insert IsikTempKernBase(2026-05-12T11:30:00+02:00)
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[coretemp-loinc] = $loinc#8329-5 "Body temperature - Core"
* code.coding[snomed] = $sct#1366425007 "Core body temperature measured at forehead (observable entity)"
* valueQuantity = 36.9 'Cel' "Grad Celsius"
* bodySite = $sct#52795006 "Forehead structure (body structure)"
