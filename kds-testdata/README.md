# kds-testdata

The project generates MII core data set (CDS) compliant data in order to test the functionality of the CDS modules.

## Purpose, Requirements, and Contributing

To enable reliable development and testing of the Medical Informatics Initiative's technical infrastructure, it is essential that the core dataset modules provide suitable test data (instances).

### Test Data Requirements

Test data consists of two complementary layers with different goals. Contributions SHOULD state which layer they address.

#### Patient bundles — clinical layer

The numbered patient bundles (`mii-exa-test-data-bundle-pat-*`) represent clinically plausible, longitudinal patient stories. Their purpose is to test the interplay of the CDS modules, not the completeness of any single profile.

- **Clinical Plausibility**: The resources of one patient MUST form a coherent clinical story — a consistent timeline, and diagnoses, procedures, medications and observations that plausibly belong together.
- **Referential Integrity**: References MUST resolve and the target resource of a reference MUST be present in the test data.
- **Bundle Structure**: One Bundle resource (type=transaction, request.method=POST) per patient. Instances CAN be added to an existing patient bundle if they fit its clinical story.
- Profile coverage and Must-Support completeness are explicitly NOT goals of this layer — do not add clinically implausible instances to a patient bundle just to cover a profile.

#### Module bundles — technical layer

Modules provide technical test instances whose purpose is measurable coverage of their published profiles. Clinical plausibility is secondary here; combinations that would never occur in one real patient are acceptable (e.g. instances for all ICU Observation profiles).

- **Profile Coverage**: For each published profile of the module, at least one conforming instance MUST be present.
- **Must Support Coverage**: Every element marked with Must Support (MS) MUST be correctly populated in at least one instance. Coverage — the share of a module's MS elements populated by its test data — is the completeness metric of this layer and SHOULD be reported per module.
- **Referential Integrity**: References MUST resolve within the module's test data.
- **Bundle Structure**: A module CAN provide its own complete bundle(s), one per synthetic patient.

#### Common requirements

- **Repository Structure**: Test data is provided via this GitHub repository under the path `kds-testdata`.
- **Data Formats**: Test data CAN be created using:
  - FHIR Shorthand (FSH) in `kds-testdata/input/fsh` (recommended)
  - FHIR-JSON in `kds-testdata/input/predefined-resources` (optional)
  - GitHub repository of the CDS module as one bundle (type=transaction and request.method=POST) per patient (optional)

### How to Contribute

1. Create a branch or fork the repository and create a feature branch from `main`
2. Add test data following the requirements above
3. Ensure compliance with all requirements, especially referential integrity
4. Test locally by running `sushi build .` in the `kds-testdata` directory
5. Submit a pull request with your changes
6. Address review feedback if any validation issues or improvements are suggested

## How to use

Prerequisite for running this project is the installation of SUSHI: https://fshschool.org/docs/sushi/installation/

If SUSHI is installed, navigate to `kds-testdata` folder and run `sushi build .`
Further reading on running SUSHI: https://fshschool.org/docs/sushi/running/

The FHIR data is generated inside `/kds-testdata/fsh-generated` folder. There are transaction `Bundle` resources that contain the collection of resources.

## CI/CD and FHIR Package Dependencies

This repository includes automated CI/CD workflows defined in `.github/workflows/ci.yml` that:
- Build the test data using SUSHI
- Run FHIR validation
- Create releases with generated artifacts

### FHIR Validation

The CI pipeline automatically runs comprehensive FHIR validation using:
- **FHIR Java Validator**: Validates all generated resources against their respective profiles
- **Terminology Validation**: Performed via the SU-TermServ Ontoserver

Validation runs automatically on:
- Pull requests to the main branch
- Tagged releases (v*.*.*) 
- Manual workflow dispatch with validation enabled
- Commits containing `[validate]` in the commit message

### Adding New Module Dependencies

When adding a new module dependency to `sushi-config.yaml`, note that the FHIR package cache is built via https://github.com/medizininformatik-initiative/fhir-package-store. Any new FHIR packages with snapshots included must be added to that repository first to be available in the CI build process.

## Release Process

Releases are automatically created when version tags (following semver pattern `v*.*.*`) are pushed to the repository:

1. **Automated Build**: The CI pipeline builds the test data and runs validation
2. **Artifact Generation**: Creates timestamped artifacts containing:
   - Generated FHIR resources (`kds-testdata-{version}-{timestamp}.zip`)
   - NDJSON bundle files (`testdata-bundles-ndjson-{timestamp}.zip`)
3. **Draft Release**: A draft GitHub release is created with:
   - Auto-generated release notes
   - All build artifacts attached
   - Prerelease flag for versions containing hyphens (e.g., `v2025.0.0-rc1`)

Draft releases must be manually published after review.

## Issues and Feedback

- **Issues**: Please submit any bugs, validation errors, or feature requests via [GitHub Issues](https://github.com/medizininformatik-initiative/mii-testdata/issues)

## Troubleshooting

If *Structure Definition is Missing Snapshot Error* is encountered during running SUSHI, missing snapshots have to be provided. See: https://fshschool.org/docs/sushi/running/#structure-definition-is-missing-snapshot-error