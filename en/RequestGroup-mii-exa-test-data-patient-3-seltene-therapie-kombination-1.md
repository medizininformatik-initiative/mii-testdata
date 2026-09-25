# mii-exa-test-data-patient-3-seltene-therapie-kombination-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-therapie-kombination-1**

## Example RequestGroup: mii-exa-test-data-patient-3-seltene-therapie-kombination-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Therapieempfehlung Kombinationstherapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX SE Empfehlung Priorität**: 1

**de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung**: Evidenzgrad 1A

**MII EX SE Empfehlung Publikation**: Marfan-Leitlinie DGK 2024

**identifier**: `https://www.charite.de/fhir/sid/seltene-kombination`/SE-KOMBI-2025-001

**status**: Draft

**intent**: Proposal

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

### Actions

| | |
| :--- | :--- |
| - | **Resource** |
| * | [MedicationRequest: extension = 1,Evidenzgrad 1A,https://doi.org#10.1016/j.ejphar.2015.03.048; identifier = https://www.charite.de/fhir/sid/therapieempfehlungen#SE-TE-2025-0001; status = active; intent = proposal; category = Präventive Medikation,Symptomatisch; medication[x] = Losartan; authoredOn = 2025-03-10; reasonCode = Marfan syndrome; note = Zieldosis 50 mg erreicht; Blutdruck- und Aortenwurzel-Kontrolle alle 6 Monate.](MedicationRequest-mii-exa-test-data-patient-3-seltene-therapieempfehlung-1.md) |



## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "mii-exa-test-data-patient-3-seltene-therapie-kombination-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet",
    "valuePositiveInt" : 1
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.cebm.ox.ac.uk/resources/levels-of-evidence",
        "code" : "1A",
        "display" : "Evidenzgrad 1A"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation",
    "valueString" : "Marfan-Leitlinie DGK 2024"
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/seltene-kombination",
    "value" : "SE-KOMBI-2025-001"
  }],
  "status" : "draft",
  "intent" : "proposal",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "action" : [{
    "resource" : {
      "reference" : "MedicationRequest/mii-exa-test-data-patient-3-seltene-therapieempfehlung-1"
    }
  }]
}

```
