// ============================================================================
// ICU Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-icu-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: ICU Testdaten Patient-1"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-icu-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-icu-encounter-1, Encounter)
// Bilanz Observations
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-haemofiltr-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-drainage-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-ausf-fluess-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-ausf-galle-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-ausf-gallengang-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-ausf-magen-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-ausf-opdrain-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-ausf-pankreas-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-ausf-stuhl-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-ausf-urin-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-ausf-wunde-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-blutverlust-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-einf-enteral-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-einf-fluess-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-einf-oral-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-ges-ausf-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-ges-einf-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-bilanz-tages-1, Observation)
// ECT Observations
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-art-druck-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-blutfl-cardio-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-blutfl-extra-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-blutfl-idx-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-dauer-extra-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-dauer-haemo-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-gasfluss-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-haemo-blutfl-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-kalzium-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-substituatfl-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-substituatvol-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-ven-druck-1, Observation)
// Event Observations
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-event-o2-partial-1, Observation)
// MUV Observations
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-muv-blutdruck-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-muv-atemfreq-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-muv-herzfreq-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-muv-gewicht-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-muv-groesse-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-muv-kopfumfang-1, Observation)
// Vent Observations
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-fio2-eingest-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-atemdr-null-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-atemdr-mitt-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-vt-einst-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-vt-beat-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-mv-masch-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-zeit-hoch-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-zeit-niedrig-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-insp-flow-set-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-te-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-ti-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-etco2-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-exp-flow-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-horowitz-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-fio2-gem-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-insp-flow-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-pip-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-freq-mech-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-map-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-peep-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-freq-spont-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-freq-spont-mech-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-vt-spont-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-vt-spont-mech-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-ps-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-ie-ratio-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-compliance-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-dp-1, Observation)
// Procedures
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-extrakorp-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-beatmung-1, Procedure)
// Device + DeviceMetric
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-device-1, Device)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-ect-dm-param-1, DeviceMetric)
* insert AddBundleEntry(mii-exa-test-data-patient-1-icu-vent-dm-param-1, DeviceMetric)
