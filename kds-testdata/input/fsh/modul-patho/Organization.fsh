// ============================================================================
// MII Patho Test Data - Organization und Practitioner
// ============================================================================

Instance: mii-exa-test-data-patho-organization-1
InstanceOf: Organization
Usage: #example
Description: "Pathologisches Institut (Testdaten)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier.value = "DIZ-CHA"
* name = "Institut für Pathologie, Charité - Universitätsmedizin Berlin"
* active = true

Instance: mii-exa-test-data-patho-practitioner-1
InstanceOf: Practitioner
Usage: #example
Description: "Pathologe (Testdaten)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* identifier.value = "1-patho-test-0001"
* name.family = "Schnittbild"
* name.given = "Paula"
* name.prefix = "Dr. med."

Instance: mii-exa-test-data-patho-practitioner-2
InstanceOf: Practitioner
Usage: #example
Description: "Urologe / Einsender (Testdaten)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* identifier.value = "1-uro-test-0002"
* name.family = "Stanze"
* name.given = "Ulrich"
* name.prefix = "Dr. med."
