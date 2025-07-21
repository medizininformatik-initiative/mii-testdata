// Todesursache Patient-1
Instance: mii-exa-test-data-patient-1-todesursache-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache
Usage: #example
Description: "Observation: Todesursache für Patient-1"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache|2024.0.0"
* insert AddTodesursache(A15.0, 2019, mii-exa-test-data-patient-1, 2024-02-22, Tuberkulose einschließlich ihrer Folgezustände)

// Todesursache Patient-2
Instance: mii-exa-test-data-patient-2-todesursache-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache
Usage: #example
Description: "Observation: Todesursache für Patient-2"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache|2024.0.0"
* insert AddTodesursache(C34.8, 2019, mii-exa-test-data-patient-2, 2024-03-13, Bösartige Neubildung: Bronchus und Lunge mehrere Teilbereiche überlappend)

// Todesursache Patient-8
Instance: mii-exa-test-data-patient-8-todesursache-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache
Usage: #example
Description: "Observation: Todesursache für Patient-8"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache|2024.0.0"
* insert AddTodesursache(I21.9, 2019, mii-exa-test-data-patient-8, 2023-11-15, Akuter Herzinfarkt)