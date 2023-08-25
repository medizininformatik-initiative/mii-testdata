# mii-testdata: excel2fhir

Based on the Synthea Patient Generator https://github.com/synthetichealth/synthea, this repository packages a new synthea version and removes all resources, which are not currently used by the medical informatics initiative.

The synthea dataset is not compatible with MII resources, which means that it cannot be used to test the robustness or compatibility of profile specific intricacies or
search parameters specific to the MII dataset and profiling.

However the data generated covers a wide variety of patient data in ratios which can be expected in the real world, which makes this dataset useful for performance tests.


## How to use

### Generate data

