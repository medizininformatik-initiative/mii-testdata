Instance: mii-exa-onko-befund-1
InstanceOf: mii-pr-onko-befund
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund)
* status = #final

/*
java.lang.NullPointerException: Cannot invoke "org.hl7.fhir.r5.renderers.utils.ResourceWrapper.fhirType()" because the return value of "org.hl7.fhir.r5.renderers.utils.Resolver$ResourceWithReference.getResource()" is null
    at org.hl7.fhir.r5.renderers.DiagnosticReportRenderer.populateSubjectSummary(DiagnosticReportRenderer.java:153)
*/
//* subject = Reference(Patient/example)
* subject = Reference(PatientKimMusterperson)


* basedOn = Reference(mii-exa-onko-tumorkonferenz-01)
* specimen = Reference(mii-exa-onko-specimen-1)
* code.coding[pathology-report] = http://loinc.org#22034-3 

* conclusion = "Mäßig differenziertes invasiv duktales Karzinom (8500/3), Grading G2 an der rechten Mamma, ..."
