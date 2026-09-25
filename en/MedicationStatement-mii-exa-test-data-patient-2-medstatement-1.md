# mii-exa-test-data-patient-2-medstatement-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-2-medstatement-1**

## Example MedicationStatement: mii-exa-test-data-patient-2-medstatement-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000007

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000006; status = active; intent = order; medication[x] = ; authoredOn = 2024-03-06 08:00:00+0100](MedicationRequest-mii-exa-test-data-patient-2-medrequest-1.md)

**status**: Active

**category**: stationärer Aufenthalt

**medication**: Morphin 10 mg Tabletten

**subject**: [Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)](Patient-mii-exa-test-data-patient-2.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --> 2024-03-13](Encounter-mii-exa-test-data-patient-2-encounter-1.md)

**effective**: 2024-03-06 08:00:00+0100 --> 2024-03-13 10:00:00+0100

**dateAsserted**: 2024-03-06

### Dosages

| | |
| :--- | :--- |
| - | **Text** |
| * | Morphin 10 mg oral, alle 6 Stunden bei Bedarf |



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-2-medstatement-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
    "value" : "MS_0000007"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-2-medrequest-1"
  }],
  "status" : "active",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
      "code" : "inpatient"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E200",
      "display" : "stationärer Aufenthalt"
    }]
  },
  "medicationCodeableConcept" : {
    "text" : "Morphin 10 mg Tabletten"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-2"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2024-03-06T08:00:00+01:00",
    "end" : "2024-03-13T10:00:00+01:00"
  },
  "dateAsserted" : "2024-03-06",
  "dosage" : [{
    "text" : "Morphin 10 mg oral, alle 6 Stunden bei Bedarf"
  }]
}

```
