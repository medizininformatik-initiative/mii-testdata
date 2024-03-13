RuleSet: AddConsent(patient, dateTime, organization)
* status = #active
* scope = $consentscope#research
* category[loinc] = $loinc#57016-8
* category[mii] = $mii-cs-consent-consent_category#2.16.840.1.113883.3.1937.777.24.2.184
* patient = Reference({patient})
* dateTime = "{dateTime}"
* organization = Reference({organization})
* policy.uri = "urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791"
* provision.type = #deny

