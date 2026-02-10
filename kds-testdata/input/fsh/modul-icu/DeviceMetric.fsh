// DeviceMetric: Gemessene Parameter Beatmung
Instance: mii-exa-test-data-icu-devicemetric-beatmung-1
InstanceOf: DeviceMetric
Usage: #example
Description: "DeviceMetric: Gemessene Parameter Beatmung"
* insert TestDataLabel
* type = $sct#40617009 "Artificial respiration (procedure)"
* source = Reference(mii-exa-test-data-icu-device-1)
* category = #measurement

// DeviceMetric: Gemessene Parameter extrakorporale Verfahren
Instance: mii-exa-test-data-icu-devicemetric-ect-1
InstanceOf: DeviceMetric
Usage: #example
Description: "DeviceMetric: Gemessene Parameter extrakorporale Verfahren"
* insert TestDataLabel
* type = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* source = Reference(mii-exa-test-data-icu-device-1)
* category = #measurement
