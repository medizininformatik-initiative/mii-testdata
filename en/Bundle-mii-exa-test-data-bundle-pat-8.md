# mii-exa-test-data-bundle-pat-8 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-bundle-pat-8**

## Example Bundle: mii-exa-test-data-bundle-pat-8



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-test-data-bundle-pat-8",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "type" : "transaction",
  "timestamp" : "2025-06-18T13:58:00+02:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/Patient/mii-exa-test-data-patient-8",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-test-data-patient-8",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_mii-exa-test-data-patient-8\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-test-data-patient-8</b></p><a name=\"mii-exa-test-data-patient-8\"> </a><a name=\"hcmii-exa-test-data-patient-8\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient\">MII PR Person Patient</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.consent@2027.0.0-ballot&amp;canonical=http://fhir.de/ConsentManagement/StructureDefinition/Patient\">Consent Management: Patient</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Id (see the one above)\">Other Id:</td><td colspan=\"3\">Krankenversichertennummer/F567890123 (use: official, )</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\">Bahnhofstraße 89 Stuttgart 70173 DE </td></tr></table></div>"
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
        "value" : "159753486",
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
        "value" : "F567890123",
        "assigner" : {
          "identifier" : {
            "use" : "official",
            "system" : "http://fhir.de/sid/arge-ik/iknr",
            "value" : "234567890"
          }
        }
      }],
      "name" : [{
        "use" : "official",
        "family" : "Bauer",
        "given" : ["Hans", "Peter"]
      }],
      "gender" : "male",
      "birthDate" : "1958-02-28",
      "deceasedBoolean" : true,
      "address" : [{
        "type" : "both",
        "line" : ["Bahnhofstraße 89"],
        "city" : "Stuttgart",
        "postalCode" : "70173",
        "country" : "DE"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Patient/mii-exa-test-data-patient-8"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Consent/mii-exa-test-data-patient-8-consent-1",
    "resource" : {
      "resourceType" : "Consent",
      "id" : "mii-exa-test-data-patient-8-consent-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Consent_mii-exa-test-data-patient-8-consent-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Consent mii-exa-test-data-patient-8-consent-1</b></p><a name=\"mii-exa-test-data-patient-8-consent-1\"> </a><a name=\"hcmii-exa-test-data-patient-8-consent-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung\">Profile - MI-I - Consent - Einwilligung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2>Participants</h2><table class=\"grid\"><tr><td><b>Role</b></td><td><b>Details</b></td></tr><tr><td title=\"Who the consent applies to\">Patient</td><td><a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></td></tr><tr><td title=\"Who manages the consent through its lifecycle.\">Manager</td><td><a href=\"Organization-mii-exa-test-data-organization-charite.html\">Organization Charité – Universitätsmedizin Berlin</a></td></tr></table><p>This consent is made under the policy <code>urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791</code> .</p><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Rule\">Rule</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Period\">Time Period</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Data\">What</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck01.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-qi-hidden.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> deny</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2023-11-05 --&gt; 2023-11-15</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2023-11-05 --&gt; 2023-11-15</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.6}\">MDAT erheben</span></li></ul></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2023-11-05 --&gt; 2023-11-15</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.7}\">MDAT speichern, verarbeiten</span></li></ul></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck000.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2023-11-05 --&gt; 2023-11-15</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.8}\">MDAT wissenschaftlich nutzen</span></li></ul></td></tr>\r\n<tr><td colspan=\"3\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
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
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "dateTime" : "2023-11-05T08:30:00+01:00",
      "organization" : [{
        "reference" : "Organization/mii-exa-test-data-organization-charite"
      }],
      "policy" : [{
        "uri" : "urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791"
      }],
      "provision" : {
        "type" : "deny",
        "period" : {
          "start" : "2023-11-05",
          "end" : "2023-11-15"
        },
        "provision" : [{
          "type" : "permit",
          "period" : {
            "start" : "2023-11-05",
            "end" : "2023-11-15"
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
            "start" : "2023-11-05",
            "end" : "2023-11-15"
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
            "start" : "2023-11-05",
            "end" : "2023-11-15"
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
      "url" : "Consent/mii-exa-test-data-patient-8-consent-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Encounter/mii-exa-test-data-patient-8-encounter-1",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-test-data-patient-8-encounter-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_mii-exa-test-data-patient-8-encounter-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-test-data-patient-8-encounter-1</b></p><a name=\"mii-exa-test-data-patient-8-encounter-1\"> </a><a name=\"hcmii-exa-test-data-patient-8-encounter-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung\">MII PR Fall Kontakt mit einer Gesundheitseinrichtung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Visit number/MII_0000009</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>type</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/Kontaktebene einrichtungskontakt}\">Einrichtungskontakt</span>, <span title=\"Codes:{http://fhir.de/CodeSystem/kontaktart-de normalstationaer}\">Normalstationär</span></p><p><b>serviceType</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel 0300}\">Kardiologie</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>period</b>: 2023-11-10 --&gt; 2023-11-15</p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td><td><b>Use</b></td><td><b>Rank</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-mii-exa-test-data-patient-8-todesursache-1.html\">Condition I21.9</a></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/diagnosis-role DD}\">Discharge diagnosis</span></td><td>1</td></tr></table><h3>Hospitalizations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>AdmitSource</b></td><td><b>DischargeDisposition</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/dgkev/Aufnahmeanlass N}\">Notfall</span></td><td><span title=\"Codes:\"></span></td></tr></table><p><b>serviceProvider</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Charité - Universitätsmedizin Berlin</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "VN"
          }]
        },
        "system" : "https://www.charite.de/fhir/NamingSystem/Aufnahmenummern",
        "value" : "MII_0000009"
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
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "period" : {
        "start" : "2023-11-10",
        "end" : "2023-11-15"
      },
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/mii-exa-test-data-patient-8-todesursache-1"
        },
        "use" : {
          "coding" : [{
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
                "code" : "07",
                "display" : "Tod"
              }
            },
            {
              "url" : "DritteStelle",
              "valueCoding" : {
                "system" : "http://fhir.de/CodeSystem/dkgev/EntlassungsgrundDritteStelle",
                "code" : "9",
                "display" : "keine Angabe"
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
      "url" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-patient-8-diagnose-1",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-patient-8-diagnose-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-patient-8-diagnose-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-patient-8-diagnose-1</b></p><a name=\"mii-exa-test-data-patient-8-diagnose-1\"> </a><a name=\"hcmii-exa-test-data-patient-8-diagnose-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose\">MII PR Diagnose Condition</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm I25.9}, {http://fhir.de/CodeSystem/bfarm/alpha-id I26852}, {http://snomed.info/sct 413838009}\">Chronische ischämische Herzkrankheit</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 80891009}\">Heart structure (body structure)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>recordedDate</b>: 2023-11-10</p><p><b>note</b>: </p><blockquote><div><p>Chronische ischämische Herzkrankheit, nicht näher bezeichnet</p>\n</div></blockquote></div>"
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
          "version" : "2023",
          "code" : "I25.9"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
          "version" : "2023",
          "code" : "I26852",
          "display" : "Chronische ischämische Herzkrankheit"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "413838009",
          "display" : "Chronic ischemic heart disease (disorder)"
        }]
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "80891009",
          "display" : "Heart structure (body structure)"
        }]
      }],
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "recordedDate" : "2023-11-10",
      "note" : [{
        "text" : "Chronische ischämische Herzkrankheit, nicht näher bezeichnet"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/mii-exa-test-data-patient-8-diagnose-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-8-vitalstatus-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-8-vitalstatus-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-8-vitalstatus-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-8-vitalstatus-1</b></p><a name=\"mii-exa-test-data-patient-8-vitalstatus-1\"> </a><a name=\"hcmii-exa-test-data-patient-8-vitalstatus-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus\">MII PR Person Vitalstatus</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 67162-8}\">Patient Disposition</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>effective</b>: 2023-11-15</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus T}\">Patient verstorben</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "67162-8"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "effectiveDateTime" : "2023-11-15",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus",
          "code" : "T"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-8-vitalstatus-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-patient-8-todesursache-1",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-patient-8-todesursache-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-patient-8-todesursache-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-patient-8-todesursache-1</b></p><a name=\"mii-exa-test-data-patient-8-todesursache-1\"> </a><a name=\"hcmii-exa-test-data-patient-8-todesursache-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache\">MII PR Person Todesursache</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 16100001}, {http://loinc.org 79378-6}\">Death diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{http://hl7.org/fhir/sid/icd-10 I21.9}\">I21.9</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>recordedDate</b>: 2023-11-15</p><p><b>note</b>: </p><blockquote><div><p>Akuter Herzinfarkt</p>\n</div></blockquote></div>"
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
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "16100001"
        },
        {
          "system" : "http://loinc.org",
          "code" : "79378-6"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/sid/icd-10",
          "version" : "2019",
          "code" : "I21.9"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "recordedDate" : "2023-11-15",
      "note" : [{
        "text" : "Akuter Herzinfarkt"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/mii-exa-test-data-patient-8-todesursache-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Procedure/mii-exa-test-data-patient-8-prozedur-1",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-test-data-patient-8-prozedur-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-test-data-patient-8-prozedur-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-test-data-patient-8-prozedur-1</b></p><a name=\"mii-exa-test-data-patient-8-prozedur-1\"> </a><a name=\"hcmii-exa-test-data-patient-8-prozedur-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Prozedur Durchführungsabsicht</b>: <a href=\"http://snomed.info/id/261004008\">SNOMED CT: 261004008</a> (Diagnostic intent)</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 165197003}\">Diagnostic assessment</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 33367005}, {http://fhir.de/CodeSystem/bfarm/ops 1-275.2}\">Angiography of coronary artery</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>performed</b>: 2023-11-12 07:30:00+0100</p><p><b>recorder</b>: <a href=\"PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.html\">PractitionerRole Physician (occupation)</a></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 41801008}\">Coronary artery structure</span></p><p><b>note</b>: </p><blockquote><div><p>Notfall-Koronarangiographie bei akutem STEMI</p>\n</div></blockquote></div>"
      },
      "extension" : [{
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
          "code" : "165197003"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "33367005"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2023",
          "code" : "1-275.2"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "performedDateTime" : "2023-11-12T07:30:00+01:00",
      "recorder" : {
        "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41801008"
        }]
      }],
      "note" : [{
        "text" : "Notfall-Koronarangiographie bei akutem STEMI"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-test-data-patient-8-prozedur-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Procedure/mii-exa-test-data-patient-8-prozedur-2",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-test-data-patient-8-prozedur-2",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-test-data-patient-8-prozedur-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-test-data-patient-8-prozedur-2</b></p><a name=\"mii-exa-test-data-patient-8-prozedur-2\"> </a><a name=\"hcmii-exa-test-data-patient-8-prozedur-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Prozedur Durchführungsabsicht</b>: <a href=\"http://snomed.info/id/262202000\">SNOMED CT: 262202000</a> (Therapeutic)</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 387713003}\">Surgical procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 41339005}, {http://fhir.de/CodeSystem/bfarm/ops 8-837.m0}\">Percutaneous transluminal angioplasty of coronary artery using imaging guidance with contrast</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>performed</b>: 2023-11-12 08:00:00+0100 --&gt; 2023-11-12 10:30:00+0100</p><p><b>recorder</b>: <a href=\"PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.html\">PractitionerRole Physician (occupation)</a></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 41801008}\">Coronary artery structure</span></p><p><b>note</b>: </p><blockquote><div><p>Primäre PCI mit Stent-Implantation in die LAD</p>\n</div></blockquote></div>"
      },
      "extension" : [{
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
          "code" : "387713003"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41339005"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2023",
          "code" : "8-837.m0"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "performedPeriod" : {
        "start" : "2023-11-12T08:00:00+01:00",
        "end" : "2023-11-12T10:30:00+01:00"
      },
      "recorder" : {
        "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41801008"
        }]
      }],
      "note" : [{
        "text" : "Primäre PCI mit Stent-Implantation in die LAD"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-test-data-patient-8-prozedur-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Procedure/mii-exa-test-data-patient-8-prozedur-3",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-test-data-patient-8-prozedur-3",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-test-data-patient-8-prozedur-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-test-data-patient-8-prozedur-3</b></p><a name=\"mii-exa-test-data-patient-8-prozedur-3\"> </a><a name=\"hcmii-exa-test-data-patient-8-prozedur-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Prozedur Durchführungsabsicht</b>: <a href=\"http://snomed.info/id/262202000\">SNOMED CT: 262202000</a> (Therapeutic)</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 277132007}\">Therapeutic procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 89666000}, {http://fhir.de/CodeSystem/bfarm/ops 8-771}\">Cardiopulmonary resuscitation</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>performed</b>: 2023-11-15 14:20:00+0100 --&gt; 2023-11-15 15:45:00+0100</p><p><b>recorder</b>: <a href=\"PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.html\">PractitionerRole Physician (occupation)</a></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 113257007}\">Structure of cardiovascular system</span></p><p><b>note</b>: </p><blockquote><div><p>Erfolglose kardiopulmonale Reanimation bei Kammerflimmern</p>\n</div></blockquote></div>"
      },
      "extension" : [{
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
          "code" : "277132007"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "89666000"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2023",
          "code" : "8-771"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "performedPeriod" : {
        "start" : "2023-11-15T14:20:00+01:00",
        "end" : "2023-11-15T15:45:00+01:00"
      },
      "recorder" : {
        "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "113257007"
        }]
      }],
      "note" : [{
        "text" : "Erfolglose kardiopulmonale Reanimation bei Kammerflimmern"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-test-data-patient-8-prozedur-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/ServiceRequest/mii-exa-test-data-patient-8-labrequest-1",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-test-data-patient-8-labrequest-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-test-data-patient-8-labrequest-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-test-data-patient-8-labrequest-1</b></p><a name=\"mii-exa-test-data-patient-8-labrequest-1\"> </a><a name=\"hcmii-exa-test-data-patient-8-labrequest-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab\">MII PR Labor Laboranforderung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Placer Identifier/LAB_000008</p><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 89576-3}\">Troponin T.cardiac panel - Serum or Plasma by High sensitivity method</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>authoredOn</b>: 2023-11-12 06:00:00+0100</p><p><b>requester</b>: <a href=\"Practitioner-mii-exa-test-data-practitioner-physician-1.html\">Practitioner Rahel Hirsch </a></p><p><b>reasonCode</b>: <span title=\"Codes:{http://snomed.info/sct 22298006}\">Myocardial infarction</span></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-requests",
        "value" : "LAB_000008",
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
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "89576-3"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "authoredOn" : "2023-11-12T06:00:00+01:00",
      "requester" : {
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
      },
      "reasonCode" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "22298006",
          "display" : "Myocardial infarction"
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest/mii-exa-test-data-patient-8-labrequest-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/DiagnosticReport/mii-exa-test-data-patient-8-labreport-1",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "mii-exa-test-data-patient-8-labreport-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_mii-exa-test-data-patient-8-labreport-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport mii-exa-test-data-patient-8-labreport-1</b></p><a name=\"mii-exa-test-data-patient-8-labreport-1\"> </a><a name=\"hcmii-exa-test-data-patient-8-labreport-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab\">MII PR Labor Laborbefund</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2><span title=\"Codes:{http://loinc.org 11502-2}\">Laboratory report</span> (<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 LAB}, {http://loinc.org 26436-6}\">Laboratory studies (set)</span>) </h2><table class=\"grid\"><tr><td>Subject</td><td>Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</td></tr><tr><td>Relevant Time</td><td>2023-11-12 06:30:00+0100</td></tr><tr><td>Reported</td><td>2023-11-12 10:45:00+0100</td></tr><tr><td>Performer</td><td> <a href=\"Organization-mii-exa-test-data-organization-labor-berlin.html\">Organization Labor Berlin – Charité Vivantes GmbH</a></td></tr><tr><td>Identifier</td><td> Filler Identifier/LDR_000008</td></tr></table><p><b>Report Details</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Value</b></td><td><b>Flags</b></td><td><b>Note</b></td><td><b>Reported</b></td></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-8-labobs-1.html\"><span title=\"Codes:{http://loinc.org 26464-8}\">Leukocytes [#/volume] in Blood</span></a></td><td>13.8 /nanoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/nL = '/nL')</span></td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></td><td/><td>2023-11-12 08:15:00+0100</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-8-labobs-2.html\"><span title=\"Codes:{http://loinc.org 6598-7}\">Troponin T.cardiac [Mass/volume] in Serum or Plasma</span></a></td><td>2.8 nanogram per milliliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeng/mL = 'ng/mL')</span></td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation HH}\">Critical high</span></td><td><blockquote><div><p>Stark erhöhtes Troponin T bei Myokardinfarkt</p>\n</div></blockquote></td><td>2023-11-12 08:15:00+0100</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-8-labobs-3.html\"><span title=\"Codes:{http://loinc.org 2157-6}\">Creatine kinase [Enzymatic activity/volume] in Serum or Plasma</span></a></td><td>85 unit per liter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeU/L = 'U/L')</span></td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></td><td/><td>2023-11-12 08:15:00+0100</td></tr></table><p>ST-Hebungsinfarkt (STEMI): Kritisch erhöhtes Troponin T (2,8 ng/mL) und CK-MB (85 U/L) bestätigen akuten Myokardinfarkt. Sofortige Reperfusionstherapie erforderlich.</p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "FILL"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LDR_000008",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-8-labrequest-1"
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
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "effectiveDateTime" : "2023-11-12T06:30:00+01:00",
      "issued" : "2023-11-12T10:45:00+01:00",
      "performer" : [{
        "reference" : "Organization/mii-exa-test-data-organization-labor-berlin"
      }],
      "result" : [{
        "reference" : "Observation/mii-exa-test-data-patient-8-labobs-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-8-labobs-2"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-8-labobs-3"
      }],
      "conclusion" : "ST-Hebungsinfarkt (STEMI): Kritisch erhöhtes Troponin T (2,8 ng/mL) und CK-MB (85 U/L) bestätigen akuten Myokardinfarkt. Sofortige Reperfusionstherapie erforderlich."
    },
    "request" : {
      "method" : "PUT",
      "url" : "DiagnosticReport/mii-exa-test-data-patient-8-labreport-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-8-labobs-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-8-labobs-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-8-labobs-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-8-labobs-1</b></p><a name=\"mii-exa-test-data-patient-8-labobs-1\"> </a><a name=\"hcmii-exa-test-data-patient-8-labobs-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000026</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-8-labrequest-1.html\">ServiceRequest Troponin T.cardiac panel - Serum or Plasma by High sensitivity method</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 26464-8}\">Leukocytes [#/volume] in Blood</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>effective</b>: 2023-11-12 06:30:00+0100</p><p><b>issued</b>: 2023-11-12 08:15:00+0100</p><p><b>value</b>: 13.8 /nanoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/nL = '/nL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 703452004}\">Electrical impedance technique (qualifier value)</span></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas-c303.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000026",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-8-labrequest-1"
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
          "code" : "26464-8",
          "display" : "Leukocytes [#/volume] in Blood"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "effectiveDateTime" : "2023-11-12T06:30:00+01:00",
      "issued" : "2023-11-12T08:15:00+01:00",
      "valueQuantity" : {
        "value" : 13.8,
        "unit" : "/nanoliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "/nL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "703452004",
          "display" : "Electrical impedance technique (qualifier value)"
        }]
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-8-labobs-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-8-labobs-2",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-8-labobs-2",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-8-labobs-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-8-labobs-2</b></p><a name=\"mii-exa-test-data-patient-8-labobs-2\"> </a><a name=\"hcmii-exa-test-data-patient-8-labobs-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000027</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-8-labrequest-1.html\">ServiceRequest Troponin T.cardiac panel - Serum or Plasma by High sensitivity method</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 6598-7}\">Troponin T.cardiac [Mass/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>effective</b>: 2023-11-12 06:30:00+0100</p><p><b>issued</b>: 2023-11-12 08:15:00+0100</p><p><b>value</b>: 2.8 nanogram per milliliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeng/mL = 'ng/mL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation HH}\">Critical high</span></p><p><b>note</b>: </p><blockquote><div><p>Stark erhöhtes Troponin T bei Myokardinfarkt</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 83561000052101}\">Photometry technique (qualifier value)</span></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas-c303.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000027",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-8-labrequest-1"
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
          "code" : "6598-7",
          "display" : "Troponin T.cardiac [Mass/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "effectiveDateTime" : "2023-11-12T06:30:00+01:00",
      "issued" : "2023-11-12T08:15:00+01:00",
      "valueQuantity" : {
        "value" : 2.8,
        "unit" : "nanogram per milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "ng/mL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "HH",
          "display" : "Critical high"
        }]
      }],
      "note" : [{
        "text" : "Stark erhöhtes Troponin T bei Myokardinfarkt"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "83561000052101",
          "display" : "Photometry technique (qualifier value)"
        }]
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-8-labobs-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-8-labobs-3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-8-labobs-3",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-8-labobs-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-8-labobs-3</b></p><a name=\"mii-exa-test-data-patient-8-labobs-3\"> </a><a name=\"hcmii-exa-test-data-patient-8-labobs-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000028</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-8-labrequest-1.html\">ServiceRequest Troponin T.cardiac panel - Serum or Plasma by High sensitivity method</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2157-6}\">Creatine kinase [Enzymatic activity/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>effective</b>: 2023-11-12 06:30:00+0100</p><p><b>issued</b>: 2023-11-12 08:15:00+0100</p><p><b>value</b>: 85 unit per liter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeU/L = 'U/L')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 83561000052101}\">Photometry technique (qualifier value)</span></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas-c303.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000028",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-8-labrequest-1"
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
          "code" : "2157-6",
          "display" : "Creatine kinase [Enzymatic activity/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "effectiveDateTime" : "2023-11-12T06:30:00+01:00",
      "issued" : "2023-11-12T08:15:00+01:00",
      "valueQuantity" : {
        "value" : 85,
        "unit" : "unit per liter",
        "system" : "http://unitsofmeasure.org",
        "code" : "U/L"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "83561000052101",
          "display" : "Photometry technique (qualifier value)"
        }]
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-8-labobs-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationRequest/mii-exa-test-data-patient-8-medrequest-1",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-test-data-patient-8-medrequest-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-test-data-patient-8-medrequest-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-test-data-patient-8-medrequest-1</b></p><a name=\"mii-exa-test-data-patient-8-medrequest-1\"> </a><a name=\"hcmii-exa-test-data-patient-8-medrequest-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest\">MII PR Medikation MedicationRequest</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationOrders</code>/MO_0000020</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-heparin.html\">Medication Heparin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>authoredOn</b>: 2023-11-12 08:00:00+0100</p><blockquote><p><b>dosageInstruction</b></p><p><b>text</b>: Heparin 5000 IE s.c. alle 12 Stunden</p><p><b>timing</b>: 2 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20066000}\">Subcutaneous use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>5000 IU<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[iU] = '[iU]')</span></td></tr></table></blockquote><h3>Substitutions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Allowed[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>false</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
        "value" : "MO_0000020"
      }],
      "status" : "active",
      "intent" : "order",
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-heparin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "authoredOn" : "2023-11-12T08:00:00+01:00",
      "dosageInstruction" : [{
        "text" : "Heparin 5000 IE s.c. alle 12 Stunden",
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
            "code" : "20066000",
            "display" : "Subcutaneous use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 5000,
            "unit" : "IU",
            "system" : "http://unitsofmeasure.org",
            "code" : "[iU]"
          }
        }]
      }],
      "substitution" : {
        "allowedBoolean" : false
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-test-data-patient-8-medrequest-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationRequest/mii-exa-test-data-patient-8-medrequest-2",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-test-data-patient-8-medrequest-2",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-test-data-patient-8-medrequest-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-test-data-patient-8-medrequest-2</b></p><a name=\"mii-exa-test-data-patient-8-medrequest-2\"> </a><a name=\"hcmii-exa-test-data-patient-8-medrequest-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest\">MII PR Medikation MedicationRequest</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationOrders</code>/MO_0000021</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-metoprolol.html\">Medication Metoprolol</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>authoredOn</b>: 2023-11-12 08:30:00+0100</p><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>text</b>: Metoprolol 25mg morgens</p><p><b>timing</b>: Morning, Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>25 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 2</p><p><b>text</b>: Metoprolol 50mg abends</p><p><b>timing</b>: Evening, Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>50 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><h3>Substitutions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Allowed[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>true</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
        "value" : "MO_0000021"
      }],
      "status" : "active",
      "intent" : "order",
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-metoprolol"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "authoredOn" : "2023-11-12T08:30:00+01:00",
      "dosageInstruction" : [{
        "sequence" : 1,
        "text" : "Metoprolol 25mg morgens",
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
            "value" : 25,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      },
      {
        "sequence" : 2,
        "text" : "Metoprolol 50mg abends",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["EVE"]
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
            "value" : 50,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      }],
      "substitution" : {
        "allowedBoolean" : true
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-test-data-patient-8-medrequest-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationRequest/mii-exa-test-data-patient-8-medrequest-3",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-test-data-patient-8-medrequest-3",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-test-data-patient-8-medrequest-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-test-data-patient-8-medrequest-3</b></p><a name=\"mii-exa-test-data-patient-8-medrequest-3\"> </a><a name=\"hcmii-exa-test-data-patient-8-medrequest-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest\">MII PR Medikation MedicationRequest</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationOrders</code>/MO_0000022</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-atorvastatin.html\">Medication Atorvastatin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>authoredOn</b>: 2023-11-12 09:00:00+0100</p><blockquote><p><b>dosageInstruction</b></p><p><b>text</b>: Atorvastatin 40mg 1x täglich abends</p><p><b>timing</b>: Evening, Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>40 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><h3>Substitutions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Allowed[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>true</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
        "value" : "MO_0000022"
      }],
      "status" : "active",
      "intent" : "order",
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-atorvastatin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "authoredOn" : "2023-11-12T09:00:00+01:00",
      "dosageInstruction" : [{
        "text" : "Atorvastatin 40mg 1x täglich abends",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["EVE"]
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
            "value" : 40,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      }],
      "substitution" : {
        "allowedBoolean" : true
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-test-data-patient-8-medrequest-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-8-medstatement-1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-8-medstatement-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-8-medstatement-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-8-medstatement-1</b></p><a name=\"mii-exa-test-data-patient-8-medstatement-1\"> </a><a name=\"hcmii-exa-test-data-patient-8-medstatement-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000021</p><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-8-medrequest-1.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000020; status = active; intent = order; medication[x] = -&gt;Medication Heparin; authoredOn = 2023-11-12 08:00:00+0100</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category inpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-heparin.html\">Medication Heparin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>effective</b>: 2023-11-12 08:00:00+0100 --&gt; 2023-11-15 14:00:00+0100</p><p><b>dateAsserted</b>: 2023-11-12</p><blockquote><p><b>dosage</b></p><p><b>text</b>: Heparin 5000 IE s.c. alle 12 Stunden</p><p><b>timing</b>: 2 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20066000}\">Subcutaneous use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>5000 IU<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[iU] = '[iU]')</span></td></tr></table></blockquote></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000021"
      }],
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-test-data-patient-8-medrequest-1"
      }],
      "status" : "completed",
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
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-heparin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2023-11-12T08:00:00+01:00",
        "end" : "2023-11-15T14:00:00+01:00"
      },
      "dateAsserted" : "2023-11-12",
      "dosage" : [{
        "text" : "Heparin 5000 IE s.c. alle 12 Stunden",
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
            "code" : "20066000",
            "display" : "Subcutaneous use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 5000,
            "unit" : "IU",
            "system" : "http://unitsofmeasure.org",
            "code" : "[iU]"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-8-medstatement-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-8-medstatement-2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-8-medstatement-2",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-8-medstatement-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-8-medstatement-2</b></p><a name=\"mii-exa-test-data-patient-8-medstatement-2\"> </a><a name=\"hcmii-exa-test-data-patient-8-medstatement-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000022</p><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-8-medrequest-2.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000021; status = active; intent = order; medication[x] = -&gt;Medication Metoprolol; authoredOn = 2023-11-12 08:30:00+0100</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category inpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-metoprolol.html\">Medication Metoprolol</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>effective</b>: 2023-11-12 08:30:00+0100 --&gt; 2023-11-15 14:00:00+0100</p><p><b>dateAsserted</b>: 2023-11-12</p><blockquote><p><b>dosage</b></p><p><b>text</b>: Metoprolol 50mg 2x täglich</p><p><b>timing</b>: 2 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>50 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000022"
      }],
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-test-data-patient-8-medrequest-2"
      }],
      "status" : "completed",
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
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-metoprolol"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2023-11-12T08:30:00+01:00",
        "end" : "2023-11-15T14:00:00+01:00"
      },
      "dateAsserted" : "2023-11-12",
      "dosage" : [{
        "text" : "Metoprolol 50mg 2x täglich",
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
            "value" : 50,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-8-medstatement-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-8-medstatement-3",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-8-medstatement-3",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-8-medstatement-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-8-medstatement-3</b></p><a name=\"mii-exa-test-data-patient-8-medstatement-3\"> </a><a name=\"hcmii-exa-test-data-patient-8-medstatement-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000023</p><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-8-medrequest-3.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000022; status = active; intent = order; medication[x] = -&gt;Medication Atorvastatin; authoredOn = 2023-11-12 09:00:00+0100</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category inpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-atorvastatin.html\">Medication Atorvastatin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>effective</b>: 2023-11-12 09:00:00+0100 --&gt; 2023-11-15 14:00:00+0100</p><p><b>dateAsserted</b>: 2023-11-12</p><blockquote><p><b>dosage</b></p><p><b>text</b>: Atorvastatin 40mg 1x täglich abends</p><p><b>timing</b>: Evening, Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>40 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000023"
      }],
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-test-data-patient-8-medrequest-3"
      }],
      "status" : "completed",
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
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-atorvastatin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2023-11-12T09:00:00+01:00",
        "end" : "2023-11-15T14:00:00+01:00"
      },
      "dateAsserted" : "2023-11-12",
      "dosage" : [{
        "text" : "Atorvastatin 40mg 1x täglich abends",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["EVE"]
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
            "value" : 40,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-8-medstatement-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationAdministration/mii-exa-test-data-patient-8-medadmin-1",
    "resource" : {
      "resourceType" : "MedicationAdministration",
      "id" : "mii-exa-test-data-patient-8-medadmin-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationAdministration_mii-exa-test-data-patient-8-medadmin-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationAdministration mii-exa-test-data-patient-8-medadmin-1</b></p><a name=\"mii-exa-test-data-patient-8-medadmin-1\"> </a><a name=\"hcmii-exa-test-data-patient-8-medadmin-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration\">MII PR Medikation MedicationAdministration</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationAdministrations</code>/MA_0000017</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-admin-category inpatient}\">Inpatient</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-heparin.html\">Medication Heparin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>effective</b>: 2023-11-12 08:00:00+0100</p><p><b>request</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-8-medrequest-1.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000020; status = active; intent = order; medication[x] = -&gt;Medication Heparin; authoredOn = 2023-11-12 08:00:00+0100</a></p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td><td><b>Route</b></td><td><b>Dose</b></td></tr><tr><td style=\"display: none\">*</td><td>Heparin 5000 IE s.c.</td><td><span title=\"Codes:{http://standardterms.edqm.eu 20066000}\">Subcutaneous use</span></td><td>5000 IU<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[iU] = '[iU]')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
        "value" : "MA_0000017"
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
          "code" : "inpatient",
          "display" : "Inpatient"
        }]
      },
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-heparin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "effectiveDateTime" : "2023-11-12T08:00:00+01:00",
      "request" : {
        "reference" : "MedicationRequest/mii-exa-test-data-patient-8-medrequest-1"
      },
      "dosage" : {
        "text" : "Heparin 5000 IE s.c.",
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20066000",
            "display" : "Subcutaneous use"
          }]
        },
        "dose" : {
          "value" : 5000,
          "unit" : "IU",
          "system" : "http://unitsofmeasure.org",
          "code" : "[iU]"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationAdministration/mii-exa-test-data-patient-8-medadmin-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationAdministration/mii-exa-test-data-patient-8-medadmin-2",
    "resource" : {
      "resourceType" : "MedicationAdministration",
      "id" : "mii-exa-test-data-patient-8-medadmin-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationAdministration_mii-exa-test-data-patient-8-medadmin-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationAdministration mii-exa-test-data-patient-8-medadmin-2</b></p><a name=\"mii-exa-test-data-patient-8-medadmin-2\"> </a><a name=\"hcmii-exa-test-data-patient-8-medadmin-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration\">MII PR Medikation MedicationAdministration</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationAdministrations</code>/MA_0000018</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-admin-category inpatient}\">Inpatient</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-metoprolol.html\">Medication Metoprolol</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>effective</b>: 2023-11-12 09:00:00+0100</p><p><b>request</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-8-medrequest-2.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000021; status = active; intent = order; medication[x] = -&gt;Medication Metoprolol; authoredOn = 2023-11-12 08:30:00+0100</a></p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td><td><b>Route</b></td><td><b>Dose</b></td></tr><tr><td style=\"display: none\">*</td><td>Metoprolol 50mg oral</td><td><span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></td><td>50 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
        "value" : "MA_0000018"
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
          "code" : "inpatient",
          "display" : "Inpatient"
        }]
      },
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-metoprolol"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "effectiveDateTime" : "2023-11-12T09:00:00+01:00",
      "request" : {
        "reference" : "MedicationRequest/mii-exa-test-data-patient-8-medrequest-2"
      },
      "dosage" : {
        "text" : "Metoprolol 50mg oral",
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "dose" : {
          "value" : 50,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationAdministration/mii-exa-test-data-patient-8-medadmin-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationAdministration/mii-exa-test-data-patient-8-medadmin-3",
    "resource" : {
      "resourceType" : "MedicationAdministration",
      "id" : "mii-exa-test-data-patient-8-medadmin-3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationAdministration_mii-exa-test-data-patient-8-medadmin-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationAdministration mii-exa-test-data-patient-8-medadmin-3</b></p><a name=\"mii-exa-test-data-patient-8-medadmin-3\"> </a><a name=\"hcmii-exa-test-data-patient-8-medadmin-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration\">MII PR Medikation MedicationAdministration</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationAdministrations</code>/MA_0000021</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-admin-category inpatient}\">Inpatient</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-atorvastatin.html\">Medication Atorvastatin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-8-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --&gt; 2023-11-15</a></p><p><b>effective</b>: 2023-11-12 20:00:00+0100</p><p><b>request</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-8-medrequest-3.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000022; status = active; intent = order; medication[x] = -&gt;Medication Atorvastatin; authoredOn = 2023-11-12 09:00:00+0100</a></p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td><td><b>Site</b></td><td><b>Route</b></td><td><b>Dose</b></td></tr><tr><td style=\"display: none\">*</td><td>Atorvastatin 80mg oral zur Nacht</td><td><span title=\"Codes:{http://snomed.info/sct 74262004}\">Oral cavity structure (body structure)</span></td><td><span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></td><td>80 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
        "value" : "MA_0000021"
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
          "code" : "inpatient",
          "display" : "Inpatient"
        }]
      },
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-atorvastatin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
      },
      "effectiveDateTime" : "2023-11-12T20:00:00+01:00",
      "request" : {
        "reference" : "MedicationRequest/mii-exa-test-data-patient-8-medrequest-3"
      },
      "dosage" : {
        "text" : "Atorvastatin 80mg oral zur Nacht",
        "site" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "74262004",
            "display" : "Oral cavity structure (body structure)"
          }]
        },
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "dose" : {
          "value" : 80,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationAdministration/mii-exa-test-data-patient-8-medadmin-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/List/mii-exa-test-data-patient-8-list-stat-aufenthalt",
    "resource" : {
      "resourceType" : "List",
      "id" : "mii-exa-test-data-patient-8-list-stat-aufenthalt",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_mii-exa-test-data-patient-8-list-stat-aufenthalt\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List mii-exa-test-data-patient-8-list-stat-aufenthalt</b></p><a name=\"mii-exa-test-data-patient-8-list-stat-aufenthalt\"> </a><a name=\"hcmii-exa-test-data-patient-8-list-stat-aufenthalt\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste\">MII PR Medikation Medikationsliste</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2>Medikationsliste während stationärem Aufenthalt</h2><table class=\"clstu\"><tr><td>Mode: Working List </td><td>Status: Current </td><td>Code: Medication List </td></tr><tr><td>Subject: <a href=\"Patient-mii-exa-test-data-patient-8.html\">Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))</a></td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-8-medstatement-1.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000021; status = completed; category = stationärer Aufenthalt; medication[x] = -&gt;Medication Heparin; effective[x] = 2023-11-12 08:00:00+0100 --&gt; 2023-11-15 14:00:00+0100; dateAsserted = 2023-11-12</a></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-8-medstatement-2.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000022; status = completed; category = stationärer Aufenthalt; medication[x] = -&gt;Medication Metoprolol; effective[x] = 2023-11-12 08:30:00+0100 --&gt; 2023-11-15 14:00:00+0100; dateAsserted = 2023-11-12</a></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-8-medstatement-3.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000023; status = completed; category = stationärer Aufenthalt; medication[x] = -&gt;Medication Atorvastatin; effective[x] = 2023-11-12 09:00:00+0100 --&gt; 2023-11-15 14:00:00+0100; dateAsserted = 2023-11-12</a></td></tr></table></div>"
      },
      "status" : "current",
      "mode" : "working",
      "title" : "Medikationsliste während stationärem Aufenthalt",
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
          "code" : "medications"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E200"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-8"
      },
      "entry" : [{
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-8-medstatement-1"
        }
      },
      {
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-8-medstatement-2"
        }
      },
      {
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-8-medstatement-3"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "List/mii-exa-test-data-patient-8-list-stat-aufenthalt"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Medication/mii-exa-test-data-medication-heparin",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "mii-exa-test-data-medication-heparin",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_mii-exa-test-data-medication-heparin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Medication mii-exa-test-data-medication-heparin</b></p><a name=\"mii-exa-test-data-medication-heparin\"> </a><a name=\"hcmii-exa-test-data-medication-heparin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication\">MII PR Medikation Medication</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc B01AB01}\">Heparin</span></p><p><b>status</b>: Active</p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 11201000}\">Solution for injection</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/ask 12545}\">Heparin ((mit Angaben zur Herkunft))</span></td><td>25000 IU<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[iU] = '[iU]')</span>/5 ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeml = 'ml')</span></td></tr></table></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2024",
          "code" : "B01AB01",
          "display" : "Heparin"
        }]
      },
      "status" : "active",
      "form" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "11201000",
          "display" : "Solution for injection"
        }]
      },
      "ingredient" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/ask",
            "version" : "20260105",
            "code" : "12545"
          }]
        },
        "strength" : {
          "numerator" : {
            "value" : 25000,
            "unit" : "IU",
            "system" : "http://unitsofmeasure.org",
            "code" : "[iU]"
          },
          "denominator" : {
            "value" : 5,
            "unit" : "ml",
            "system" : "http://unitsofmeasure.org",
            "code" : "ml"
          }
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Medication/mii-exa-test-data-medication-heparin"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Medication/mii-exa-test-data-medication-metoprolol",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "mii-exa-test-data-medication-metoprolol",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_mii-exa-test-data-medication-metoprolol\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Medication mii-exa-test-data-medication-metoprolol</b></p><a name=\"mii-exa-test-data-medication-metoprolol\"> </a><a name=\"hcmii-exa-test-data-medication-metoprolol\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication\">MII PR Medikation Medication</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc C07AB02}\">Metoprolol</span></p><p><b>status</b>: Active</p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 10221000}\">Film-coated tablet</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/ask 11849}\">Metoprololtartrat (Ph.Eur.)</span></td><td>50 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></td></tr></table></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2024",
          "code" : "C07AB02",
          "display" : "Metoprolol"
        }]
      },
      "status" : "active",
      "form" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "10221000",
          "display" : "Film-coated tablet"
        }]
      },
      "ingredient" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/ask",
            "version" : "20260105",
            "code" : "11849"
          }]
        },
        "strength" : {
          "numerator" : {
            "value" : 50,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "denominator" : {
            "value" : 1,
            "unit" : "1",
            "system" : "http://unitsofmeasure.org",
            "code" : "1"
          }
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Medication/mii-exa-test-data-medication-metoprolol"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Medication/mii-exa-test-data-medication-atorvastatin",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "mii-exa-test-data-medication-atorvastatin",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_mii-exa-test-data-medication-atorvastatin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Medication mii-exa-test-data-medication-atorvastatin</b></p><a name=\"mii-exa-test-data-medication-atorvastatin\"> </a><a name=\"hcmii-exa-test-data-medication-atorvastatin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication\">MII PR Medikation Medication</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc C10AA05}\">Atorvastatin</span></p><p><b>status</b>: Active</p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 10221000}\">Film-coated tablet</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/ask 28860}\">Atorvastatin-Calcium-Trihydrat (Ph.Eur.)</span></td><td>40 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></td></tr></table></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2024",
          "code" : "C10AA05",
          "display" : "Atorvastatin"
        }]
      },
      "status" : "active",
      "form" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "10221000",
          "display" : "Film-coated tablet"
        }]
      },
      "ingredient" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/ask",
            "version" : "20260105",
            "code" : "28860"
          }]
        },
        "strength" : {
          "numerator" : {
            "value" : 40,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "denominator" : {
            "value" : 1,
            "unit" : "1",
            "system" : "http://unitsofmeasure.org",
            "code" : "1"
          }
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Medication/mii-exa-test-data-medication-atorvastatin"
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
    "fullUrl" : "https://www.medizininformatik-initiative.de/Organization/mii-exa-test-data-organization-biobank-charite",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "mii-exa-test-data-organization-biobank-charite",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_mii-exa-test-data-organization-biobank-charite\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization mii-exa-test-data-organization-biobank-charite</b></p><a name=\"mii-exa-test-data-organization-biobank-charite\"> </a><a name=\"hcmii-exa-test-data-organization-biobank-charite\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization\">MII PR Biobank Organization Sammlung Biobank</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Description extension</b>: Zentrale Biobank der Charité</p><p><b>identifier</b>: <code>http://www.bbmri-eric.eu/</code>/de-12345</p><p><b>name</b>: Zentrale Biobank der Charité</p><p><b>alias</b>: ZeBanC</p><p><b>partOf</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Organization Charité – Universitätsmedizin Berlin</a></p><h3>Contacts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Purpose</b></td><td><b>Name</b></td><td><b>Telecom</b></td><td><b>Address</b></td></tr><tr><td style=\"display: none\">*</td><td/><td><span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/ContactType RESEARCH}\">Research</span></td><td>Koch Robert </td><td><a href=\"mailto:robert.koch@charite.de\">robert.koch@charite.de</a></td><td>Südring 7 Berlin 13353 </td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-organization-description-extension",
        "valueString" : "Zentrale Biobank der Charité"
      }],
      "identifier" : [{
        "system" : "http://www.bbmri-eric.eu/",
        "value" : "de-12345"
      }],
      "name" : "Zentrale Biobank der Charité",
      "alias" : ["ZeBanC"],
      "partOf" : {
        "reference" : "Organization/mii-exa-test-data-organization-charite"
      },
      "contact" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/KontaktRolle",
          "valueString" : "Direktor"
        }],
        "purpose" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/ContactType",
            "code" : "RESEARCH"
          }]
        },
        "name" : {
          "family" : "Robert",
          "given" : ["Koch"],
          "prefix" : ["Prof."]
        },
        "telecom" : [{
          "system" : "email",
          "value" : "robert.koch@charite.de"
        }],
        "address" : {
          "line" : ["Südring 7"],
          "city" : "Berlin",
          "postalCode" : "13353"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Organization/mii-exa-test-data-organization-biobank-charite"
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
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-device-roche-cobas",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-device-roche-cobas",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-device-roche-cobas\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-device-roche-cobas</b></p><a name=\"mii-exa-test-data-device-roche-cobas\"> </a><a name=\"hcmii-exa-test-data-device-roche-cobas\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/Laboratory-device-identifier</code>/RocheCobas</p><p><b>status</b>: Active</p><p><b>manufacturer</b>: Roche</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>cobas</td><td>Manufacturer name</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Laboratory-device-identifier",
        "value" : "RocheCobas"
      }],
      "status" : "active",
      "manufacturer" : "Roche",
      "deviceName" : [{
        "name" : "cobas",
        "type" : "manufacturer-name"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-device-roche-cobas"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-device-roche-cobas-c303",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-device-roche-cobas-c303",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-device-roche-cobas-c303\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-device-roche-cobas-c303</b></p><a name=\"mii-exa-test-data-device-roche-cobas-c303\"> </a><a name=\"hcmii-exa-test-data-device-roche-cobas-c303\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/Laboratory-device-identifier</code>/RocheCobasC303</p><p><b>status</b>: Active</p><p><b>manufacturer</b>: Roche</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>cobas</td><td>Manufacturer name</td></tr></table><p><b>modelNumber</b>: c 303</p><blockquote><p><b>property</b></p><p><b>type</b>: <span title=\"Codes:{urn:iso:std:iso:11073:10101 69684}\">MDC_DEV_ANALY_BLD_CHEM_MULTI_PARAM</span></p></blockquote><blockquote><p><b>property</b></p><p><b>type</b>: <span title=\"Codes:{urn:iso:std:iso:11073:10101 69652}\">MDC_DEV_ANALY_URINE_CHEM</span></p></blockquote><blockquote><p><b>property</b></p><p><b>type</b>: <span title=\"Codes:{urn:iso:std:iso:11073:10101 69844}\">MDC_DEV_METER_BLD_CHEM</span></p></blockquote><p><b>parent</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobas; status = active; manufacturer = Roche</a></p></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Laboratory-device-identifier",
        "value" : "RocheCobasC303"
      }],
      "status" : "active",
      "manufacturer" : "Roche",
      "deviceName" : [{
        "name" : "cobas",
        "type" : "manufacturer-name"
      }],
      "modelNumber" : "c 303",
      "property" : [{
        "type" : {
          "coding" : [{
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "69684"
          }]
        }
      },
      {
        "type" : {
          "coding" : [{
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "69652"
          }]
        }
      },
      {
        "type" : {
          "coding" : [{
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "69844"
          }]
        }
      }],
      "parent" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-device-roche-cobas-c303"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-device-roche-cobas-e402",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-device-roche-cobas-e402",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-device-roche-cobas-e402\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-device-roche-cobas-e402</b></p><a name=\"mii-exa-test-data-device-roche-cobas-e402\"> </a><a name=\"hcmii-exa-test-data-device-roche-cobas-e402\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/Laboratory-device-identifier</code>/RocheCobasE402</p><p><b>status</b>: Active</p><p><b>manufacturer</b>: Roche</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>cobas</td><td>Manufacturer name</td></tr></table><p><b>modelNumber</b>: e 402</p><h3>Properties</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{urn:iso:std:iso:11073:10101 160220}\">MDC_CONC_HBA1C</span></td></tr></table><p><b>parent</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobas; status = active; manufacturer = Roche</a></p></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Laboratory-device-identifier",
        "value" : "RocheCobasE402"
      }],
      "status" : "active",
      "manufacturer" : "Roche",
      "deviceName" : [{
        "name" : "cobas",
        "type" : "manufacturer-name"
      }],
      "modelNumber" : "e 402",
      "property" : [{
        "type" : {
          "coding" : [{
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "160220"
          }]
        }
      }],
      "parent" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-device-roche-cobas-e402"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/DeviceMetric/mii-exa-test-data-devicemetric-roche-cobas-c303-1",
    "resource" : {
      "resourceType" : "DeviceMetric",
      "id" : "mii-exa-test-data-devicemetric-roche-cobas-c303-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DeviceMetric_mii-exa-test-data-devicemetric-roche-cobas-c303-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DeviceMetric mii-exa-test-data-devicemetric-roche-cobas-c303-1</b></p><a name=\"mii-exa-test-data-devicemetric-roche-cobas-c303-1\"> </a><a name=\"hcmii-exa-test-data-devicemetric-roche-cobas-c303-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/Laboratory-device-identifier</code>/RocheCobasC303-160192</p><p><b>type</b>: <span title=\"Codes:{urn:iso:std:iso:11073:10101 160192}\">MDC_CONC_GLU_VENOUS_WHOLEBLOOD</span></p><p><b>source</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas-c303.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303</a></p><p><b>category</b>: Measurement</p></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Laboratory-device-identifier",
        "value" : "RocheCobasC303-160192"
      }],
      "type" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:11073:10101",
          "code" : "160192"
        }]
      },
      "source" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303"
      },
      "category" : "measurement"
    },
    "request" : {
      "method" : "PUT",
      "url" : "DeviceMetric/mii-exa-test-data-devicemetric-roche-cobas-c303-1"
    }
  }]
}

```
