# mii-exa-test-data-bundle-pat-11 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-bundle-pat-11**

## Example Bundle: mii-exa-test-data-bundle-pat-11



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-test-data-bundle-pat-11",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "type" : "transaction",
  "timestamp" : "2025-10-31T14:17:00+01:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/Patient/mii-exa-test-data-patient-11",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-test-data-patient-11",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient",
        "http://fhir.de/ConsentManagement/StructureDefinition/Patient"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_mii-exa-test-data-patient-11\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-test-data-patient-11</b></p><a name=\"mii-exa-test-data-patient-11\"> </a><a name=\"hcmii-exa-test-data-patient-11\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient\">MII PR Person Patient</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.consent@2027.0.0-ballot&amp;canonical=http://fhir.de/ConsentManagement/StructureDefinition/Patient\">Consent Management: Patient</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Other Id (see the one above)\">Other Id:</td><td colspan=\"3\">Krankenversichertennummer/K234567890 (use: official, )</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\">Schönhauser Allee 142 Berlin 10437 DE </td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "usual",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MR"
          }]
        },
        "system" : "https://www.medizininformatik-initiative.de/fhir/sid/patienten",
        "value" : "689923402",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          },
          "display" : "Charité - Universitätsmedizin Berlin"
        }
      },
      {
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
            "code" : "KVZ10"
          }]
        },
        "system" : "http://fhir.de/sid/gkv/kvid-10",
        "value" : "K234567890",
        "assigner" : {
          "identifier" : {
            "use" : "official",
            "system" : "http://fhir.de/sid/arge-ik/iknr",
            "value" : "109519005"
          }
        }
      }],
      "name" : [{
        "use" : "official",
        "family" : "Hallermann",
        "given" : ["Ingrid", "Margarete"]
      }],
      "gender" : "female",
      "birthDate" : "1959-11-08",
      "address" : [{
        "type" : "both",
        "line" : ["Schönhauser Allee 142"],
        "_line" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
            "valueString" : "Schönhauser Allee"
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
            "valueString" : "142"
          }]
        }],
        "city" : "Berlin",
        "_city" : {
          "extension" : [{
            "url" : "http://fhir.de/StructureDefinition/destatis/ags",
            "valueCoding" : {
              "system" : "http://fhir.de/sid/destatis/ags",
              "code" : "11000000"
            }
          }]
        },
        "postalCode" : "10437",
        "country" : "DE"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Patient/mii-exa-test-data-patient-11"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Encounter/mii-exa-test-data-patient-11-encounter-1",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-test-data-patient-11-encounter-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_mii-exa-test-data-patient-11-encounter-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-test-data-patient-11-encounter-1</b></p><a name=\"mii-exa-test-data-patient-11-encounter-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-encounter-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung\">MII PR Fall Kontakt mit einer Gesundheitseinrichtung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Visit number/MII_0000012</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>type</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/Kontaktebene einrichtungskontakt}\">Einrichtungskontakt</span>, <span title=\"Codes:{http://fhir.de/CodeSystem/kontaktart-de normalstationaer}\">Normalstationär</span></p><p><b>serviceType</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel 0300}\">Kardiologie</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>period</b>: 2025-01-20 --&gt; 2025-01-28</p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td><td><b>Use</b></td><td><b>Rank</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></td><td><span title=\"Codes:{http://fhir.de/CodeSystem/KontaktDiagnoseProzedur treatment-diagnosis}, {http://terminology.hl7.org/CodeSystem/diagnosis-role DD}\">Behandlungsrelevante Diagnosen</span></td><td>1</td></tr></table><h3>Hospitalizations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>AdmitSource</b></td><td><b>DischargeDisposition</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/dgkev/Aufnahmeanlass N}\">Notfall</span></td><td><span title=\"Codes:\"></span></td></tr></table><p><b>serviceProvider</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Charité - Universitätsmedizin Berlin</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "VN"
          }]
        },
        "system" : "https://www.charite.de/fhir/NamingSystem/Aufnahmenummern",
        "value" : "MII_0000012"
      }],
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "IMP"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/Kontaktebene",
          "code" : "einrichtungskontakt"
        }]
      },
      {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/kontaktart-de",
          "code" : "normalstationaer"
        }]
      }],
      "serviceType" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel",
          "code" : "0300"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "period" : {
        "start" : "2025-01-20",
        "end" : "2025-01-28"
      },
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
        },
        "use" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/KontaktDiagnoseProzedur",
            "code" : "treatment-diagnosis",
            "display" : "Behandlungsrelevante Diagnosen"
          },
          {
            "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
            "code" : "DD",
            "display" : "Discharge diagnosis"
          }]
        },
        "rank" : 1
      }],
      "hospitalization" : {
        "admitSource" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/dgkev/Aufnahmeanlass",
            "code" : "N",
            "display" : "Notfall"
          }]
        },
        "dischargeDisposition" : {
          "extension" : [{
            "extension" : [{
              "url" : "ErsteUndZweiteStelle",
              "valueCoding" : {
                "system" : "http://fhir.de/CodeSystem/dkgev/EntlassungsgrundErsteUndZweiteStelle",
                "code" : "01",
                "display" : "Behandlung regulär beendet"
              }
            },
            {
              "url" : "DritteStelle",
              "valueCoding" : {
                "system" : "http://fhir.de/CodeSystem/dkgev/EntlassungsgrundDritteStelle",
                "code" : "2",
                "display" : "arbeitsunfähig entlassen"
              }
            }],
            "url" : "http://fhir.de/StructureDefinition/Entlassungsgrund"
          }]
        }
      },
      "serviceProvider" : {
        "reference" : "Organization/mii-exa-test-data-organization-charite",
        "identifier" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
          "value" : "Charité"
        },
        "display" : "Charité - Universitätsmedizin Berlin"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Encounter/mii-exa-test-data-patient-11-encounter-2",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-test-data-patient-11-encounter-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_mii-exa-test-data-patient-11-encounter-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-test-data-patient-11-encounter-2</b></p><a name=\"mii-exa-test-data-patient-11-encounter-2\"> </a><a name=\"hcmii-exa-test-data-patient-11-encounter-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung\">MII PR Fall Kontakt mit einer Gesundheitseinrichtung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Visit number/MII_0000013</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB\">ActCode: AMB</a> (ambulatory)</p><p><b>type</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/Kontaktebene einrichtungskontakt}\">Einrichtungskontakt</span>, <span title=\"Codes:{http://fhir.de/CodeSystem/kontaktart-de ub}\">Untersuchung und Behandlung</span></p><p><b>serviceType</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel 0300}\">Kardiologie</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>period</b>: 2025-02-10 09:00:00+0100 --&gt; 2025-02-10 11:30:00+0100</p><p><b>serviceProvider</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Charité - Universitätsmedizin Berlin</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "VN"
          }]
        },
        "system" : "https://www.charite.de/fhir/NamingSystem/Aufnahmenummern",
        "value" : "MII_0000013"
      }],
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "AMB"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/Kontaktebene",
          "code" : "einrichtungskontakt"
        }]
      },
      {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/kontaktart-de",
          "code" : "ub"
        }]
      }],
      "serviceType" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel",
          "code" : "0300"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "period" : {
        "start" : "2025-02-10T09:00:00+01:00",
        "end" : "2025-02-10T11:30:00+01:00"
      },
      "serviceProvider" : {
        "reference" : "Organization/mii-exa-test-data-organization-charite",
        "display" : "Charité - Universitätsmedizin Berlin"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Encounter/mii-exa-test-data-patient-11-encounter-3",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-test-data-patient-11-encounter-3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_mii-exa-test-data-patient-11-encounter-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-test-data-patient-11-encounter-3</b></p><a name=\"mii-exa-test-data-patient-11-encounter-3\"> </a><a name=\"hcmii-exa-test-data-patient-11-encounter-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung\">MII PR Fall Kontakt mit einer Gesundheitseinrichtung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Visit number/MII_0000014</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB\">ActCode: AMB</a> (ambulatory)</p><p><b>type</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/Kontaktebene einrichtungskontakt}\">Einrichtungskontakt</span>, <span title=\"Codes:{http://fhir.de/CodeSystem/kontaktart-de ub}\">Untersuchung und Behandlung</span></p><p><b>serviceType</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel 0300}\">Kardiologie</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>period</b>: 2025-05-12 09:15:00+0200 --&gt; 2025-05-12 10:30:00+0200</p><p><b>serviceProvider</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Charité - Universitätsmedizin Berlin</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "VN"
          }]
        },
        "system" : "https://www.charite.de/fhir/NamingSystem/Aufnahmenummern",
        "value" : "MII_0000014"
      }],
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "AMB"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/Kontaktebene",
          "code" : "einrichtungskontakt"
        }]
      },
      {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/kontaktart-de",
          "code" : "ub"
        }]
      }],
      "serviceType" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel",
          "code" : "0300"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "period" : {
        "start" : "2025-05-12T09:15:00+02:00",
        "end" : "2025-05-12T10:30:00+02:00"
      },
      "serviceProvider" : {
        "reference" : "Organization/mii-exa-test-data-organization-charite",
        "display" : "Charité - Universitätsmedizin Berlin"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Encounter/mii-exa-test-data-patient-11-encounter-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Encounter/mii-exa-test-data-patient-11-encounter-4",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-test-data-patient-11-encounter-4",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_mii-exa-test-data-patient-11-encounter-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-test-data-patient-11-encounter-4</b></p><a name=\"mii-exa-test-data-patient-11-encounter-4\"> </a><a name=\"hcmii-exa-test-data-patient-11-encounter-4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung\">MII PR Fall Kontakt mit einer Gesundheitseinrichtung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Visit number/MII_0000015</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB\">ActCode: AMB</a> (ambulatory)</p><p><b>type</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/Kontaktebene einrichtungskontakt}\">Einrichtungskontakt</span>, <span title=\"Codes:{http://fhir.de/CodeSystem/kontaktart-de ub}\">Untersuchung und Behandlung</span></p><p><b>serviceType</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel 0300}\">Kardiologie</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>period</b>: 2025-08-11 09:00:00+0200 --&gt; 2025-08-11 10:15:00+0200</p><p><b>serviceProvider</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Charité - Universitätsmedizin Berlin</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "VN"
          }]
        },
        "system" : "https://www.charite.de/fhir/NamingSystem/Aufnahmenummern",
        "value" : "MII_0000015"
      }],
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "AMB"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/Kontaktebene",
          "code" : "einrichtungskontakt"
        }]
      },
      {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/kontaktart-de",
          "code" : "ub"
        }]
      }],
      "serviceType" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel",
          "code" : "0300"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "period" : {
        "start" : "2025-08-11T09:00:00+02:00",
        "end" : "2025-08-11T10:15:00+02:00"
      },
      "serviceProvider" : {
        "reference" : "Organization/mii-exa-test-data-organization-charite",
        "display" : "Charité - Universitätsmedizin Berlin"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Encounter/mii-exa-test-data-patient-11-encounter-4"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-patient-11-diagnose-1",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-patient-11-diagnose-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-patient-11-diagnose-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-patient-11-diagnose-1</b></p><a name=\"mii-exa-test-data-patient-11-diagnose-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-diagnose-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose\">MII PR Diagnose Condition</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm I50.13}, {http://snomed.info/sct 84114007}\">Herzinsuffizienz NYHA III</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --&gt; 2025-01-28</a></p><p><b>onset</b>: 2023-09-14</p><p><b>recordedDate</b>: 2025-01-20</p><p><b>note</b>: </p><blockquote><div><p>Linksherzinsuffizienz NYHA III mit Beschwerden bei leichterer Belastung</p>\n</div></blockquote></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2024",
          "code" : "I50.13"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "84114007",
          "display" : "Heart failure"
        }],
        "text" : "Herzinsuffizienz NYHA III"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "onsetDateTime" : "2023-09-14",
      "recordedDate" : "2025-01-20",
      "note" : [{
        "text" : "Linksherzinsuffizienz NYHA III mit Beschwerden bei leichterer Belastung"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-patient-11-diagnose-2",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-patient-11-diagnose-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-patient-11-diagnose-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-patient-11-diagnose-2</b></p><a name=\"mii-exa-test-data-patient-11-diagnose-2\"> </a><a name=\"hcmii-exa-test-data-patient-11-diagnose-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose\">MII PR Diagnose Condition</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm E11.90}\">Diabetes mellitus, Typ 2: Ohne Komplikationen: Nicht als entgleist bezeichnet</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --&gt; 2025-01-28</a></p><p><b>recordedDate</b>: 2025-01-20</p><p><b>note</b>: </p><blockquote><div><p>Diabetes mellitus Typ 2 ohne Komplikationen - Komorbiditaet</p>\n</div></blockquote></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2024",
          "code" : "E11.90"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "recordedDate" : "2025-01-20",
      "note" : [{
        "text" : "Diabetes mellitus Typ 2 ohne Komplikationen - Komorbiditaet"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/mii-exa-test-data-patient-11-diagnose-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Procedure/mii-exa-test-data-patient-11-prozedur-1",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-test-data-patient-11-prozedur-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-test-data-patient-11-prozedur-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-test-data-patient-11-prozedur-1</b></p><a name=\"mii-exa-test-data-patient-11-prozedur-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-prozedur-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>ExtensionProzedurDokumentationsdatum</b>: 2025-01-21 13:00:00+0100</p><p><b>MII EX Prozedur Durchführungsabsicht</b>: <a href=\"http://snomed.info/id/261004008\">SNOMED CT: 261004008</a> (Diagnostic intent)</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 363679005}\">Imaging</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 105376000}, {http://fhir.de/CodeSystem/bfarm/ops 3-052}\">Transesophageal echocardiography</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --&gt; 2025-01-28</a></p><p><b>performed</b>: 2025-01-21 11:20:00+0100</p><p><b>recorder</b>: <a href=\"PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.html\">PractitionerRole Physician (occupation)</a></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 80891009}\">Heart structure</span></p><p><b>note</b>: </p><blockquote><div><p>Transoesophageale Echokardiographie - EF 32 Prozent</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
        "valueDateTime" : "2025-01-21T13:00:00+01:00"
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "261004008",
          "display" : "Diagnostic intent"
        }
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363679005"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "105376000"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2024",
          "code" : "3-052"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "performedDateTime" : "2025-01-21T11:20:00+01:00",
      "recorder" : {
        "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "80891009"
        }]
      }],
      "note" : [{
        "text" : "Transoesophageale Echokardiographie - EF 32 Prozent"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-test-data-patient-11-prozedur-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Consent/mii-exa-test-data-patient-11-consent-1",
    "resource" : {
      "resourceType" : "Consent",
      "id" : "mii-exa-test-data-patient-11-consent-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Consent_mii-exa-test-data-patient-11-consent-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Consent mii-exa-test-data-patient-11-consent-1</b></p><a name=\"mii-exa-test-data-patient-11-consent-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-consent-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung\">Profile - MI-I - Consent - Einwilligung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2>Participants</h2><table class=\"grid\"><tr><td><b>Role</b></td><td><b>Details</b></td></tr><tr><td title=\"Who the consent applies to\">Patient</td><td><a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></td></tr><tr><td title=\"Who manages the consent through its lifecycle.\">Manager</td><td><a href=\"Organization-mii-exa-test-data-organization-charite.html\">Organization Charité – Universitätsmedizin Berlin</a></td></tr></table><p>This consent is made under the regulation <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ActCode OPTIN}\">MII Broad Consent Opt-in</span> and the policy <code>urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791</code> .</p><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Rule\">Rule</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Period\">Time Period</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Data\">What</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Other Applicable Rules\">Rules</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck01.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-qi-hidden.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> deny</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2025-01-22 --&gt; 2055-01-21</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2025-01-22 --&gt; 2055-01-21</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.6}\">MDAT erheben</span></li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2025-01-22 --&gt; 2055-01-21</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.7}\">MDAT speichern, verarbeiten</span></li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck000.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2025-01-22 --&gt; 2055-01-21</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.8}\">MDAT wissenschaftlich nutzen</span></li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr><td colspan=\"4\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "domain",
          "valueReference" : {
            "reference" : "Organization/mii-exa-test-data-organization-charite",
            "display" : "MII Broad Consent Domäne Charité"
          }
        }],
        "url" : "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
      }],
      "status" : "active",
      "scope" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
          "code" : "research"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57016-8"
        }]
      },
      {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/CodeSystem/mii-cs-consent-version-modules",
          "code" : "2.16.840.1.113883.3.1937.777.24.2.184"
        }]
      }],
      "patient" : {
        "reference" : "Patient/mii-exa-test-data-patient-11",
        "identifier" : {
          "system" : "http://fhir.de/sid/gkv/kvid-10",
          "value" : "K234567890"
        }
      },
      "dateTime" : "2025-01-22T10:30:00+01:00",
      "organization" : [{
        "reference" : "Organization/mii-exa-test-data-organization-charite"
      }],
      "policy" : [{
        "uri" : "urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791"
      }],
      "policyRule" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "OPTIN",
          "display" : "opt-in"
        }],
        "text" : "MII Broad Consent Opt-in"
      },
      "provision" : {
        "type" : "deny",
        "period" : {
          "start" : "2025-01-22",
          "end" : "2055-01-21"
        },
        "provision" : [{
          "type" : "permit",
          "period" : {
            "start" : "2025-01-22",
            "end" : "2055-01-21"
          },
          "code" : [{
            "coding" : [{
              "system" : "urn:oid:2.16.840.1.113883.3.1937.777.24.5.3",
              "code" : "2.16.840.1.113883.3.1937.777.24.5.3.6",
              "display" : "MDAT erheben"
            }]
          }]
        },
        {
          "type" : "permit",
          "period" : {
            "start" : "2025-01-22",
            "end" : "2055-01-21"
          },
          "code" : [{
            "coding" : [{
              "system" : "urn:oid:2.16.840.1.113883.3.1937.777.24.5.3",
              "code" : "2.16.840.1.113883.3.1937.777.24.5.3.7",
              "display" : "MDAT speichern, verarbeiten"
            }]
          }]
        },
        {
          "type" : "permit",
          "period" : {
            "start" : "2025-01-22",
            "end" : "2055-01-21"
          },
          "code" : [{
            "coding" : [{
              "system" : "urn:oid:2.16.840.1.113883.3.1937.777.24.5.3",
              "code" : "2.16.840.1.113883.3.1937.777.24.5.3.8",
              "display" : "MDAT wissenschaftlich nutzen"
            }]
          }]
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Consent/mii-exa-test-data-patient-11-consent-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/ServiceRequest/mii-exa-test-data-patient-11-labrequest-1",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-test-data-patient-11-labrequest-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-test-data-patient-11-labrequest-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-test-data-patient-11-labrequest-1</b></p><a name=\"mii-exa-test-data-patient-11-labrequest-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-labrequest-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab\">MII PR Labor Laboranforderung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Placer Identifier/LA_000011</p><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 33762-6}\">NT-proBNP, Kreatinin, Kalium (Herzinsuffizienz-Basislabor)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --&gt; 2025-01-28</a></p><p><b>authoredOn</b>: 2025-01-21 07:10:00+0100</p><p><b>requester</b>: <a href=\"Practitioner-mii-exa-test-data-practitioner-physician-1.html\">Practitioner Rahel Hirsch </a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/Laboranforderungen",
        "value" : "LA_000011",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "status" : "completed",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "33762-6",
          "display" : "Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma"
        }],
        "text" : "NT-proBNP, Kreatinin, Kalium (Herzinsuffizienz-Basislabor)"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "authoredOn" : "2025-01-21T07:10:00+01:00",
      "requester" : {
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest/mii-exa-test-data-patient-11-labrequest-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/DiagnosticReport/mii-exa-test-data-patient-11-labreport-1",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "mii-exa-test-data-patient-11-labreport-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_mii-exa-test-data-patient-11-labreport-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport mii-exa-test-data-patient-11-labreport-1</b></p><a name=\"mii-exa-test-data-patient-11-labreport-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-labreport-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab\">MII PR Labor Laborbefund</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2><span title=\"Codes:{http://loinc.org 11502-2}\">Laboratory report</span> (<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 LAB}, {http://loinc.org 26436-6}\">Laboratory studies (set)</span>) </h2><table class=\"grid\"><tr><td>Subject</td><td>Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</td></tr><tr><td>Relevant Time</td><td>2025-01-21 07:35:00+0100</td></tr><tr><td>Reported</td><td>2025-01-21 09:02:00+0100</td></tr><tr><td>Performer</td><td> <a href=\"Organization-mii-exa-test-data-organization-labor-berlin.html\">Organization Labor Berlin – Charité Vivantes GmbH</a></td></tr><tr><td>Identifier</td><td> Filler Identifier/LDR_000011</td></tr></table><p><b>Report Details</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Value</b></td><td><b>Reference Range</b></td><td><b>Flags</b></td><td><b>Note</b></td></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-11-labobs-1.html\"><span title=\"Codes:{http://loinc.org 33762-6}\">Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma</span></a></td><td>3840 picogram per milliliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codepg/mL = 'pg/mL')</span></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/referencerange-meaning normal}\">Normal Range</span>: &lt;125 picogram per milliliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codepg/mL = 'pg/mL')</span></td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></td><td><blockquote><div><p>Ausschlussgrenze chronische Herzinsuffizienz: &lt; 125 pg/mL</p>\n</div></blockquote></td></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-11-labobs-2.html\"><span title=\"Codes:{http://loinc.org 2160-0}\">Creatinine [Mass/volume] in Serum or Plasma</span></a></td><td>1.42 milligram per deciliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/referencerange-meaning normal}\">Normal Range</span>: 0.51 milligram per deciliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span> - 0.95 milligram per deciliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span> for <span title=\"Codes:{http://snomed.info/sct 248152002}\">Female (finding)</span></td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></td><td/></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-11-labobs-3.html\"><span title=\"Codes:{http://loinc.org 2823-3}\">Potassium [Moles/volume] in Serum or Plasma</span></a></td><td>4.8 millimole per liter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemmol/L = 'mmol/L')</span></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/referencerange-meaning normal}\">Normal Range</span>: 3.5 millimole per liter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemmol/L = 'mmol/L')</span> - 5.1 millimole per liter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemmol/L = 'mmol/L')</span></td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation N}\">Normal</span></td><td/></tr></table><p>NT-proBNP massiv erhöht, vereinbar mit kardialer Dekompensation. Kreatinin leicht erhöht (kardiorenales Syndrom).</p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "FILL"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LDR_000011",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-11-labrequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB"
        },
        {
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11502-2",
          "display" : "Laboratory report"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "effectiveDateTime" : "2025-01-21T07:35:00+01:00",
      "issued" : "2025-01-21T09:02:00+01:00",
      "performer" : [{
        "reference" : "Organization/mii-exa-test-data-organization-labor-berlin"
      }],
      "result" : [{
        "reference" : "Observation/mii-exa-test-data-patient-11-labobs-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-11-labobs-2"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-11-labobs-3"
      }],
      "conclusion" : "NT-proBNP massiv erhöht, vereinbar mit kardialer Dekompensation. Kreatinin leicht erhöht (kardiorenales Syndrom)."
    },
    "request" : {
      "method" : "PUT",
      "url" : "DiagnosticReport/mii-exa-test-data-patient-11-labreport-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-labobs-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-labobs-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-labobs-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-labobs-1</b></p><a name=\"mii-exa-test-data-patient-11-labobs-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-labobs-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000031</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-11-labrequest-1.html\">ServiceRequest Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 33762-6}\">Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --&gt; 2025-01-28</a></p><p><b>effective</b>: 2025-01-21 07:35:00+0100</p><p><b>issued</b>: 2025-01-21 09:02:00+0100</p><p><b>value</b>: 3840 picogram per milliliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codepg/mL = 'pg/mL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>note</b>: </p><blockquote><div><p>Ausschlussgrenze chronische Herzinsuffizienz: &lt; 125 pg/mL</p>\n</div></blockquote><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>High</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>125 picogram per milliliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codepg/mL = 'pg/mL')</span></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/referencerange-meaning normal}\">Normal Range</span></td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000031",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-11-labrequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        },
        {
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.78",
          "code" : "33762-6",
          "display" : "Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "effectiveDateTime" : "2025-01-21T07:35:00+01:00",
      "issued" : "2025-01-21T09:02:00+01:00",
      "valueQuantity" : {
        "value" : 3840,
        "unit" : "picogram per milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "pg/mL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "note" : [{
        "text" : "Ausschlussgrenze chronische Herzinsuffizienz: < 125 pg/mL"
      }],
      "referenceRange" : [{
        "high" : {
          "value" : 125,
          "unit" : "picogram per milliliter",
          "system" : "http://unitsofmeasure.org",
          "code" : "pg/mL"
        },
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
            "code" : "normal",
            "display" : "Normal Range"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-labobs-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-labobs-2",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-labobs-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-labobs-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-labobs-2</b></p><a name=\"mii-exa-test-data-patient-11-labobs-2\"> </a><a name=\"hcmii-exa-test-data-patient-11-labobs-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000032</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-11-labrequest-1.html\">ServiceRequest Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2160-0}\">Creatinine [Mass/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --&gt; 2025-01-28</a></p><p><b>effective</b>: 2025-01-21 07:35:00+0100</p><p><b>issued</b>: 2025-01-21 09:02:00+0100</p><p><b>value</b>: 1.42 milligram per deciliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td><td><b>Type</b></td><td><b>AppliesTo</b></td></tr><tr><td style=\"display: none\">*</td><td>0.51 milligram per deciliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></td><td>0.95 milligram per deciliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/referencerange-meaning normal}\">Normal Range</span></td><td><span title=\"Codes:{http://snomed.info/sct 248152002}\">Female (finding)</span></td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000032",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-11-labrequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        },
        {
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.78",
          "code" : "2160-0",
          "display" : "Creatinine [Mass/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "effectiveDateTime" : "2025-01-21T07:35:00+01:00",
      "issued" : "2025-01-21T09:02:00+01:00",
      "valueQuantity" : {
        "value" : 1.42,
        "unit" : "milligram per deciliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "referenceRange" : [{
        "low" : {
          "value" : 0.51,
          "unit" : "milligram per deciliter",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        },
        "high" : {
          "value" : 0.95,
          "unit" : "milligram per deciliter",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        },
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
            "code" : "normal",
            "display" : "Normal Range"
          }]
        },
        "appliesTo" : [{
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "248152002",
            "display" : "Female (finding)"
          }]
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-labobs-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-labobs-3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-labobs-3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-labobs-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-labobs-3</b></p><a name=\"mii-exa-test-data-patient-11-labobs-3\"> </a><a name=\"hcmii-exa-test-data-patient-11-labobs-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000033</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-11-labrequest-1.html\">ServiceRequest Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2823-3}\">Potassium [Moles/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --&gt; 2025-01-28</a></p><p><b>effective</b>: 2025-01-21 07:35:00+0100</p><p><b>issued</b>: 2025-01-21 09:02:00+0100</p><p><b>value</b>: 4.8 millimole per liter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemmol/L = 'mmol/L')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation N}\">Normal</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>3.5 millimole per liter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemmol/L = 'mmol/L')</span></td><td>5.1 millimole per liter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemmol/L = 'mmol/L')</span></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/referencerange-meaning normal}\">Normal Range</span></td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000033",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-11-labrequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        },
        {
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.78",
          "code" : "2823-3",
          "display" : "Potassium [Moles/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "effectiveDateTime" : "2025-01-21T07:35:00+01:00",
      "issued" : "2025-01-21T09:02:00+01:00",
      "valueQuantity" : {
        "value" : 4.8,
        "unit" : "millimole per liter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mmol/L"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "N",
          "display" : "Normal"
        }]
      }],
      "referenceRange" : [{
        "low" : {
          "value" : 3.5,
          "unit" : "millimole per liter",
          "system" : "http://unitsofmeasure.org",
          "code" : "mmol/L"
        },
        "high" : {
          "value" : 5.1,
          "unit" : "millimole per liter",
          "system" : "http://unitsofmeasure.org",
          "code" : "mmol/L"
        },
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
            "code" : "normal",
            "display" : "Normal Range"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-labobs-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Medication/mii-exa-test-data-medication-sacubitril-valsartan",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "mii-exa-test-data-medication-sacubitril-valsartan",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_mii-exa-test-data-medication-sacubitril-valsartan\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Medication mii-exa-test-data-medication-sacubitril-valsartan</b></p><a name=\"mii-exa-test-data-medication-sacubitril-valsartan\"> </a><a name=\"hcmii-exa-test-data-medication-sacubitril-valsartan\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication\">MII PR Medikation Medication</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc C09DX04}\">Sacubitril/Valsartan 49 mg/51 mg</span></p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 10219000}\">Tablet</span></p><blockquote><p><b>ingredient</b></p><p><b>item</b>: <span title=\"Codes:{http://snomed.info/sct 716072000}\">Sacubitril</span></p><p><b>strength</b>: 49 milligram<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: standardterms.edqm.eu  code10219000 = 'Tablet')</span></p></blockquote><blockquote><p><b>ingredient</b></p><p><b>item</b>: <span title=\"Codes:{http://snomed.info/sct 386876001}\">Valsartan</span></p><p><b>strength</b>: 51 milligram<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: standardterms.edqm.eu  code10219000 = 'Tablet')</span></p></blockquote></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2023",
          "code" : "C09DX04",
          "display" : "Valsartan und Sacubitril"
        }],
        "text" : "Sacubitril/Valsartan 49 mg/51 mg"
      },
      "form" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "10219000",
          "display" : "Tablet"
        }]
      },
      "ingredient" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "716072000",
            "display" : "Sacubitril (substance)"
          }],
          "text" : "Sacubitril"
        },
        "strength" : {
          "numerator" : {
            "value" : 49,
            "unit" : "milligram",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "denominator" : {
            "value" : 1,
            "unit" : "Tablet",
            "system" : "http://standardterms.edqm.eu",
            "code" : "10219000"
          }
        }
      },
      {
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "386876001",
            "display" : "Valsartan (substance)"
          }],
          "text" : "Valsartan"
        },
        "strength" : {
          "numerator" : {
            "value" : 51,
            "unit" : "milligram",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "denominator" : {
            "value" : 1,
            "unit" : "Tablet",
            "system" : "http://standardterms.edqm.eu",
            "code" : "10219000"
          }
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Medication/mii-exa-test-data-medication-sacubitril-valsartan"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Medication/mii-exa-test-data-medication-empagliflozin",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "mii-exa-test-data-medication-empagliflozin",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_mii-exa-test-data-medication-empagliflozin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Medication mii-exa-test-data-medication-empagliflozin</b></p><a name=\"mii-exa-test-data-medication-empagliflozin\"> </a><a name=\"hcmii-exa-test-data-medication-empagliflozin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication\">MII PR Medikation Medication</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc A10BK03}\">Empagliflozin 10 mg</span></p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 10219000}\">Tablet</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 703894008}\">Empagliflozin</span></td><td>10 milligram<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: standardterms.edqm.eu  code10219000 = 'Tablet')</span></td></tr></table></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2023",
          "code" : "A10BK03",
          "display" : "Empagliflozin"
        }],
        "text" : "Empagliflozin 10 mg"
      },
      "form" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "10219000",
          "display" : "Tablet"
        }]
      },
      "ingredient" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "703894008",
            "display" : "Empagliflozin (substance)"
          }],
          "text" : "Empagliflozin"
        },
        "strength" : {
          "numerator" : {
            "value" : 10,
            "unit" : "milligram",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "denominator" : {
            "value" : 1,
            "unit" : "Tablet",
            "system" : "http://standardterms.edqm.eu",
            "code" : "10219000"
          }
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Medication/mii-exa-test-data-medication-empagliflozin"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationRequest/mii-exa-test-data-patient-11-medrequest-1",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-test-data-patient-11-medrequest-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-test-data-patient-11-medrequest-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-test-data-patient-11-medrequest-1</b></p><a name=\"mii-exa-test-data-patient-11-medrequest-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-medrequest-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest\">MII PR Medikation MedicationRequest</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationOrders</code>/MO_0000021</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-sacubitril-valsartan.html\">Medication Valsartan und Sacubitril</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --&gt; 2025-01-28</a></p><p><b>authoredOn</b>: 2025-01-28 09:40:00+0100</p><p><b>requester</b>: <a href=\"Practitioner-mii-exa-test-data-practitioner-physician-1.html\">Practitioner Rahel Hirsch </a></p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>note</b>: </p><blockquote><div><p>Auftitration auf 97/103 mg nach vier Wochen bei stabilem Blutdruck vorgesehen.</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: 2 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: standardterms.edqm.eu  code10219000 = 'Tablet')</span></td></tr></table></blockquote><h3>Substitutions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Allowed[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>true</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
        "value" : "MO_0000021"
      }],
      "status" : "active",
      "intent" : "order",
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-sacubitril-valsartan"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "authoredOn" : "2025-01-28T09:40:00+01:00",
      "requester" : {
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
      },
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "note" : [{
        "text" : "Auftitration auf 97/103 mg nach vier Wochen bei stabilem Blutdruck vorgesehen."
      }],
      "dosageInstruction" : [{
        "sequence" : 1,
        "timing" : {
          "repeat" : {
            "boundsPeriod" : {
              "start" : "2025-01-28"
            },
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d"
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Tablet",
            "system" : "http://standardterms.edqm.eu",
            "code" : "10219000"
          }
        }]
      }],
      "substitution" : {
        "allowedBoolean" : true
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-test-data-patient-11-medrequest-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationRequest/mii-exa-test-data-patient-11-medrequest-2",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-test-data-patient-11-medrequest-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-test-data-patient-11-medrequest-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-test-data-patient-11-medrequest-2</b></p><a name=\"mii-exa-test-data-patient-11-medrequest-2\"> </a><a name=\"hcmii-exa-test-data-patient-11-medrequest-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest\">MII PR Medikation MedicationRequest</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationOrders</code>/MO_0000022</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-empagliflozin.html\">Medication Empagliflozin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --&gt; 2025-01-28</a></p><p><b>authoredOn</b>: 2025-01-28 09:42:00+0100</p><p><b>requester</b>: <a href=\"Practitioner-mii-exa-test-data-practitioner-physician-1.html\">Practitioner Rahel Hirsch </a></p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>note</b>: </p><blockquote><div><p>Indikation sowohl Herzinsuffizienz als auch Diabetes mellitus Typ 2.</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: Morning, Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: standardterms.edqm.eu  code10219000 = 'Tablet')</span></td></tr></table></blockquote><h3>Substitutions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Allowed[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>true</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
        "value" : "MO_0000022"
      }],
      "status" : "active",
      "intent" : "order",
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-empagliflozin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "authoredOn" : "2025-01-28T09:42:00+01:00",
      "requester" : {
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
      },
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "note" : [{
        "text" : "Indikation sowohl Herzinsuffizienz als auch Diabetes mellitus Typ 2."
      }],
      "dosageInstruction" : [{
        "sequence" : 1,
        "timing" : {
          "repeat" : {
            "boundsPeriod" : {
              "start" : "2025-01-28"
            },
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["MORN"]
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Tablet",
            "system" : "http://standardterms.edqm.eu",
            "code" : "10219000"
          }
        }]
      }],
      "substitution" : {
        "allowedBoolean" : true
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-test-data-patient-11-medrequest-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-11-medstatement-1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-11-medstatement-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-11-medstatement-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-11-medstatement-1</b></p><a name=\"mii-exa-test-data-patient-11-medstatement-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-medstatement-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000021</p><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-11-medrequest-1.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000021; status = active; intent = order; medication[x] = -&gt;Medication Valsartan und Sacubitril; authoredOn = 2025-01-28 09:40:00+0100; note = Auftitration auf 97/103 mg nach vier Wochen bei stabilem Blutdruck vorgesehen.</a></p><p><b>status</b>: Active</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category outpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E100}\">ambulanter Kontakt</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-sacubitril-valsartan.html\">Medication Valsartan und Sacubitril</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-2.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-02-10 09:00:00+0100 --&gt; 2025-02-10 11:30:00+0100</a></p><p><b>effective</b>: 2025-01-28 --&gt; (ongoing)</p><p><b>dateAsserted</b>: 2025-02-10</p><p><b>informationSource</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>note</b>: </p><blockquote><div><p>Patientin berichtet regelmäßige Einnahme; keine symptomatische Hypotonie.</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: 2 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: standardterms.edqm.eu  code10219000 = 'Tablet')</span></td></tr></table></blockquote></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000021"
      }],
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-test-data-patient-11-medrequest-1"
      }],
      "status" : "active",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
          "code" : "outpatient"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E100",
          "display" : "ambulanter Kontakt"
        }]
      },
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-sacubitril-valsartan"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
      },
      "effectivePeriod" : {
        "start" : "2025-01-28"
      },
      "dateAsserted" : "2025-02-10",
      "informationSource" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "note" : [{
        "text" : "Patientin berichtet regelmäßige Einnahme; keine symptomatische Hypotonie."
      }],
      "dosage" : [{
        "sequence" : 1,
        "timing" : {
          "repeat" : {
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d"
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Tablet",
            "system" : "http://standardterms.edqm.eu",
            "code" : "10219000"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-11-medstatement-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-11-medstatement-2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-11-medstatement-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-11-medstatement-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-11-medstatement-2</b></p><a name=\"mii-exa-test-data-patient-11-medstatement-2\"> </a><a name=\"hcmii-exa-test-data-patient-11-medstatement-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000022</p><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-11-medrequest-1.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000021; status = active; intent = order; medication[x] = -&gt;Medication Valsartan und Sacubitril; authoredOn = 2025-01-28 09:40:00+0100; note = Auftitration auf 97/103 mg nach vier Wochen bei stabilem Blutdruck vorgesehen.</a></p><p><b>status</b>: Active</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category outpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E230}\">stationäre Entlassung</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-sacubitril-valsartan.html\">Medication Valsartan und Sacubitril</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --&gt; 2025-01-28</a></p><p><b>effective</b>: 2025-01-28 --&gt; (ongoing)</p><p><b>dateAsserted</b>: 2025-01-28</p><p><b>informationSource</b>: <a href=\"Practitioner-mii-exa-test-data-practitioner-physician-1.html\">Practitioner Rahel Hirsch </a></p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><blockquote><p><b>dosage</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: 2 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: standardterms.edqm.eu  code10219000 = 'Tablet')</span></td></tr></table></blockquote></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000022"
      }],
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-test-data-patient-11-medrequest-1"
      }],
      "status" : "active",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
          "code" : "outpatient"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E230",
          "display" : "stationäre Entlassung"
        }]
      },
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-sacubitril-valsartan"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2025-01-28"
      },
      "dateAsserted" : "2025-01-28",
      "informationSource" : {
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
      },
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "dosage" : [{
        "sequence" : 1,
        "timing" : {
          "repeat" : {
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d"
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Tablet",
            "system" : "http://standardterms.edqm.eu",
            "code" : "10219000"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-11-medstatement-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-11-medstatement-3",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-11-medstatement-3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-11-medstatement-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-11-medstatement-3</b></p><a name=\"mii-exa-test-data-patient-11-medstatement-3\"> </a><a name=\"hcmii-exa-test-data-patient-11-medstatement-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000023</p><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-11-medrequest-2.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000022; status = active; intent = order; medication[x] = -&gt;Medication Empagliflozin; authoredOn = 2025-01-28 09:42:00+0100; note = Indikation sowohl Herzinsuffizienz als auch Diabetes mellitus Typ 2.</a></p><p><b>status</b>: Active</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category outpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E230}\">stationäre Entlassung</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-empagliflozin.html\">Medication Empagliflozin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --&gt; 2025-01-28</a></p><p><b>effective</b>: 2025-01-28 --&gt; (ongoing)</p><p><b>dateAsserted</b>: 2025-01-28</p><p><b>informationSource</b>: <a href=\"Practitioner-mii-exa-test-data-practitioner-physician-1.html\">Practitioner Rahel Hirsch </a></p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><blockquote><p><b>dosage</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: Morning, Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: standardterms.edqm.eu  code10219000 = 'Tablet')</span></td></tr></table></blockquote></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000023"
      }],
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-test-data-patient-11-medrequest-2"
      }],
      "status" : "active",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
          "code" : "outpatient"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E230",
          "display" : "stationäre Entlassung"
        }]
      },
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-empagliflozin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2025-01-28"
      },
      "dateAsserted" : "2025-01-28",
      "informationSource" : {
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
      },
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "dosage" : [{
        "sequence" : 1,
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["MORN"]
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Tablet",
            "system" : "http://standardterms.edqm.eu",
            "code" : "10219000"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-11-medstatement-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/List/mii-exa-test-data-patient-11-list-entlassmedikation",
    "resource" : {
      "resourceType" : "List",
      "id" : "mii-exa-test-data-patient-11-list-entlassmedikation",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_mii-exa-test-data-patient-11-list-entlassmedikation\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List mii-exa-test-data-patient-11-list-entlassmedikation</b></p><a name=\"mii-exa-test-data-patient-11-list-entlassmedikation\"> </a><a name=\"hcmii-exa-test-data-patient-11-list-entlassmedikation\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste\">MII PR Medikation Medikationsliste</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2>Entlassmedikation</h2><table class=\"clstu\"><tr><td>Date: 2025-01-28 10:00:00+0100 </td><td>Mode: Snapshot List </td><td>Status: Current </td><td>Code: stationäre Entlassung </td></tr><tr><td>Subject: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a>Encounter: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --&gt; 2025-01-28</a></td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-11-medstatement-2.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000022; status = active; category = stationäre Entlassung; medication[x] = -&gt;Medication Valsartan und Sacubitril; effective[x] = 2025-01-28 --&gt; (ongoing); dateAsserted = 2025-01-28</a></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-11-medstatement-3.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000023; status = active; category = stationäre Entlassung; medication[x] = -&gt;Medication Empagliflozin; effective[x] = 2025-01-28 --&gt; (ongoing); dateAsserted = 2025-01-28</a></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Medikationslisten",
        "value" : "ML_0000021"
      }],
      "status" : "current",
      "mode" : "snapshot",
      "title" : "Entlassmedikation",
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
          "code" : "medications"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E230",
          "display" : "stationäre Entlassung"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
      },
      "date" : "2025-01-28T10:00:00+01:00",
      "entry" : [{
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-11-medstatement-2"
        }
      },
      {
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-11-medstatement-3"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "List/mii-exa-test-data-patient-11-list-entlassmedikation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Organization/mii-exa-test-data-organization-charite",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "mii-exa-test-data-organization-charite",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_mii-exa-test-data-organization-charite\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization mii-exa-test-data-organization-charite</b></p><a name=\"mii-exa-test-data-organization-charite\"> </a><a name=\"hcmii-exa-test-data-organization-charite\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span></p><p><b>name</b>: Charité – Universitätsmedizin Berlin</p></div>"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }]
      }],
      "name" : "Charité – Universitätsmedizin Berlin"
    },
    "request" : {
      "method" : "PUT",
      "url" : "Organization/mii-exa-test-data-organization-charite"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Organization/mii-exa-test-data-organization-labor-berlin",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "mii-exa-test-data-organization-labor-berlin",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_mii-exa-test-data-organization-labor-berlin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization mii-exa-test-data-organization-labor-berlin</b></p><a name=\"mii-exa-test-data-organization-labor-berlin\"> </a><a name=\"hcmii-exa-test-data-organization-labor-berlin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span></p><p><b>name</b>: Labor Berlin – Charité Vivantes GmbH</p></div>"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }]
      }],
      "name" : "Labor Berlin – Charité Vivantes GmbH"
    },
    "request" : {
      "method" : "PUT",
      "url" : "Organization/mii-exa-test-data-organization-labor-berlin"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Practitioner/mii-exa-test-data-practitioner-physician-1",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "mii-exa-test-data-practitioner-physician-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_mii-exa-test-data-practitioner-physician-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner mii-exa-test-data-practitioner-physician-1</b></p><a name=\"mii-exa-test-data-practitioner-physician-1\"> </a><a name=\"hcmii-exa-test-data-practitioner-physician-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>active</b>: true</p><p><b>name</b>: Rahel Hirsch </p></div>"
      },
      "active" : true,
      "name" : [{
        "family" : "Hirsch",
        "given" : ["Rahel"]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/PractitionerRole/mii-exa-test-data-practitioner-role-physician-1",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "mii-exa-test-data-practitioner-role-physician-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_mii-exa-test-data-practitioner-role-physician-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PractitionerRole mii-exa-test-data-practitioner-role-physician-1</b></p><a name=\"mii-exa-test-data-practitioner-role-physician-1\"> </a><a name=\"hcmii-exa-test-data-practitioner-role-physician-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person\">MII PR Studie Beteiligte Person</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>active</b>: true</p><p><b>practitioner</b>: <a href=\"Practitioner-mii-exa-test-data-practitioner-physician-1.html\">Practitioner Rahel Hirsch </a></p><p><b>organization</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Organization Charité – Universitätsmedizin Berlin</a></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 309343006}\">Physician (occupation)</span></p><p><b>telecom</b>: <a href=\"mailto:studienteam@charite.de\">studienteam@charite.de</a></p></div>"
      },
      "active" : true,
      "practitioner" : {
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
      },
      "organization" : {
        "reference" : "Organization/mii-exa-test-data-organization-charite"
      },
      "code" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "309343006",
          "display" : "Physician (occupation)"
        }]
      }],
      "telecom" : [{
        "system" : "email",
        "value" : "studienteam@charite.de",
        "use" : "work"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/ResearchStudy/mii-exa-test-data-patient-11-studie-1",
    "resource" : {
      "resourceType" : "ResearchStudy",
      "id" : "mii-exa-test-data-patient-11-studie-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ResearchStudy_mii-exa-test-data-patient-11-studie-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ResearchStudy mii-exa-test-data-patient-11-studie-1</b></p><a name=\"mii-exa-test-data-patient-11-studie-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-studie-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie\">MII PR Studie Studie</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>MII EX Studie Backport Label</b></p><ul><li>value: PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz (MII-CARE-PRO-2025)</li><li>type: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/title-type scientific}\">Scientific title</span></li></ul></blockquote><blockquote><p><b>MII EX Studie Backport AssociatedParty</b></p><ul><li>role: <span title=\"Codes:{http://hl7.org/fhir/research-study-party-role sponsor}\">sponsor</span></li><li>party: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Organization Charité – Universitätsmedizin Berlin</a></li></ul></blockquote><blockquote><p><b>MII EX Studie Ethikvotum</b></p><ul><li>status: Zustimmende Bewertung</li><li>kommission: Ethikkommission der Charité - Universitätsmedizin Berlin</li><li>ethiknummer: EA2/084/24</li></ul></blockquote><p><b>MII EX Studie Studienregister</b>: <a href=\"Library-mii-exa-test-data-studien-register-1.html\">DRKS - Deutsches Register Klinischer Studien</a></p><p><b>MII EX Studie Eligibility</b>: <a href=\"Group-mii-exa-test-data-patient-11-studien-group-1.html\">Group Patient (person)</a></p><p><b>MII EX Studie Akronym</b>: MII-CARE-PRO-2025</p><blockquote><p><b>MII EX Studie Rekrutierung</b></p><ul><li>rekrutierungsstart: 2025-01-02</li><li>rekrutierungsziel: 450</li><li>rekrutierungsstand: 38</li><li>rekrutierungsstand-genauigkeit: exakt</li><li>rekrutierungsstand-datum: 2025-02-28</li></ul></blockquote><p><b>MII EX Studie Finanzierung</b>: Öffentliche Förderinstitutionen, aus Steuermitteln getragene Institutionen (DFG, BMBF u. a.)</p><p><b>identifier</b>: <code>https://www.medizininformatik-initiative.de/fhir/sid/drks</code>/DRKS00041282</p><p><b>title</b>: PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz</p><p><b>status</b>: Active</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/research-study-phase n-a}\">N/A</span></p><p><b>focus</b>: <span title=\"Codes:{http://snomed.info/sct 84114007}\">Chronische Herzinsuffizienz</span></p><p><b>keyword</b>: <span title=\"Codes:\">Patient-Reported Outcome Measures</span></p><h3>Arms</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Description</b></td></tr><tr><td style=\"display: none\">*</td><td>Beobachtungskohorte</td><td>Strukturierte PROM-Erhebung zu Baseline, Monat 3 und Monat 6 ohne Intervention</td></tr></table></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "value",
          "valueString" : "PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz (MII-CARE-PRO-2025)"
        },
        {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/title-type",
              "code" : "scientific"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.label"
      },
      {
        "extension" : [{
          "url" : "role",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/research-study-party-role",
              "code" : "sponsor"
            }]
          }
        },
        {
          "url" : "party",
          "valueReference" : {
            "reference" : "Organization/mii-exa-test-data-organization-charite"
          }
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.associatedParty"
      },
      {
        "extension" : [{
          "url" : "status",
          "valueString" : "Zustimmende Bewertung"
        },
        {
          "url" : "kommission",
          "valueString" : "Ethikkommission der Charité - Universitätsmedizin Berlin"
        },
        {
          "url" : "ethiknummer",
          "valueString" : "EA2/084/24"
        }],
        "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-ethikvotum"
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-studienregister",
        "valueReference" : {
          "reference" : "Library/mii-exa-test-data-studien-register-1"
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-eligibility",
        "valueReference" : {
          "reference" : "Group/mii-exa-test-data-patient-11-studien-group-1"
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-akronym",
        "valueString" : "MII-CARE-PRO-2025"
      },
      {
        "extension" : [{
          "url" : "rekrutierungsstart",
          "valueDate" : "2025-01-02"
        },
        {
          "url" : "rekrutierungsziel",
          "valueInteger" : 450
        },
        {
          "url" : "rekrutierungsstand",
          "valueInteger" : 38
        },
        {
          "url" : "rekrutierungsstand-genauigkeit",
          "valueString" : "exakt"
        },
        {
          "url" : "rekrutierungsstand-datum",
          "valueDate" : "2025-02-28"
        }],
        "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung"
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-finanzierung",
        "valueString" : "Öffentliche Förderinstitutionen, aus Steuermitteln getragene Institutionen (DFG, BMBF u. a.)"
      }],
      "identifier" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/sid/drks",
        "value" : "DRKS00041282"
      }],
      "title" : "PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz",
      "status" : "active",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/research-study-phase",
          "code" : "n-a"
        }]
      }],
      "focus" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "84114007",
          "display" : "Heart failure"
        }],
        "text" : "Chronische Herzinsuffizienz"
      }],
      "keyword" : [{
        "text" : "Patient-Reported Outcome Measures"
      }],
      "arm" : [{
        "name" : "Beobachtungskohorte",
        "description" : "Strukturierte PROM-Erhebung zu Baseline, Monat 3 und Monat 6 ohne Intervention"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ResearchStudy/mii-exa-test-data-patient-11-studie-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Library/mii-exa-test-data-studien-register-1",
    "resource" : {
      "resourceType" : "Library",
      "id" : "mii-exa-test-data-studien-register-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Library_mii-exa-test-data-studien-register-1\"> </a><p><b style=\"color: maroon\">Exception parsing generated Narrative (see /tmp/liquid-1e21448e-d1df-4fba-b1e7-91c2b9acd08f.html): unexpected non-end of element null::a  at line 110 column 50</b></p></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-quell-register",
        "valueBoolean" : true
      }],
      "identifier" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/sid/drks",
        "value" : "DRKS"
      }],
      "name" : "DRKS",
      "title" : "DRKS - Deutsches Register Klinischer Studien",
      "status" : "active",
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/library-type",
          "code" : "asset-collection"
        }]
      },
      "relatedArtifact" : [{
        "type" : "documentation",
        "url" : "https://drks.de/",
        "document" : {
          "url" : "https://drks.de/"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Library/mii-exa-test-data-studien-register-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Group/mii-exa-test-data-patient-11-studien-group-1",
    "resource" : {
      "resourceType" : "Group",
      "id" : "mii-exa-test-data-patient-11-studien-group-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Group_mii-exa-test-data-patient-11-studien-group-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Group mii-exa-test-data-patient-11-studien-group-1</b></p><a name=\"mii-exa-test-data-patient-11-studien-group-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-studien-group-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>active</b>: true</p><p><b>type</b>: Person</p><p><b>actual</b>: false</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 116154003}\">Patient (person)</span></p><p><b>managingEntity</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Organization Charité – Universitätsmedizin Berlin</a></p></div>"
      },
      "active" : true,
      "type" : "person",
      "actual" : false,
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "116154003",
          "display" : "Patient (person)"
        }]
      },
      "managingEntity" : {
        "reference" : "Organization/mii-exa-test-data-organization-charite"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Group/mii-exa-test-data-patient-11-studien-group-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/EvidenceVariable/mii-exa-test-data-patient-11-studien-kriterium-1",
    "resource" : {
      "resourceType" : "EvidenceVariable",
      "id" : "mii-exa-test-data-patient-11-studien-kriterium-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"EvidenceVariable_mii-exa-test-data-patient-11-studien-kriterium-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: EvidenceVariable mii-exa-test-data-patient-11-studien-kriterium-1</b></p><a name=\"mii-exa-test-data-patient-11-studien-kriterium-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-studien-kriterium-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium\">MII PR Studie EinAuschlussKriterium</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Active</p><blockquote><p><b>characteristic</b></p><p><b>MII EX Studie Backport linkId</b>: krit-alter</p><blockquote><p><b>MII EX Studie Backport DefinitionByTypeAndValue</b></p><ul><li>type: <span title=\"Codes:{http://snomed.info/sct 424144002}\">Current chronological age</span></li><li>value: &gt;=18 year<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codea = 'a')</span></li></ul></blockquote><p><b>description</b>: Alter mindestens 18 Jahre</p><p><b>definition</b>: <span title=\"Codes:{http://snomed.info/sct 424144002}\">Mindestalter</span></p><p><b>exclude</b>: false</p></blockquote><blockquote><p><b>characteristic</b></p><p><b>MII EX Studie Backport linkId</b>: krit-hi</p><p><b>description</b>: Gesicherte chronische Herzinsuffizienz, mindestens NYHA II</p><p><b>definition</b>: <span title=\"Codes:{http://snomed.info/sct 84114007}\">Heart failure (disorder)</span></p><p><b>exclude</b>: false</p></blockquote><blockquote><p><b>characteristic</b></p><p><b>description</b>: Schwere kognitive Beeinträchtigung - selbständige Beantwortung der Fragebögen nicht möglich</p><p><b>definition</b>: <span title=\"Codes:{http://snomed.info/sct 702956004}\">Keine Selbstauskunft möglich</span></p><p><b>exclude</b>: true</p></blockquote></div>"
      },
      "status" : "active",
      "characteristic" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId",
          "valueId" : "krit-alter"
        },
        {
          "extension" : [{
            "url" : "type",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://snomed.info/sct",
                "code" : "424144002",
                "display" : "Current chronological age"
              }]
            }
          },
          {
            "url" : "value",
            "valueQuantity" : {
              "value" : 18,
              "comparator" : ">=",
              "unit" : "year",
              "system" : "http://unitsofmeasure.org",
              "code" : "a"
            }
          }],
          "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByTypeAndValue"
        }],
        "description" : "Alter mindestens 18 Jahre",
        "definitionCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "424144002",
            "display" : "Current chronological age (observable entity)"
          }],
          "text" : "Mindestalter"
        },
        "exclude" : false
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId",
          "valueId" : "krit-hi"
        }],
        "description" : "Gesicherte chronische Herzinsuffizienz, mindestens NYHA II",
        "definitionCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "84114007",
            "display" : "Heart failure (disorder)"
          }]
        },
        "exclude" : false
      },
      {
        "description" : "Schwere kognitive Beeinträchtigung - selbständige Beantwortung der Fragebögen nicht möglich",
        "definitionCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "702956004",
            "display" : "Severe cognitive impairment (finding)"
          }],
          "text" : "Keine Selbstauskunft möglich"
        },
        "exclude" : true
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "EvidenceVariable/mii-exa-test-data-patient-11-studien-kriterium-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/ServiceRequest/mii-exa-test-data-patient-11-studien-anfrage-1",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-test-data-patient-11-studien-anfrage-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-test-data-patient-11-studien-anfrage-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-test-data-patient-11-studien-anfrage-1</b></p><a name=\"mii-exa-test-data-patient-11-studien-anfrage-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-studien-anfrage-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage\">MII PR Studie Studieneinschluss Anfrage</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Completed</p><p><b>intent</b>: Proposal</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 110465008}\">Clinical trial</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 702475000}\">Referral to clinical trial</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-2.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-02-10 09:00:00+0100 --&gt; 2025-02-10 11:30:00+0100</a></p><p><b>authoredOn</b>: 2025-02-03</p><p><b>requester</b>: <a href=\"Practitioner-mii-exa-test-data-practitioner-physician-1.html\">Practitioner Rahel Hirsch </a></p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>supportingInfo</b>: </p><ul><li><a href=\"ResearchStudy-mii-exa-test-data-patient-11-studie-1.html\">ResearchStudy PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz</a></li><li><a href=\"ResearchSubject-mii-exa-test-data-patient-11-proband-1.html\">ResearchSubject: identifier = Anonymous identifier; status = on-study; period = 2025-02-10 --&gt; 2026-02-09</a></li></ul><p><b>note</b>: </p><blockquote><div><p>Einschlusskriterien nach Index-Aufenthalt erfüllt; Ansprache zur Baseline-Visite geplant.</p>\n</div></blockquote></div>"
      },
      "status" : "completed",
      "intent" : "proposal",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "110465008",
          "display" : "Clinical trial"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702475000",
          "display" : "Referral to clinical trial"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
      },
      "authoredOn" : "2025-02-03",
      "requester" : {
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
      },
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "supportingInfo" : [{
        "reference" : "ResearchStudy/mii-exa-test-data-patient-11-studie-1"
      },
      {
        "reference" : "ResearchSubject/mii-exa-test-data-patient-11-proband-1"
      }],
      "note" : [{
        "text" : "Einschlusskriterien nach Index-Aufenthalt erfüllt; Ansprache zur Baseline-Visite geplant."
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest/mii-exa-test-data-patient-11-studien-anfrage-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Consent/mii-exa-test-data-patient-11-studien-consent-1",
    "resource" : {
      "resourceType" : "Consent",
      "id" : "mii-exa-test-data-patient-11-studien-consent-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Consent_mii-exa-test-data-patient-11-studien-consent-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Consent mii-exa-test-data-patient-11-studien-consent-1</b></p><a name=\"mii-exa-test-data-patient-11-studien-consent-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-studien-consent-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2>Participants</h2><table class=\"grid\"><tr><td><b>Role</b></td><td><b>Details</b></td></tr><tr><td title=\"Who the consent applies to\">Patient</td><td><a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></td></tr></table><p>This consent is made under the regulation <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/consentpolicycodes cric}\">Common Rule Informed Consent</span> .</p><p>The subject has given their consent.</p></div>"
      },
      "status" : "active",
      "scope" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
          "code" : "research"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentcategorycodes",
          "code" : "research"
        }]
      }],
      "patient" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "dateTime" : "2025-02-10",
      "policyRule" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentpolicycodes",
          "code" : "cric"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Consent/mii-exa-test-data-patient-11-studien-consent-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/ResearchSubject/mii-exa-test-data-patient-11-proband-1",
    "resource" : {
      "resourceType" : "ResearchSubject",
      "id" : "mii-exa-test-data-patient-11-proband-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ResearchSubject_mii-exa-test-data-patient-11-proband-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ResearchSubject mii-exa-test-data-patient-11-proband-1</b></p><a name=\"mii-exa-test-data-patient-11-proband-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-proband-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband\">MII PR Studie Proband</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Anonymous identifier/CARE-PRO-0038</p><p><b>status</b>: On-study</p><p><b>period</b>: 2025-02-10 --&gt; 2026-02-09</p><p><b>study</b>: <a href=\"ResearchStudy-mii-exa-test-data-patient-11-studie-1.html\">ResearchStudy PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz</a></p><p><b>individual</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>consent</b>: <a href=\"Consent-mii-exa-test-data-patient-11-studien-consent-1.html\">mii-exa-test-data-patient-11-studien-consent-1</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "ANON"
          }]
        },
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/sid/SubjectIdentificationCode",
        "value" : "CARE-PRO-0038"
      }],
      "status" : "on-study",
      "period" : {
        "start" : "2025-02-10",
        "end" : "2026-02-09"
      },
      "study" : {
        "reference" : "ResearchStudy/mii-exa-test-data-patient-11-studie-1"
      },
      "individual" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "consent" : {
        "reference" : "Consent/mii-exa-test-data-patient-11-studien-consent-1"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "ResearchSubject/mii-exa-test-data-patient-11-proband-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/DocumentReference/mii-exa-test-data-patient-11-studien-dokument-1",
    "resource" : {
      "resourceType" : "DocumentReference",
      "id" : "mii-exa-test-data-patient-11-studien-dokument-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_mii-exa-test-data-patient-11-studien-dokument-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DocumentReference mii-exa-test-data-patient-11-studien-dokument-1</b></p><a name=\"mii-exa-test-data-patient-11-studien-dokument-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-studien-dokument-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument\">MII PR Studie Dokument</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Current</p><p><b>author</b>: <a href=\"Practitioner-mii-exa-test-data-practitioner-physician-1.html\">Practitioner Rahel Hirsch </a></p><p><b>custodian</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Organization Charité – Universitätsmedizin Berlin</a></p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Url</b></td><td><b>Size</b></td><td><b>Title</b></td></tr><tr><td style=\"display: none\">*</td><td>PDF</td><td><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/studien/mii-care-pro-2025/Studienprotokoll_v1.pdf\">https://www.charite.de/studien/mii-care-pro-2025/Studienprotokoll_v1.pdf</a></td><td>986112</td><td>Studienprotokoll MII-CARE-PRO-2025 v1.0</td></tr></table></blockquote><h3>Contexts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Related</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"ResearchStudy-mii-exa-test-data-patient-11-studie-1.html\">ResearchStudy PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz</a></td></tr></table></div>"
      },
      "status" : "current",
      "author" : [{
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
      }],
      "custodian" : {
        "reference" : "Organization/mii-exa-test-data-organization-charite"
      },
      "content" : [{
        "attachment" : {
          "contentType" : "application/pdf",
          "url" : "https://www.charite.de/studien/mii-care-pro-2025/Studienprotokoll_v1.pdf",
          "size" : 986112,
          "title" : "Studienprotokoll MII-CARE-PRO-2025 v1.0"
        }
      }],
      "context" : {
        "related" : [{
          "reference" : "ResearchStudy/mii-exa-test-data-patient-11-studie-1"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "DocumentReference/mii-exa-test-data-patient-11-studien-dokument-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-sdd-erhebung-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-sdd-erhebung-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-datenerhebung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-sdd-erhebung-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-sdd-erhebung-1</b></p><a name=\"mii-exa-test-data-patient-11-sdd-erhebung-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-sdd-erhebung-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-datenerhebung\">MII PR SDD Datenerhebung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/sdd-erhebung</code>/SDD-ERH-2025-0038</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 45970-1}, {http://snomed.info/sct 302147001}\">Soziodemographische Datenerhebung</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>effective</b>: 2025-02-10</p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-erhebungsmethode selbstauskunft}\">Selbstangabe</span></p><p><b>hasMember</b>: </p><ul><li><a href=\"Observation-mii-exa-test-data-patient-11-sdd-partnerschaft-1.html\">Observation Marital or partnership status</a></li><li><a href=\"Observation-mii-exa-test-data-patient-11-sdd-haushaltsgroesse-1.html\">Observation Household size [#]</a></li><li><a href=\"Observation-mii-exa-test-data-patient-11-sdd-schulabschluss-1.html\">Observation Details of education</a></li><li><a href=\"Observation-mii-exa-test-data-patient-11-sdd-schuljahre-1.html\">Observation Years of education [#] - Reported</a></li><li><a href=\"Observation-mii-exa-test-data-patient-11-sdd-ausbildung-1.html\">Observation Highest level of education</a></li><li><a href=\"Observation-mii-exa-test-data-patient-11-sdd-beschaeftigung-1.html\">Observation Employment status - current</a></li><li><a href=\"Observation-mii-exa-test-data-patient-11-sdd-stellung-1.html\">Observation Employment status - current</a></li><li><a href=\"Observation-mii-exa-test-data-patient-11-sdd-einkommen-1.html\">Observation Monthly household net income</a></li></ul></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/sdd-erhebung",
        "value" : "SDD-ERH-2025-0038"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "45970-1"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "302147001"
        }],
        "text" : "Soziodemographische Datenerhebung"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "effectiveDateTime" : "2025-02-10",
      "method" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-erhebungsmethode",
          "code" : "selbstauskunft",
          "display" : "Selbstangabe"
        }]
      },
      "hasMember" : [{
        "reference" : "Observation/mii-exa-test-data-patient-11-sdd-partnerschaft-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-11-sdd-haushaltsgroesse-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-11-sdd-schulabschluss-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-11-sdd-schuljahre-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-11-sdd-ausbildung-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-11-sdd-beschaeftigung-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-11-sdd-stellung-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-11-sdd-einkommen-1"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-sdd-erhebung-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-sdd-partnerschaft-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-sdd-partnerschaft-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-partnerschaft"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-sdd-partnerschaft-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-sdd-partnerschaft-1</b></p><a name=\"mii-exa-test-data-patient-11-sdd-partnerschaft-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-sdd-partnerschaft-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-partnerschaft\">MII PR SDD Partnerschaft</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 224083004}\">Aktuelle Partnerschaft</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>effective</b>: 2025-02-10</p><p><b>value</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0136 N}\">Nein, verwitwet seit 2021</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "224083004"
        }],
        "text" : "Aktuelle Partnerschaft"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "effectiveDateTime" : "2025-02-10",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0136",
          "code" : "N",
          "display" : "No"
        }],
        "text" : "Nein, verwitwet seit 2021"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-sdd-partnerschaft-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-sdd-haushaltsgroesse-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-sdd-haushaltsgroesse-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-haushaltsgroesse"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-sdd-haushaltsgroesse-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-sdd-haushaltsgroesse-1</b></p><a name=\"mii-exa-test-data-patient-11-sdd-haushaltsgroesse-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-sdd-haushaltsgroesse-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-haushaltsgroesse\">MII PR SDD Haushaltsgroesse</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 86639-2}\">Haushaltsgroesse</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>effective</b>: 2025-02-10</p><p><b>value</b>: 1 Personen<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "86639-2"
        }],
        "text" : "Haushaltsgroesse"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "effectiveDateTime" : "2025-02-10",
      "valueQuantity" : {
        "value" : 1,
        "unit" : "Personen",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-sdd-haushaltsgroesse-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-sdd-schulabschluss-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-sdd-schulabschluss-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schulabschluss"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-sdd-schulabschluss-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-sdd-schulabschluss-1</b></p><a name=\"mii-exa-test-data-patient-11-sdd-schulabschluss-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-sdd-schulabschluss-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schulabschluss\">MII PR SDD Schulabschluss</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 276031006}\">Hoechster allgemeinbildender Schulabschluss</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>effective</b>: 2025-02-10</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-schulabschluss 3}\">Hauptschulabschluss</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "276031006"
        }],
        "text" : "Hoechster allgemeinbildender Schulabschluss"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "effectiveDateTime" : "2025-02-10",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-schulabschluss",
          "code" : "3",
          "display" : "Hauptschulabschluss, Volksschulabschluss oder vergleichbarer Abschluss"
        }],
        "text" : "Hauptschulabschluss"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-sdd-schulabschluss-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-sdd-schuljahre-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-sdd-schuljahre-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schuljahre"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-sdd-schuljahre-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-sdd-schuljahre-1</b></p><a name=\"mii-exa-test-data-patient-11-sdd-schuljahre-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-sdd-schuljahre-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schuljahre\">MII PR SDD Schuljahre</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 82590-1}\">Anzahl Schuljahre</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>effective</b>: 2025-02-10</p><p><b>value</b>: 9 Jahre<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "82590-1"
        }],
        "text" : "Anzahl Schuljahre"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "effectiveDateTime" : "2025-02-10",
      "valueQuantity" : {
        "value" : 9,
        "unit" : "Jahre",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-sdd-schuljahre-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-sdd-ausbildung-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-sdd-ausbildung-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-ausbildung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-sdd-ausbildung-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-sdd-ausbildung-1</b></p><a name=\"mii-exa-test-data-patient-11-sdd-ausbildung-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-sdd-ausbildung-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-ausbildung\">MII PR SDD Ausbildung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 82589-3}\">Hoechster beruflicher Ausbildungsabschluss</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>effective</b>: 2025-02-10</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-ausbildung 3}\">Abgeschlossene Lehre als Näherin</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "82589-3"
        }],
        "text" : "Hoechster beruflicher Ausbildungsabschluss"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "effectiveDateTime" : "2025-02-10",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-ausbildung",
          "code" : "3",
          "display" : "Lehre (beruflich-betriebliche Berufsausbildung)"
        }],
        "text" : "Abgeschlossene Lehre als Näherin"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-sdd-ausbildung-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-sdd-beschaeftigung-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-sdd-beschaeftigung-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-beschaeftigungsstatus"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-sdd-beschaeftigung-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-sdd-beschaeftigung-1</b></p><a name=\"mii-exa-test-data-patient-11-sdd-beschaeftigung-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-sdd-beschaeftigung-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-beschaeftigungsstatus\">MII PR SDD Beschäftigungsstatus</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 67875-5}\">Beschaeftigungsstatus</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>effective</b>: 2025-02-10</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-beschaeftigungsstatus-lang 7}\">Altersrente seit 2023</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "67875-5"
        }],
        "text" : "Beschaeftigungsstatus"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "effectiveDateTime" : "2025-02-10",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-beschaeftigungsstatus-lang",
          "code" : "7",
          "display" : "Rentner:in, Pensionär:in"
        }],
        "text" : "Altersrente seit 2023"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-sdd-beschaeftigung-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-sdd-stellung-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-sdd-stellung-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-berufliche-stellung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-sdd-stellung-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-sdd-stellung-1</b></p><a name=\"mii-exa-test-data-patient-11-sdd-stellung-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-sdd-stellung-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-berufliche-stellung\">MII PR SDD Berufliche Stellung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 67875-5}\">Berufliche Stellung</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>effective</b>: 2025-02-10</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-berufliche-stellung-lang 6}\">Zuletzt Arbeiterin in der Textilfertigung</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "67875-5"
        }],
        "text" : "Berufliche Stellung"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "effectiveDateTime" : "2025-02-10",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-berufliche-stellung-lang",
          "code" : "6",
          "display" : "Arbeiter:in (Arbeiter verrichten mehrheitlich körperliche Arbeit)"
        }],
        "text" : "Zuletzt Arbeiterin in der Textilfertigung"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-sdd-stellung-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-sdd-einkommen-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-sdd-einkommen-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-einkommen"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-sdd-einkommen-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-sdd-einkommen-1</b></p><a name=\"mii-exa-test-data-patient-11-sdd-einkommen-1\"> </a><a name=\"hcmii-exa-test-data-patient-11-sdd-einkommen-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-einkommen\">MII PR SDD Einkommen</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 98161-3}\">Monatliches Nettoeinkommen des Haushalts</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>effective</b>: 2025-02-10</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-einkommen 1000-1500}\">1.000 € - unter 1.500 €</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "98161-3"
        }],
        "text" : "Monatliches Nettoeinkommen des Haushalts"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "effectiveDateTime" : "2025-02-10",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-einkommen",
          "code" : "1000-1500",
          "display" : "1.000 € - unter 1.500 €"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-sdd-einkommen-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0",
    "resource" : {
      "resourceType" : "QuestionnaireResponse",
      "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "language" : "de",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"de\" lang=\"de\"><a name=\"QuestionnaireResponse_mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: QuestionnaireResponse mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0</b></p><a name=\"mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-eq5d5l-qr-t0\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Language: de; </p><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response\">MII PR PRO QuestionnaireResponse</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The linkID for the item\">LinkID</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the item can appear in the instance\">Definition</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Answer</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireResponseRoot\" class=\"hierarchy\"/> mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire:<a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable\">MII QST PRO EQ-5D-5L Collectable</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q01-MO</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-3\">MII CS EQ-5D Value Set: 3</a> (Ich habe mäßige Probleme herumzugehen)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q02-SC</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-3\">MII CS EQ-5D Value Set: 3</a> (Ich habe mäßige Probleme, mich selbst zu waschen oder anzuziehen)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q03-UA</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-2\">MII CS EQ-5D Value Set: 2</a> (Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q04-PD</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-3\">MII CS EQ-5D Value Set: 3</a> (Ich habe mäßige Schmerzen oder Beschwerden)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q05-AD</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-2\">MII CS EQ-5D Value Set: 2</a> (Ich bin ein wenig ängstlich oder deprimiert)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-score-profile</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">33232</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-score-index</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0.512</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck00.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-vas</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">45</td></tr>\r\n<tr><td colspan=\"4\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "questionnaire" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable",
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
      },
      "authored" : "2025-02-10T09:20:00+01:00",
      "item" : [{
        "linkId" : "euroqol-eq5d5l-q01-MO",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "3",
            "display" : "Ich habe mäßige Probleme herumzugehen"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-q02-SC",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "3",
            "display" : "Ich habe mäßige Probleme, mich selbst zu waschen oder anzuziehen"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-q03-UA",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "2",
            "display" : "Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-q04-PD",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "3",
            "display" : "Ich habe mäßige Schmerzen oder Beschwerden"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-q05-AD",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "2",
            "display" : "Ich bin ein wenig ängstlich oder deprimiert"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-score-profile",
        "answer" : [{
          "valueInteger" : 33232
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-score-index",
        "answer" : [{
          "valueDecimal" : 0.512
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-vas",
        "answer" : [{
          "valueInteger" : 45
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-pro-eq5d5l-index-t0",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-index-t0",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-pro-eq5d5l-index-t0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-pro-eq5d5l-index-t0</b></p><a name=\"mii-exa-test-data-patient-11-pro-eq5d5l-index-t0\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-eq5d5l-index-t0\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index\">MII PR PRO Observation EQ-5D-5L Index</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/pro-observation-id</code>/PRO-OBS-EQ5D-IDX-PAT11-T0</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 736534008}\">EuroQol five dimension five level index value (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-2.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-02-10 09:00:00+0100 --&gt; 2025-02-10 11:30:00+0100</a></p><p><b>effective</b>: 2025-02-10 09:20:00+0100</p><p><b>performer</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>value</b>: 0.512 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Deutlich reduzierter Gesundheitszustand</span></p><p><b>note</b>: </p><blockquote><div><p>Deutscher Wertesatz: Ludwig, K., Graf von der Schulenburg, JM. &amp; Greiner, W. German Value Set for the EQ-5D-5L. PharmacoEconomics 36, 663-674 (2018).</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 73041000052103}\">EuroQoL five dimension five level questionnaire</span></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0.html\">Response to Questionnaire '-&gt;MII QST PRO EQ-5D-5L Collectable' about '-&gt;Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
        "value" : "PRO-OBS-EQ5D-IDX-PAT11-T0"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "736534008",
          "display" : "EuroQol five dimension five level index value (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
      },
      "effectiveDateTime" : "2025-02-10T09:20:00+01:00",
      "performer" : [{
        "reference" : "Patient/mii-exa-test-data-patient-11"
      }],
      "valueQuantity" : {
        "value" : 0.512,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }],
        "text" : "Deutlich reduzierter Gesundheitszustand"
      }],
      "note" : [{
        "text" : "Deutscher Wertesatz: Ludwig, K., Graf von der Schulenburg, JM. & Greiner, W. German Value Set for the EQ-5D-5L. PharmacoEconomics 36, 663-674 (2018)."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "73041000052103",
          "display" : "EuroQoL five dimension five level questionnaire"
        }]
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-pro-eq5d5l-index-t0"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-pro-eq5d5l-vas-t0",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-vas-t0",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-pro-eq5d5l-vas-t0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-pro-eq5d5l-vas-t0</b></p><a name=\"mii-exa-test-data-patient-11-pro-eq5d5l-vas-t0\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-eq5d5l-vas-t0\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas\">MII PR PRO Observation EQ-5D-5L VAS</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/pro-observation-id</code>/PRO-OBS-EQ5D-VAS-PAT11-T0</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 736535009}\">EuroQol visual analogue score (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-2.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-02-10 09:00:00+0100 --&gt; 2025-02-10 11:30:00+0100</a></p><p><b>effective</b>: 2025-02-10 09:20:00+0100</p><p><b>performer</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>value</b>: 45 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Selbsteinschätzung deutlich unter Altersnorm</span></p><p><b>note</b>: </p><blockquote><div><p>VAS 0-100, höhere Werte bedeuten besseren Gesundheitszustand</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 73041000052103}\">EuroQoL five dimension five level questionnaire</span></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0.html\">Response to Questionnaire '-&gt;MII QST PRO EQ-5D-5L Collectable' about '-&gt;Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
        "value" : "PRO-OBS-EQ5D-VAS-PAT11-T0"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "736535009",
          "display" : "EuroQol visual analogue score (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
      },
      "effectiveDateTime" : "2025-02-10T09:20:00+01:00",
      "performer" : [{
        "reference" : "Patient/mii-exa-test-data-patient-11"
      }],
      "valueQuantity" : {
        "value" : 45,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }],
        "text" : "Selbsteinschätzung deutlich unter Altersnorm"
      }],
      "note" : [{
        "text" : "VAS 0-100, höhere Werte bedeuten besseren Gesundheitszustand"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "73041000052103",
          "display" : "EuroQoL five dimension five level questionnaire"
        }]
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-pro-eq5d5l-vas-t0"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-pro-eq5d5l-profil-t0",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-profil-t0",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-pro-eq5d5l-profil-t0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-pro-eq5d5l-profil-t0</b></p><a name=\"mii-exa-test-data-patient-11-pro-eq5d5l-profil-t0\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-eq5d5l-profil-t0\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile\">MII PR PRO Observation EQ-5D-5L Profile</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/pro-observation-id</code>/PRO-OBS-EQ5D-PROF-PAT11-T0</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue euroqol-eq5d5l-profile}\">EuroQol EQ-5D-5L Profile</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-2.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-02-10 09:00:00+0100 --&gt; 2025-02-10 11:30:00+0100</a></p><p><b>effective</b>: 2025-02-10 09:20:00+0100</p><p><b>performer</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>value</b>: 33232</p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Mäßige Einschränkung in Mobilität, Selbstversorgung und Schmerz</span></p><p><b>note</b>: </p><blockquote><div><p>Profil: Mobilität=3, Selbstversorgung=3, Alltagstätigkeiten=2, Schmerz=3, Angst/Niedergeschlagenheit=2</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 73041000052103}\">EuroQoL five dimension five level questionnaire</span></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0.html\">Response to Questionnaire '-&gt;MII QST PRO EQ-5D-5L Collectable' about '-&gt;Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
        "value" : "PRO-OBS-EQ5D-PROF-PAT11-T0"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
          "code" : "euroqol-eq5d5l-profile",
          "display" : "EuroQol EQ-5D-5L Profile"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
      },
      "effectiveDateTime" : "2025-02-10T09:20:00+01:00",
      "performer" : [{
        "reference" : "Patient/mii-exa-test-data-patient-11"
      }],
      "valueString" : "33232",
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }],
        "text" : "Mäßige Einschränkung in Mobilität, Selbstversorgung und Schmerz"
      }],
      "note" : [{
        "text" : "Profil: Mobilität=3, Selbstversorgung=3, Alltagstätigkeiten=2, Schmerz=3, Angst/Niedergeschlagenheit=2"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "73041000052103",
          "display" : "EuroQoL five dimension five level questionnaire"
        }]
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-pro-eq5d5l-profil-t0"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/QuestionnaireResponse/mii-exa-test-data-patient-11-pro-phq9-qr-t0",
    "resource" : {
      "resourceType" : "QuestionnaireResponse",
      "id" : "mii-exa-test-data-patient-11-pro-phq9-qr-t0",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "language" : "de",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"de\" lang=\"de\"><a name=\"QuestionnaireResponse_mii-exa-test-data-patient-11-pro-phq9-qr-t0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: QuestionnaireResponse mii-exa-test-data-patient-11-pro-phq9-qr-t0</b></p><a name=\"mii-exa-test-data-patient-11-pro-phq9-qr-t0\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-phq9-qr-t0\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Language: de; </p><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response\">MII PR PRO QuestionnaireResponse</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The linkID for the item\">LinkID</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the item can appear in the instance\">Definition</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Answer</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireResponseRoot\" class=\"hierarchy\"/> mii-exa-test-data-patient-11-pro-phq9-qr-t0</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire:<a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9\">MII QST PRO PHQ-9</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2a</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6570-1\">LOINC: LA6570-1</a> (More than half the days)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2b</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6570-1\">LOINC: LA6570-1</a> (More than half the days)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2c</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6571-9\">LOINC: LA6571-9</a> (Nearly every day)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2d</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6571-9\">LOINC: LA6571-9</a> (Nearly every day)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2e</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6569-3\">LOINC: LA6569-3</a> (Several days)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2f</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6569-3\">LOINC: LA6569-3</a> (Several days)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2g</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6569-3\">LOINC: LA6569-3</a> (Several days)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2h</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6568-5\">LOINC: LA6568-5</a> (Not at all)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2i</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6569-3\">LOINC: LA6569-3</a> (Several days)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq9-score-total</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">14</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck00.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq9-difficulty</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6575-0\">LOINC: LA6575-0</a> (Very difficult)</span></span></td></tr>\r\n<tr><td colspan=\"4\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "questionnaire" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9",
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
      },
      "authored" : "2025-02-10T09:35:00+01:00",
      "item" : [{
        "linkId" : "phq-phq2a",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        }]
      },
      {
        "linkId" : "phq-phq2b",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        }]
      },
      {
        "linkId" : "phq-phq2c",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6571-9",
            "display" : "Nearly every day"
          }
        }]
      },
      {
        "linkId" : "phq-phq2d",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6571-9",
            "display" : "Nearly every day"
          }
        }]
      },
      {
        "linkId" : "phq-phq2e",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        }]
      },
      {
        "linkId" : "phq-phq2f",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        }]
      },
      {
        "linkId" : "phq-phq2g",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        }]
      },
      {
        "linkId" : "phq-phq2h",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        }]
      },
      {
        "linkId" : "phq-phq2i",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        }]
      },
      {
        "linkId" : "phq-phq9-score-total",
        "answer" : [{
          "valueDecimal" : 14
        }]
      },
      {
        "linkId" : "phq-phq9-difficulty",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6575-0",
            "display" : "Very difficult"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-phq9-qr-t0"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-pro-phq9-score-t0",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-pro-phq9-score-t0",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-pro-phq9-score-t0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-pro-phq9-score-t0</b></p><a name=\"mii-exa-test-data-patient-11-pro-phq9-score-t0\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-phq9-score-t0\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9\">MII PR PRO Observation PHQ-9</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/pro-observation-id</code>/PRO-OBS-PHQ9-PAT11-T0</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44261-6}\">Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-2.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-02-10 09:00:00+0100 --&gt; 2025-02-10 11:30:00+0100</a></p><p><b>effective</b>: 2025-02-10 09:35:00+0100</p><p><b>performer</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>value</b>: 14 {score}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{score} = '{score}')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Moderate Depression (10-14)</span></p><p><b>note</b>: </p><blockquote><div><p>Screening im Rahmen der Studien-Baseline; Vorstellung in der Psychokardiologie empfohlen.</p>\n</div></blockquote><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-mii-exa-test-data-patient-11-pro-phq9-qr-t0.html\">Response to Questionnaire '-&gt;MII QST PRO PHQ-9' about '-&gt;Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
        "value" : "PRO-OBS-PHQ9-PAT11-T0"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44261-6",
          "display" : "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
      },
      "effectiveDateTime" : "2025-02-10T09:35:00+01:00",
      "performer" : [{
        "reference" : "Patient/mii-exa-test-data-patient-11"
      }],
      "valueQuantity" : {
        "value" : 14,
        "unit" : "{score}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }],
        "text" : "Moderate Depression (10-14)"
      }],
      "note" : [{
        "text" : "Screening im Rahmen der Studien-Baseline; Vorstellung in der Psychokardiologie empfohlen."
      }],
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-phq9-qr-t0"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-pro-phq9-score-t0"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3",
    "resource" : {
      "resourceType" : "QuestionnaireResponse",
      "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "language" : "de",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"de\" lang=\"de\"><a name=\"QuestionnaireResponse_mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: QuestionnaireResponse mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3</b></p><a name=\"mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-eq5d5l-qr-t3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Language: de; </p><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response\">MII PR PRO QuestionnaireResponse</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The linkID for the item\">LinkID</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the item can appear in the instance\">Definition</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Answer</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireResponseRoot\" class=\"hierarchy\"/> mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire:<a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable\">MII QST PRO EQ-5D-5L Collectable</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q01-MO</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-2\">MII CS EQ-5D Value Set: 2</a> (Ich habe leichte Probleme herumzugehen)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q02-SC</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-2\">MII CS EQ-5D Value Set: 2</a> (Ich habe leichte Probleme, mich selbst zu waschen oder anzuziehen)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q03-UA</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-2\">MII CS EQ-5D Value Set: 2</a> (Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q04-PD</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-2\">MII CS EQ-5D Value Set: 2</a> (Ich habe leichte Schmerzen oder Beschwerden)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q05-AD</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-2\">MII CS EQ-5D Value Set: 2</a> (Ich bin ein wenig ängstlich oder deprimiert)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-score-profile</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">22222</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-score-index</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0.712</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck00.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-vas</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">60</td></tr>\r\n<tr><td colspan=\"4\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "questionnaire" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable",
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-3"
      },
      "authored" : "2025-05-12T09:25:00+02:00",
      "item" : [{
        "linkId" : "euroqol-eq5d5l-q01-MO",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "2",
            "display" : "Ich habe leichte Probleme herumzugehen"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-q02-SC",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "2",
            "display" : "Ich habe leichte Probleme, mich selbst zu waschen oder anzuziehen"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-q03-UA",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "2",
            "display" : "Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-q04-PD",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "2",
            "display" : "Ich habe leichte Schmerzen oder Beschwerden"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-q05-AD",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "2",
            "display" : "Ich bin ein wenig ängstlich oder deprimiert"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-score-profile",
        "answer" : [{
          "valueInteger" : 22222
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-score-index",
        "answer" : [{
          "valueDecimal" : 0.712
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-vas",
        "answer" : [{
          "valueInteger" : 60
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-pro-eq5d5l-index-t3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-index-t3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-pro-eq5d5l-index-t3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-pro-eq5d5l-index-t3</b></p><a name=\"mii-exa-test-data-patient-11-pro-eq5d5l-index-t3\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-eq5d5l-index-t3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index\">MII PR PRO Observation EQ-5D-5L Index</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/pro-observation-id</code>/PRO-OBS-EQ5D-IDX-PAT11-T3</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 736534008}\">EuroQol five dimension five level index value (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-3.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-05-12 09:15:00+0200 --&gt; 2025-05-12 10:30:00+0200</a></p><p><b>effective</b>: 2025-05-12 09:25:00+0200</p><p><b>performer</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>value</b>: 0.712 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation N}\">Gegenüber T0 um 0.200 verbessert (MCID überschritten)</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 73041000052103}\">EuroQoL five dimension five level questionnaire</span></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3.html\">Response to Questionnaire '-&gt;MII QST PRO EQ-5D-5L Collectable' about '-&gt;Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
        "value" : "PRO-OBS-EQ5D-IDX-PAT11-T3"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "736534008",
          "display" : "EuroQol five dimension five level index value (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-3"
      },
      "effectiveDateTime" : "2025-05-12T09:25:00+02:00",
      "performer" : [{
        "reference" : "Patient/mii-exa-test-data-patient-11"
      }],
      "valueQuantity" : {
        "value" : 0.712,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "N",
          "display" : "Normal"
        }],
        "text" : "Gegenüber T0 um 0.200 verbessert (MCID überschritten)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "73041000052103",
          "display" : "EuroQoL five dimension five level questionnaire"
        }]
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-pro-eq5d5l-index-t3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-pro-eq5d5l-vas-t3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-vas-t3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-pro-eq5d5l-vas-t3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-pro-eq5d5l-vas-t3</b></p><a name=\"mii-exa-test-data-patient-11-pro-eq5d5l-vas-t3\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-eq5d5l-vas-t3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas\">MII PR PRO Observation EQ-5D-5L VAS</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/pro-observation-id</code>/PRO-OBS-EQ5D-VAS-PAT11-T3</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 736535009}\">EuroQol visual analogue score (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-3.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-05-12 09:15:00+0200 --&gt; 2025-05-12 10:30:00+0200</a></p><p><b>effective</b>: 2025-05-12 09:25:00+0200</p><p><b>performer</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>value</b>: 60 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation N}\">Gegenüber T0 um 15 Punkte verbessert</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 73041000052103}\">EuroQoL five dimension five level questionnaire</span></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3.html\">Response to Questionnaire '-&gt;MII QST PRO EQ-5D-5L Collectable' about '-&gt;Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
        "value" : "PRO-OBS-EQ5D-VAS-PAT11-T3"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "736535009",
          "display" : "EuroQol visual analogue score (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-3"
      },
      "effectiveDateTime" : "2025-05-12T09:25:00+02:00",
      "performer" : [{
        "reference" : "Patient/mii-exa-test-data-patient-11"
      }],
      "valueQuantity" : {
        "value" : 60,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "N",
          "display" : "Normal"
        }],
        "text" : "Gegenüber T0 um 15 Punkte verbessert"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "73041000052103",
          "display" : "EuroQoL five dimension five level questionnaire"
        }]
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-pro-eq5d5l-vas-t3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-pro-eq5d5l-profil-t3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-profil-t3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-pro-eq5d5l-profil-t3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-pro-eq5d5l-profil-t3</b></p><a name=\"mii-exa-test-data-patient-11-pro-eq5d5l-profil-t3\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-eq5d5l-profil-t3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile\">MII PR PRO Observation EQ-5D-5L Profile</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/pro-observation-id</code>/PRO-OBS-EQ5D-PROF-PAT11-T3</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue euroqol-eq5d5l-profile}\">EuroQol EQ-5D-5L Profile</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-3.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-05-12 09:15:00+0200 --&gt; 2025-05-12 10:30:00+0200</a></p><p><b>effective</b>: 2025-05-12 09:25:00+0200</p><p><b>performer</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>value</b>: 22222</p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation N}\">Durchgehend nur noch leichte Probleme</span></p><p><b>note</b>: </p><blockquote><div><p>Profil: Mobilität=2, Selbstversorgung=2, Alltagstätigkeiten=2, Schmerz=2, Angst/Niedergeschlagenheit=2</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 73041000052103}\">EuroQoL five dimension five level questionnaire</span></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3.html\">Response to Questionnaire '-&gt;MII QST PRO EQ-5D-5L Collectable' about '-&gt;Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
        "value" : "PRO-OBS-EQ5D-PROF-PAT11-T3"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
          "code" : "euroqol-eq5d5l-profile",
          "display" : "EuroQol EQ-5D-5L Profile"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-3"
      },
      "effectiveDateTime" : "2025-05-12T09:25:00+02:00",
      "performer" : [{
        "reference" : "Patient/mii-exa-test-data-patient-11"
      }],
      "valueString" : "22222",
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "N",
          "display" : "Normal"
        }],
        "text" : "Durchgehend nur noch leichte Probleme"
      }],
      "note" : [{
        "text" : "Profil: Mobilität=2, Selbstversorgung=2, Alltagstätigkeiten=2, Schmerz=2, Angst/Niedergeschlagenheit=2"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "73041000052103",
          "display" : "EuroQoL five dimension five level questionnaire"
        }]
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t3"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-pro-eq5d5l-profil-t3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6",
    "resource" : {
      "resourceType" : "QuestionnaireResponse",
      "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "language" : "de",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"de\" lang=\"de\"><a name=\"QuestionnaireResponse_mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: QuestionnaireResponse mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6</b></p><a name=\"mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-eq5d5l-qr-t6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Language: de; </p><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response\">MII PR PRO QuestionnaireResponse</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The linkID for the item\">LinkID</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the item can appear in the instance\">Definition</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Answer</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireResponseRoot\" class=\"hierarchy\"/> mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire:<a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable\">MII QST PRO EQ-5D-5L Collectable</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q01-MO</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-2\">MII CS EQ-5D Value Set: 2</a> (Ich habe leichte Probleme herumzugehen)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q02-SC</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-2\">MII CS EQ-5D Value Set: 2</a> (Ich habe leichte Probleme, mich selbst zu waschen oder anzuziehen)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q03-UA</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-1\">MII CS EQ-5D Value Set: 1</a> (Ich habe keine Probleme, meinen alltäglichen Tätigkeiten nachzugehen)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q04-PD</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-2\">MII CS EQ-5D Value Set: 2</a> (Ich habe leichte Schmerzen oder Beschwerden)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-q05-AD</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#mii-cs-pro-eq-5d-value-set-1\">MII CS EQ-5D Value Set: 1</a> (Ich bin nicht ängstlich oder deprimiert)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-score-profile</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">22121</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-score-index</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0.823</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck00.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> euroqol-eq5d5l-vas</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">70</td></tr>\r\n<tr><td colspan=\"4\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "questionnaire" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable",
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-4"
      },
      "authored" : "2025-08-11T09:10:00+02:00",
      "item" : [{
        "linkId" : "euroqol-eq5d5l-q01-MO",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "2",
            "display" : "Ich habe leichte Probleme herumzugehen"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-q02-SC",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "2",
            "display" : "Ich habe leichte Probleme, mich selbst zu waschen oder anzuziehen"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-q03-UA",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "1",
            "display" : "Ich habe keine Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-q04-PD",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "2",
            "display" : "Ich habe leichte Schmerzen oder Beschwerden"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-q05-AD",
        "answer" : [{
          "valueCoding" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
            "code" : "1",
            "display" : "Ich bin nicht ängstlich oder deprimiert"
          }
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-score-profile",
        "answer" : [{
          "valueInteger" : 22121
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-score-index",
        "answer" : [{
          "valueDecimal" : 0.823
        }]
      },
      {
        "linkId" : "euroqol-eq5d5l-vas",
        "answer" : [{
          "valueInteger" : 70
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-pro-eq5d5l-index-t6",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-index-t6",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-pro-eq5d5l-index-t6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-pro-eq5d5l-index-t6</b></p><a name=\"mii-exa-test-data-patient-11-pro-eq5d5l-index-t6\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-eq5d5l-index-t6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index\">MII PR PRO Observation EQ-5D-5L Index</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/pro-observation-id</code>/PRO-OBS-EQ5D-IDX-PAT11-T6</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 736534008}\">EuroQol five dimension five level index value (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-4.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-08-11 09:00:00+0200 --&gt; 2025-08-11 10:15:00+0200</a></p><p><b>effective</b>: 2025-08-11 09:10:00+0200</p><p><b>performer</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>value</b>: 0.823 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation N}\">Guter Gesundheitszustand, Verlauf über sechs Monate anhaltend verbessert</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 73041000052103}\">EuroQoL five dimension five level questionnaire</span></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6.html\">Response to Questionnaire '-&gt;MII QST PRO EQ-5D-5L Collectable' about '-&gt;Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
        "value" : "PRO-OBS-EQ5D-IDX-PAT11-T6"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "736534008",
          "display" : "EuroQol five dimension five level index value (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-4"
      },
      "effectiveDateTime" : "2025-08-11T09:10:00+02:00",
      "performer" : [{
        "reference" : "Patient/mii-exa-test-data-patient-11"
      }],
      "valueQuantity" : {
        "value" : 0.823,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "N",
          "display" : "Normal"
        }],
        "text" : "Guter Gesundheitszustand, Verlauf über sechs Monate anhaltend verbessert"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "73041000052103",
          "display" : "EuroQoL five dimension five level questionnaire"
        }]
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-pro-eq5d5l-index-t6"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-pro-eq5d5l-vas-t6",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-vas-t6",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-pro-eq5d5l-vas-t6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-pro-eq5d5l-vas-t6</b></p><a name=\"mii-exa-test-data-patient-11-pro-eq5d5l-vas-t6\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-eq5d5l-vas-t6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas\">MII PR PRO Observation EQ-5D-5L VAS</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/pro-observation-id</code>/PRO-OBS-EQ5D-VAS-PAT11-T6</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 736535009}\">EuroQol visual analogue score (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-4.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-08-11 09:00:00+0200 --&gt; 2025-08-11 10:15:00+0200</a></p><p><b>effective</b>: 2025-08-11 09:10:00+0200</p><p><b>performer</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>value</b>: 70 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation N}\">Gegenüber T0 um 25 Punkte verbessert</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 73041000052103}\">EuroQoL five dimension five level questionnaire</span></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6.html\">Response to Questionnaire '-&gt;MII QST PRO EQ-5D-5L Collectable' about '-&gt;Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
        "value" : "PRO-OBS-EQ5D-VAS-PAT11-T6"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "736535009",
          "display" : "EuroQol visual analogue score (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-4"
      },
      "effectiveDateTime" : "2025-08-11T09:10:00+02:00",
      "performer" : [{
        "reference" : "Patient/mii-exa-test-data-patient-11"
      }],
      "valueQuantity" : {
        "value" : 70,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "N",
          "display" : "Normal"
        }],
        "text" : "Gegenüber T0 um 25 Punkte verbessert"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "73041000052103",
          "display" : "EuroQoL five dimension five level questionnaire"
        }]
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-pro-eq5d5l-vas-t6"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-pro-eq5d5l-profil-t6",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-profil-t6",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-pro-eq5d5l-profil-t6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-pro-eq5d5l-profil-t6</b></p><a name=\"mii-exa-test-data-patient-11-pro-eq5d5l-profil-t6\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-eq5d5l-profil-t6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile\">MII PR PRO Observation EQ-5D-5L Profile</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/pro-observation-id</code>/PRO-OBS-EQ5D-PROF-PAT11-T6</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue euroqol-eq5d5l-profile}\">EuroQol EQ-5D-5L Profile</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-4.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-08-11 09:00:00+0200 --&gt; 2025-08-11 10:15:00+0200</a></p><p><b>effective</b>: 2025-08-11 09:10:00+0200</p><p><b>performer</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>value</b>: 22121</p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation N}\">Alltagstätigkeiten und Stimmung ohne Einschränkung</span></p><p><b>note</b>: </p><blockquote><div><p>Profil: Mobilität=2, Selbstversorgung=2, Alltagstätigkeiten=1, Schmerz=2, Angst/Niedergeschlagenheit=1</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 73041000052103}\">EuroQoL five dimension five level questionnaire</span></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6.html\">Response to Questionnaire '-&gt;MII QST PRO EQ-5D-5L Collectable' about '-&gt;Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
        "value" : "PRO-OBS-EQ5D-PROF-PAT11-T6"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
          "code" : "euroqol-eq5d5l-profile",
          "display" : "EuroQol EQ-5D-5L Profile"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-4"
      },
      "effectiveDateTime" : "2025-08-11T09:10:00+02:00",
      "performer" : [{
        "reference" : "Patient/mii-exa-test-data-patient-11"
      }],
      "valueString" : "22121",
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "N",
          "display" : "Normal"
        }],
        "text" : "Alltagstätigkeiten und Stimmung ohne Einschränkung"
      }],
      "note" : [{
        "text" : "Profil: Mobilität=2, Selbstversorgung=2, Alltagstätigkeiten=1, Schmerz=2, Angst/Niedergeschlagenheit=1"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "73041000052103",
          "display" : "EuroQoL five dimension five level questionnaire"
        }]
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-pro-eq5d5l-profil-t6"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/QuestionnaireResponse/mii-exa-test-data-patient-11-pro-phq9-qr-t6",
    "resource" : {
      "resourceType" : "QuestionnaireResponse",
      "id" : "mii-exa-test-data-patient-11-pro-phq9-qr-t6",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "language" : "de",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"de\" lang=\"de\"><a name=\"QuestionnaireResponse_mii-exa-test-data-patient-11-pro-phq9-qr-t6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: QuestionnaireResponse mii-exa-test-data-patient-11-pro-phq9-qr-t6</b></p><a name=\"mii-exa-test-data-patient-11-pro-phq9-qr-t6\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-phq9-qr-t6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Language: de; </p><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response\">MII PR PRO QuestionnaireResponse</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The linkID for the item\">LinkID</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the item can appear in the instance\">Definition</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Answer</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireResponseRoot\" class=\"hierarchy\"/> mii-exa-test-data-patient-11-pro-phq9-qr-t6</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire:<a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9\">MII QST PRO PHQ-9</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2a</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6569-3\">LOINC: LA6569-3</a> (Several days)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2b</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6569-3\">LOINC: LA6569-3</a> (Several days)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2c</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6570-1\">LOINC: LA6570-1</a> (More than half the days)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2d</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6570-1\">LOINC: LA6570-1</a> (More than half the days)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2e</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6569-3\">LOINC: LA6569-3</a> (Several days)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2f</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6568-5\">LOINC: LA6568-5</a> (Not at all)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2g</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6569-3\">LOINC: LA6569-3</a> (Several days)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2h</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6568-5\">LOINC: LA6568-5</a> (Not at all)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq2i</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6568-5\">LOINC: LA6568-5</a> (Not at all)</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq9-score-total</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">8</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck00.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> phq-phq9-difficulty</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://loinc.org/LA6573-5\">LOINC: LA6573-5</a> (Somewhat difficult)</span></span></td></tr>\r\n<tr><td colspan=\"4\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "questionnaire" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9",
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-4"
      },
      "authored" : "2025-08-11T09:30:00+02:00",
      "item" : [{
        "linkId" : "phq-phq2a",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        }]
      },
      {
        "linkId" : "phq-phq2b",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        }]
      },
      {
        "linkId" : "phq-phq2c",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        }]
      },
      {
        "linkId" : "phq-phq2d",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6570-1",
            "display" : "More than half the days"
          }
        }]
      },
      {
        "linkId" : "phq-phq2e",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        }]
      },
      {
        "linkId" : "phq-phq2f",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        }]
      },
      {
        "linkId" : "phq-phq2g",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6569-3",
            "display" : "Several days"
          }
        }]
      },
      {
        "linkId" : "phq-phq2h",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        }]
      },
      {
        "linkId" : "phq-phq2i",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6568-5",
            "display" : "Not at all"
          }
        }]
      },
      {
        "linkId" : "phq-phq9-score-total",
        "answer" : [{
          "valueDecimal" : 8
        }]
      },
      {
        "linkId" : "phq-phq9-difficulty",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA6573-5",
            "display" : "Somewhat difficult"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-phq9-qr-t6"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-11-pro-phq9-score-t6",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-11-pro-phq9-score-t6",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-11-pro-phq9-score-t6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-11-pro-phq9-score-t6</b></p><a name=\"mii-exa-test-data-patient-11-pro-phq9-score-t6\"> </a><a name=\"hcmii-exa-test-data-patient-11-pro-phq9-score-t6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9\">MII PR PRO Observation PHQ-9</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Instantiates Canonical</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9\">https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/pro-observation-id</code>/PRO-OBS-PHQ9-PAT11-T6</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44261-6}\">Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-test-data-patient-11-diagnose-1.html\">Condition Heart failure</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-11-encounter-4.html\">Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-08-11 09:00:00+0200 --&gt; 2025-08-11 10:15:00+0200</a></p><p><b>effective</b>: 2025-08-11 09:30:00+0200</p><p><b>performer</b>: <a href=\"Patient-mii-exa-test-data-patient-11.html\">Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))</a></p><p><b>value</b>: 8 {score}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{score} = '{score}')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Leichte Depression (5-9), gegenüber T0 um 6 Punkte gebessert</span></p><p><b>note</b>: </p><blockquote><div><p>Kontrolle nach sechs Monaten; keine antidepressive Pharmakotherapie erfolgt.</p>\n</div></blockquote><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-mii-exa-test-data-patient-11-pro-phq9-qr-t6.html\">Response to Questionnaire '-&gt;MII QST PRO PHQ-9' about '-&gt;Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
        "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
        "value" : "PRO-OBS-PHQ9-PAT11-T6"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44261-6",
          "display" : "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-11"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-4"
      },
      "effectiveDateTime" : "2025-08-11T09:30:00+02:00",
      "performer" : [{
        "reference" : "Patient/mii-exa-test-data-patient-11"
      }],
      "valueQuantity" : {
        "value" : 8,
        "unit" : "{score}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "L",
          "display" : "Low"
        }],
        "text" : "Leichte Depression (5-9), gegenüber T0 um 6 Punkte gebessert"
      }],
      "note" : [{
        "text" : "Kontrolle nach sechs Monaten; keine antidepressive Pharmakotherapie erfolgt."
      }],
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-phq9-qr-t6"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-11-pro-phq9-score-t6"
    }
  }]
}

```
