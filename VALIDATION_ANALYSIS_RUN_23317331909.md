# CI Validation Analysis - Run 23317331909

**Run ID**: 23317331909  
**Commit**: 4b62695b (encounter fix)  
**Branch**: feature/add-icu-testdata  
**Date**: 2026-03-19T21:18:57Z

---

## Executive Summary

**Status**: IMPROVED - Encounter fix successfully eliminated obs-10 errors

### Error Count Progress
- **Previous Run**: 576 errors
- **Current Run**: 494 errors
- **Improvement**: 82 errors fixed (14.2% reduction)
- **obs-10 Errors**: 0 (TARGET MET! Down from ~82)

### Overall Statistics
- **Total Issues**: 9,553
  - Errors: 494 (5.2%)
  - Warnings: 4,079 (42.7%)
  - Information: 4,980 (52.1%)

---

## Error Breakdown by Category

### 1. Terminology Errors (205 errors - 41.5%)

**LOINC Code Errors**: 109 errors
- Wrong display names for LOINC codes (most common)
- Examples:
  - `1015-3`: "History of family member diseases Narrative" (wrong display)
  - Multiple LOINC codes with mismatched display names
- **Action**: Verify LOINC display names against LOINC 2.80 reference

**SNOMED CT Code Errors**: 52 errors
- Slicing issues and code matching problems
- Missing SNOMED codings in ObservationDefinitions
- **Action**: Ensure SNOMED codings on correct profile elements

**MedDRA Code Errors**: 44 errors
- Code not found in MII VS MedDRA ValueSet
- Examples: `10016256`, `10032759` (AdverseEvent nebenwirkung)
- **Action**: Verify MedDRA codes exist in terminology server or add to value set

---

### 2. Slicing/Structure Errors (41 errors - 8.3%)

**Slicing Cannot Be Evaluated**: 41 errors
- `Slicing cannot be evaluated: Could not match discriminator (code)`
- Occurs in Observation.code.coding slices
- Primarily ICU-related Observations
- **Action**: Ensure all discriminator values present (LOINC + SNOMED for ICU Observations)

---

### 3. Profile Matching Errors (82 errors - 16.6%)

**Unable to Find Profile Match**:
- **Procedure**: 25 errors (ICU-related extraction)
- **Medication**: 12 errors
- **MedicationStatement**: 4 errors
- **Task**: 8 errors
- **ServiceRequest**: 2 errors
- **DiagnosticReport**: 6 errors
- **ImagingStudy**: 2 errors
- **ClinicalImpression**: 2 errors

**Cause**: Missing profile references or incorrect resource IDs  
**Action**: Add profile references or ensure resources match at least one allowed profile

---

### 4. Code System/Value Set Errors (51 errors - 10.3%)

**Code System Issues**:
- `26668` in ISO 11073-10101 (Device metric codes) - 2 errors
- Unknown OPS codes (`5-870.0`, RadLex codes)
- Wrong display names for various code systems

**ValueSet Issues**:
- MIME type codes not found in expected ValueSets
- IHE ValueSet issues with display names
- Onkologie radiation therapy (Strahlentherapie) codes - 4 errors

---

## ICU-Specific Error Analysis

**Total ICU Errors**: 95 errors (19.2% of all errors)

### Top ICU Issues

1. **Slicing Errors** (35 errors)
   - Missing SNOMED codings on Observation.code.coding:sct
   - Missing LOINC codings on Observation.code.coding:loinc
   - Element doesn't match profile slice definitions
   - **Cause**: ICU Observations require dual coding (LOINC + SNOMED)

2. **Procedure Profile Matching** (12 errors)
   - ECMO/PEEP/extraction procedures not matching any profile
   - **Files**: mii-exa-test-data-patient-1-icu-ect-*
   - **Action**: Ensure Procedure profiles include ICU-specific codes

3. **Fixed Value Mismatches** (22 errors)
   - `exam` vs `therapy` in category
   - `exam` vs `vital-sign` in category
   - Unit mismatches: `mmHg` vs `millimeter Mercury column`
   - **Cause**: Profile changes or incorrect testdata values

4. **Code Validation Issues** (16 errors)
   - SNOMED codes not in dialysis/renal therapy ValueSet
   - RadLex codes missing
   - LOINC codes missing from ICU-specific ValueSets

---

## Priority Fixes for Content Correction

### High Priority (Impact: 109 errors)

1. **LOINC Display Names** (109 errors)
   - Update all LOINC codes to use correct display names from LOINC 2.80
   - Particularly affects Observation-based resources
   - Verify: `1015-3`, and all other LOINC references

2. **ICU Observation Coding** (35 errors)
   - Add missing SNOMED codings to all ICU Observations
   - Ensure dual LOINC + SNOMED coding pattern
   - Files to review: All `patient-1-icu-*` Observation resources

3. **MedDRA Terminology** (44 errors)
   - Verify all MedDRA codes in AdverseEvent resources
   - Update ValueSet or confirm codes exist in terminology server
   - Focus on: `10016256`, `10032759`

### Medium Priority (Impact: 82 errors)

4. **Profile Matching** (82 errors)
   - Add profile declarations to:
     - Procedure resources (25 errors, mostly ICU)
     - Medication resources (12 errors)
     - Task resources (8 errors)
     - Others as noted

5. **ICU-Specific Procedure Profiles** (12 errors)
   - Ensure Procedure profiles support:
     - ECMO procedures
     - Ventilator management
     - Extraction techniques
   - Verify codes: SNOMED, OPS

### Lower Priority (Impact: 51 errors)

6. **Code System Alignment** (51 errors)
   - Fix ISO 11073 codes (device metrics)
   - Update OPS codes
   - Verify RadLex codes
   - Align MIME types with ValueSet

---

## Comparison to Previous Run

### What Improved
- **obs-10 errors**: 82 → 0 (FIXED by encounter fix)
- Overall error reduction: 576 → 494

### What Remains
- LOINC display name issues remain stable (109 errors)
- ICU slicing issues persist (35 errors)
- Profile matching still problematic (82 errors)
- Terminology coverage gaps unchanged

### Next Steps After Encounter Fix
1. Address LOINC display names (quick win: 109 errors)
2. Complete ICU Observation dual coding (medium effort: 35 errors)
3. Add profile declarations systematically (medium effort: 82 errors)

---

## Technical Notes

- Validation run: Java FHIR Validator 6.8.1
- FHIR Version: 4.0.1
- Bundle size: 612 OperationOutcome resources
- Terminology server: ontoserver.mii-termserv.de
- Language strategy: English primary, German via extensions (validates correctly)

---

## Recommendations

1. **Immediate**: Accept the obs-10 error elimination as success
2. **Next Sprint**: Focus on LOINC display names (highest impact, relatively straightforward)
3. **Medium Term**: Systematize ICU Observation coding (dual LOINC+SNOMED pattern)
4. **Ongoing**: Establish profile matching requirements for all new resources
