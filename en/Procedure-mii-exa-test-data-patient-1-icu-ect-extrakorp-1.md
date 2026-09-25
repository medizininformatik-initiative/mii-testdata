# mii-exa-test-data-patient-1-icu-ect-extrakorp-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-ect-extrakorp-1**

## Example Procedure: mii-exa-test-data-patient-1-icu-ect-extrakorp-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Extrakorporales Verfahren](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-extrakorporales-verfahren)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**ExtensionProzedurDokumentationsdatum**: 2024-05-11 15:00:00+0200

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**status**: Completed

**category**: Extracorporeal circulation procedure

**code**: Extracorporeal membrane oxygenation (procedure)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**performed**: 2024-05-03 02:00:00+0200 --> 2024-05-11 14:00:00+0200

**recorder**: [Practitioner Katharina Weber ](Practitioner-mii-exa-test-data-icu-practitioner-1.md)

**bodySite**: Femoral vein structure (body structure)

**note**: 

> 

VV-ECMO ueber femoro-jugulaere Kanuelierung bei schwerem COVID-ARDS, komplikationsloser Lauf ueber 8 Tage.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-patient-1-icu-ect-extrakorp-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-extrakorporales-verfahren"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2024-05-11T15:00:00+02:00"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "262202000",
      "display" : "Therapeutic"
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "182744004",
      "display" : "Extracorporeal circulation procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "233573008",
      "display" : "Extracorporeal membrane oxygenation (procedure)"
    },
    {
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "R",
          "display" : "rechts"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "8-852.05",
      "display" : "Dauer der Behandlung 192 bis unter 240 Stunden"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "performedPeriod" : {
    "start" : "2024-05-03T02:00:00+02:00",
    "end" : "2024-05-11T14:00:00+02:00"
  },
  "recorder" : {
    "reference" : "Practitioner/mii-exa-test-data-icu-practitioner-1"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "83419000",
      "display" : "Femoral vein structure (body structure)"
    }]
  }],
  "note" : [{
    "text" : "VV-ECMO ueber femoro-jugulaere Kanuelierung bei schwerem COVID-ARDS, komplikationsloser Lauf ueber 8 Tage."
  }]
}

```
