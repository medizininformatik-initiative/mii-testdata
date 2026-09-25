# mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1**

## Example Procedure: mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Lungenfunktion Bodyplethysmographie Messung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-bodyplethysmographie-messung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**ExtensionProzedurDokumentationsdatum**: 2025-02-18 09:50:00+0100

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 261004008](http://snomed.info/id/261004008) (Diagnostic intent)

**partOf**: [Procedure Measurement of respiratory function (procedure)](Procedure-mii-exa-test-data-lungenfunktion-untersuchung-1.md)

**status**: Completed

**category**: Measurement of respiratory function (procedure)

**code**: Total body plethysmography (procedure)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-02-18 08:30:00+0100 --> 2025-02-18 12:30:00+0100](Encounter-mii-exa-test-data-lungenfunktion-encounter-1.md)

**performed**: 2025-02-18 09:30:00+0100

**bodySite**: Lung structure (body structure)

**outcome**: Successful (qualifier value)

**report**: [Diagnostic Report for 'Total body plethysmography (procedure)' for '->Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)'](DiagnosticReport-mii-exa-test-data-lungenfunktion-bodyplethysmografie-befund-1.md)

**note**: 

> 

Bodyplethysmographie in geschlossener Kabine, stabile Atemschleifen.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-bodyplethysmographie-messung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2025-02-18T09:50:00+01:00"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "261004008",
      "display" : "Diagnostic intent"
    }
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-lungenfunktion-untersuchung-1"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "23426006",
      "display" : "Measurement of respiratory function (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "28275007",
      "display" : "Total body plethysmography (procedure)"
    },
    {
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "B"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "1-710",
      "display" : "Ganzkörperplethysmographie"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-lungenfunktion-encounter-1"
  },
  "performedDateTime" : "2025-02-18T09:30:00+01:00",
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "39607008",
      "display" : "Lung structure (body structure)"
    }]
  }],
  "outcome" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "385669000",
      "display" : "Successful (qualifier value)"
    }]
  },
  "report" : [{
    "reference" : "DiagnosticReport/mii-exa-test-data-lungenfunktion-bodyplethysmografie-befund-1"
  }],
  "note" : [{
    "text" : "Bodyplethysmographie in geschlossener Kabine, stabile Atemschleifen."
  }]
}

```
