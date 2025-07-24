Instance: mii-exa-test-data-practitioner-physician-1
InstanceOf: Practitioner
Usage: #example
Description: "Practitioner: Dr. Rahel Hirsch"
* insert TestDataLabel
* active = true
* name[0].family = "Hirsch"
* name[0].given[0] = "Rahel"

Instance: mii-exa-test-data-practitioner-physician-2
InstanceOf: Practitioner
Usage: #example
Description: "Practitioner: Dr. Robert Koch"
* insert TestDataLabel
* active = true
* name.use = #official
* name.family = "Koch"
* name.given = "Robert"
* name.prefix = "Dr."