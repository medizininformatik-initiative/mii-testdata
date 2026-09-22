Instance: MyHospital
InstanceOf: Organization
Usage: #example
* name = "Example General Hospital"
* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[0].coding[0].code = #prov
* type[0].coding[0].display = "Healthcare Provider"
* address[0].line[0] = "1234 Health St"
* address[0].city = "Medicity"
* address[0].state = "CareState"
* address[0].postalCode = "12345"
* address[0].country = "DE"

Instance: MyCoverage
InstanceOf: Coverage
Usage: #example
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding[0].code = #EHCPOL
* type.coding[0].display = "extended healthcare"
* beneficiary = Reference(Patient/PatientKimMusterperson)
* payor[0] = Reference(Organization/MyInsurer)
* period.start = "2023-01-01"
* period.end = "2025-12-31"

Instance: MyInsurer
InstanceOf: Organization
Usage: #example
* name = "Example Health Insurance Co."
* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[0].coding[0].code = #ins
* type[0].coding[0].display = "Insurance Company"
* address[0].line[0] = "789 Insurance Blvd"
* address[0].city = "Policytown"
* address[0].state = "InsureState"
* address[0].postalCode = "98765"
* address[0].country = "DE"
