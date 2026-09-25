# mii-exa-test-data-onko-strahlentherapie-bestrahlung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-strahlentherapie-bestrahlung-1**

## Example Procedure: mii-exa-test-data-onko-strahlentherapie-bestrahlung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Strahlentherapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Procedure Method**: perkutan mit Chemotherapie/Sensitizer

**MII EX Onko Strahlentherapie Bestrahlung Gesamtdosis**: 50 Gy (Details: UCUM codeGy = 'Gy')

**MII EX Onko Strahlentherapie Bestrahlung Einzeldosis**: 2 Gy (Details: UCUM codeGy = 'Gy')

**MII EX Onko Strahlentherapie Bestrahlung Boost**: simultan integrierter Boost

**ExtensionProzedurDokumentationsdatum**: 2022-03-16

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**basedOn**: [CarePlan: identifier = TK-2021-002; status = completed; intent = plan; category = postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie); created = 2021-10-15](CarePlan-mii-exa-test-data-onko-tumorkonferenz-2.md)

**partOf**: [Procedure Hochvoltstrahlentherapie](Procedure-mii-exa-test-data-onko-strahlentherapie-1.md)

**status**: Completed

**category**: Radiotherapy (procedure)

**code**: Hochvoltstrahlentherapie: Linearbeschleuniger mehr als 6 MeV Photonen oder schnelle Elektronen, bis zu 2 Bestrahlungsfelder

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**performed**: 2022-02-01 --> 2022-03-15

**reasonReference**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**bodySite**: Becken sonstige

**note**: 

> 

Perkutane Bestrahlung des Beckens, 25 Fraktionen à 2 Gy.


**usedCode**: Photonen (ultraharte Röntgenstrahlen, inklusive Gamma-Strahler)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-onko-strahlentherapie-bestrahlung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/procedure-method",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart",
        "code" : "PRCJ",
        "display" : "perkutan mit Chemotherapie/Sensitizer"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis",
    "valueQuantity" : {
      "value" : 50,
      "unit" : "Gy",
      "system" : "http://unitsofmeasure.org",
      "code" : "Gy"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis",
    "valueQuantity" : {
      "value" : 2,
      "unit" : "Gy",
      "system" : "http://unitsofmeasure.org",
      "code" : "Gy"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-boost",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost",
        "code" : "SIB",
        "display" : "simultan integrierter Boost"
      }]
    }
  },
  {
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2022-03-16"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "262202000",
      "display" : "Therapeutic"
    }
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-test-data-onko-tumorkonferenz-2"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-onko-strahlentherapie-1"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1287742003",
      "display" : "Radiotherapy (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "T",
          "display" : "trifft nicht zu"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2021",
      "code" : "8-522.6",
      "display" : "Hochvoltstrahlentherapie: Linearbeschleuniger mehr als 6 MeV Photonen oder schnelle Elektronen, bis zu 2 Bestrahlungsfelder"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "performedPeriod" : {
    "start" : "2022-02-01",
    "end" : "2022-03-15"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "bodySite" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation",
          "code" : "L",
          "display" : "links"
        }]
      }
    }],
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet",
      "code" : "5.12",
      "display" : "Becken sonstige"
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20240201",
      "code" : "12921003",
      "display" : "Pelvic structure (body structure)"
    }]
  }],
  "note" : [{
    "text" : "Perkutane Bestrahlung des Beckens, 25 Fraktionen à 2 Gy."
  }],
  "usedCode" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart",
      "code" : "UH",
      "display" : "Photonen (ultraharte Röntgenstrahlen, inklusive Gamma-Strahler)"
    }]
  }]
}

```
