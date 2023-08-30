# mii-testdata

This repository collects and redirects to appropriate repositories or software which supports the generation of MII compliant testdata
or non MII compliant testdata for performance testing.


## Types of testdata

We generally distinguish between the following types of testdata according to their intended use:

1. Peformance testdata
2. Interoperability testdata (integration tests)
3. Use Case Specific testdata


### Performance testdata

#### Overview

Performance testdata is necessary to analyse how fast a specific application can process a query.
For this reason the focus here is on having real world like amounts of data and ratios of resource occurence, which are similar to what can be expected in a later production environment.

It further does not necessarily have to have clinical significance as long as it allows one to create a query complexity similar to what could be expected in production.

One example of this is the querying of a FHIR reference using forward chaining.
One could reasonably estimate the performance of searching through a number of resources in production using forward chaining even if the terminology used in the testdata
to specify a resource is not the same in production.

For performance testdata one could further distinguish between:
1. Real world performance estimate:  Trying to estimate the impact on a production application
2. Use case specific performance test: One is interested in the specific performance of a particular use case to inform modeling decisions, for example the performance impact of having one resource reference 5 other resources rather than having the attributes directly inside the resource itself.


#### Solutions

1. Synthea Testdata

For a real world performance estimate We currently suggest the use of the synthea testdata generator and post processeor in the `synthea` folder of this repository.


2. Blueprint random generation

TODO - add repositories to efficiently generate specific (non-clinically) relevant testdata


### Interoperability testdata

#### Overview

The main of interoperability testdata is to generate testdata, which includes all relevant attributes specified in a FHIR profile to test implementations against a specified resource.

#### Solutions

1. FHIR Profile based random generation

TODO

2. Excel2Fhir

TODO

### Use Case Specific testdata

#### Overview

This type of testdata is the most complex testdata to generate and depending on the use case it might have to be generated manually.

#### Solutions

There is currently no general solution in the MII to generate use case specific testdata.

Possible solutions include the use of excel2fhir and fill out input data for a particual use case.