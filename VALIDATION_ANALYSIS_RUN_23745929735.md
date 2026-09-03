# CI Validation Failed - Run 23745929735

## Java FHIR Validation Job: FAILED

**Job ID**: 69174756741
**Run ID**: 23745929735
**Repository**: medizininformatik-initiative/mii-testdata
**Status**: COMPLETED (FAILURE)

---

## Error Summary: 414 Errors Total

### Error Distribution by Type

| Error Type | Count | Priority |
|-----------|-------|----------|
| **structure** | 97 | HIGH |
| **exception** | 88 | HIGH |
| **code-invalid** | 74 | MEDIUM |
| **invalid** | 70 | MEDIUM |
| **processing** | 40 | MEDIUM |
| **value** | 34 | MEDIUM |
| **not-found** | 10 | LOW |
| **business-rule** | 1 | LOW |

---

## Category 1: Structure Errors (97 errors)

**Issue**: References to resources don't match expected profile constraints. Validator cannot find profile matches for referenced resources.

**Common Patterns**:
- `Reference_REF_CantMatchChoice`: Resource profile doesn't match any of the allowed choices in the reference
- `Extension_EXT_Unknown_NotHere`: Extension not found or not allowed on this element
- `SLICING_CANNOT_BE_EVALUATED`: Discriminator for slices cannot be matched (missing fixed values, bindings)

**Affected Files** (top resources):
- Bundle files (bildgebung, dokument, molgen, mtb bundles)
- DocumentReference, DiagnosticReport, CarePlan, Observation, Task resources

**Examples**:
- DiagnosticReport references ServiceRequest/mii-exa-test-data-anforderung but cannot match profile `mii-pr-bildgebung-anforderung-bildgebung`
- DocumentReference extension `mii-ex-dokument-nlp-processing-status` not found
- Observation slicing discriminators lack required fixed values/bindings

**Fix**:
1. Verify referenced resources exist in bundles with correct profiles
2. Check extension definitions are in IG dependencies
3. Add fixed values or bindings to slice discriminators in FSH profiles

---

## Category 2: Exception Errors (88 errors)

**Issue**: FHIR validator encounters unhandled exceptions during validation, typically during value set lookups or code system filters.

**Common Pattern**:
- `Error from http://127.0.0.1:8090/fhir: Error: There is no declared filter called LIST on code system http://loinc.org`

**Root Cause**: Validator uses LOINC filter "LIST" which is not declared in the code system definition. This appears to be a validator/terminology server configuration issue.

**Affected Files**:
- Predominantly in Bundle-mii-exa-test-data-bundle-molgen-1.json (multiple Observation resources)
- Observation components with CodeableConcept values
- Method discriminators in Observation/Task resources

**Examples**:
- `Bundle.entry[7].resource.value.ofType(CodeableConcept)` - LIST filter error
- `Bundle.entry[7].resource.method` - LIST filter error
- `Bundle.entry[7].resource.component[10].value.ofType(CodeableConcept)` - LIST filter error

**Fix**:
1. Check if value set definitions use unsupported LOINC filters
2. May require validator/HAPI FHIR update or value set redesign
3. Consider using simpler LOINC filter operations or explicit code lists

---

## Category 3: Code-Invalid Errors (74 errors)

**Issue**: Codes in the test data are not found in the assigned value sets.

**Common Pattern**: `Terminology_TX_Confirm_4a` - Code not found in value set during validation

**Affected Files**:
- Bundle-mii-exa-test-data-bundle-icu-1.json (61 errors - LARGEST)
- Bundle-mii-exa-test-data-bundle-molgen-1.json (39 errors)
- Bundle-mii-exa-test-data-bundle-mtb-1.json (35 errors)
- Bundle-mii-exa-test-data-bundle-onkologie-1.json (20 errors)

**Examples**:
1. **MedDRA codes in AdverseEvent**:
   - Code `https://www.meddra.org#10016256` not in `mii-vs-onko-nebenwirkung-art`
   - Code `https://www.meddra.org#10032759` not in `mii-vs-onko-nebenwirkung-art`

2. **SNOMED CT codes**:
   - Code `http://snomed.info/sct#268547008` not in `mii-vs-bildgebung-findings-sct`
   - Code `http://snomed.info/sct#12747003` not in `mii-vs-bildgebung-findings-sct`

3. **ICU Bundle**: 61 code-invalid errors (largest concentration)
   - Multiple Observation coding issues
   - SNOMED codes not in expected value sets

**Fix**:
1. Verify codes exist in corresponding value set definitions
2. Check code system versions match expected versions
3. Update test data codes to use codes that ARE in the value sets
4. Review if value sets need expansion or if test data codes are incorrect

---

## Category 4: Invalid Errors (70 errors)

**Issue**: Display names don't match expected terminology standards or wrong display values for codes.

**Common Pattern**: `Wrong Display Name` for LOINC/SNOMED codes

**Affected Codes**:
- LOINC display mismatches
- Language-specific display issues
- Example: `History of family member diseases Narrative` should be `History of family member diseases note` (en)

**Fix**:
1. Use correct/official display names from LOINC/SNOMED
2. Ensure language tags match display language
3. Update display values to match terminology standards

---

## Category 5: Processing Errors (40 errors)

**Issue**: Validation framework encounters issues during processing:
- Slicing cannot be evaluated due to missing discriminator constraints
- Missing filter declarations
- Incomplete profile constraints

**Examples**:
- `SLICING_CANNOT_BE_EVALUATED`: Discriminator `[code]` doesn't have fixed value, binding, or existence assertions
- `Unknown filter`: Code system doesn't have declared filter

**Fix**:
1. Add discriminator constraints to slice definitions
2. Ensure profiles have complete cardinality/binding specifications
3. Use standard filters supported by validator

---

## Category 6: Value Errors (34 errors)

**Issue**: Data values violate profile constraints or type requirements.

**Fix**: Review profile definitions for value constraints and adjust test data accordingly.

---

## Category 7: Not-Found Errors (10 errors)

**Issue**: Referenced elements or slices cannot be found.

**Fix**: Verify reference paths exist in target resources.

---

## Category 8: Business Rule Errors (1 error)

**Issue**: Single business rule violation (likely XOR or cardinality constraint).

**Fix**: Review specific error and adjust data accordingly.

---

## Top Affected Resources

| Resource | Error Count | Primary Issue |
|----------|------------|--------------|
| Bundle-mii-exa-test-data-bundle-icu-1.json | 61 | code-invalid (SNOMED codes) |
| Bundle-mii-exa-test-data-bundle-molgen-1.json | 39 | exception (LIST filter) |
| Bundle-mii-exa-test-data-bundle-mtb-1.json | 35 | code-invalid + structure |
| Bundle-mii-exa-test-data-bundle-onkologie-1.json | 20 | code-invalid (MedDRA) |
| Bundle-mii-exa-test-data-bundle-pat-1.json | 14 | code-invalid |
| DocumentReference (multiple) | 13+ | structure (extensions) |
| Observation (various) | 40+ | code-invalid + exception |

---

## Priority Fixes for Content Correction Agent

### CRITICAL (Blocks validation):

1. **ICU Bundle Code-Invalid Errors (61 errors)**
   - Review SNOMED codes in all Observation resources
   - Verify codes exist in their assigned value sets
   - File: `kds-testdata/fsh-generated/resources/Bundle-mii-exa-test-data-bundle-icu-1.json`
   - Action: Validate or replace SNOMED codes; ensure value set expansion includes the codes

2. **MolGen Bundle Exception Errors (88 total, 88 structural)**
   - LOINC LIST filter not supported by validator
   - File: `kds-testdata/fsh-generated/resources/Bundle-mii-exa-test-data-bundle-molgen-1.json`
   - Action: Review value sets using LOINC filters; consider redesign or validator upgrade

3. **DocumentReference Extension Errors**
   - Extension `mii-ex-dokument-nlp-processing-status` not found
   - Files: Bundle-dokument-1.json and individual DocumentReference files
   - Action: Check extension definition is in IG dependencies and properly referenced

### HIGH (Affects multiple resources):

4. **MTB Bundle Code-Invalid + Structure (35 errors)**
   - SNOMED codes not in value sets
   - Profile matching failures for references
   - File: `kds-testdata/fsh-generated/resources/Bundle-mii-exa-test-data-bundle-mtb-1.json`
   - Action: Validate code membership; ensure references match profile constraints

5. **MedDRA Codes in AdverseEvent (2 errors)**
   - Files: AdverseEvent-mii-exa-test-data-onko-nebenwirkung-1.json, ...-2.json
   - Codes: 10016256, 10032759
   - Action: Verify codes in value set or use standard SNOMED/CTCAE codes

6. **LOINC Display Name Mismatches**
   - Update display values to official LOINC display names
   - Ensure language tags are correct
   - Action: Cross-reference LOINC 2.80 for correct displays

### MEDIUM (Data quality):

7. **Observation Slicing Issues**
   - Add fixed values or bindings to discriminator constraints
   - Add cardinality specifications
   - Action: Update FSH profile definitions with complete constraints

8. **Reference Profile Matching**
   - DiagnosticReport.basedOn cannot match ServiceRequest profile
   - DiagnosticReport.imagingStudy cannot match ImagingStudy profile
   - Action: Ensure referenced resources in bundles conform to expected profiles

---

## Technical Notes

- **Validator**: HAPI FHIR (Java-based)
- **Validation Packages**: MII KDS profiles (2026.0.0 versions)
- **Terminology Server**: Local (http://127.0.0.1:8090/fhir)
- **FHIR Version**: R4/R5 compatibility issues detected (some R4 resources cannot convert to R5)

---

## Next Steps

1. Prioritize fixing ICU bundle code-invalid errors (largest concentration)
2. Investigate MolGen bundle LIST filter exceptions (validator compatibility)
3. Resolve DocumentReference extension references
4. Validate SNOMED/MedDRA code membership in value sets
5. Update LOINC display names to official standards
6. Add complete discriminator constraints to profile definitions

