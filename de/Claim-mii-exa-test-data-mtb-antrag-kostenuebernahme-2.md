# MTB Antrag Kostenuebernahme (Erstantrag) - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MTB Antrag Kostenuebernahme (Erstantrag)**

## Beispiel Claim: MTB Antrag Kostenuebernahme (Erstantrag)

-------

**German**

-------

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Antrag Kostenuebernahme](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**type**: Institutional

**use**: Claim

**patient**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**created**: 2024-03-20

**provider**: [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)

**priority**: Normal

**prescription**: [MedicationRequest: extension = 1,m1A,http://www.ncbi.nlm.nih.gov/pubmed#29151359; identifier = https://www.charite.de/fhir/sid/mtb-beschluss#TE-2024-001; status = draft; intent = proposal; medication[x] = Osimertinib; authoredOn = 2024-03-28; reasonCode = Bösartige Neubildung: Oberlappen (-Bronchus); note = Empfehlung mit Evidenzgrad m1A auf Basis der EGFR-L858R-Variante.](MedicationRequest-mii-exa-test-data-mtb-therapieempfehlung-1.md)

### CareTeams

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Provider** | **Responsible** |
| * | 1 | [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md) | true |

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | GKV-Versicherung |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "mii-exa-test-data-mtb-antrag-kostenuebernahme-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "code" : "institutional",
      "display" : "Institutional"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "created" : "2024-03-20",
  "provider" : {
    "reference" : "Organization/mii-exa-test-data-organization-charite"
  },
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
      "code" : "normal"
    }]
  },
  "prescription" : {
    "reference" : "MedicationRequest/mii-exa-test-data-mtb-therapieempfehlung-1"
  },
  "careTeam" : [{
    "sequence" : 1,
    "provider" : {
      "reference" : "Organization/mii-exa-test-data-organization-charite"
    },
    "responsible" : true
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "display" : "GKV-Versicherung"
    }
  }]
}

```
