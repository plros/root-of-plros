#!/usr/bin/env bash

rm -rf ../device/asus/
rm -rf ../device/xiaomi/
git clone https://github.com/Whot1966/device_asus_X00TD ../device/asus/X00TD -b 4.19-legacy/lineage-20.0
rm -rf ../vendor/asus/
rm -rf ../vendor/xiaomi/
rm -rf ../vendor/miuicamera/
git clone https://github.com/Whot1966/vendor_asus_X00TD ../vendor/asus/X00TD -b 4.19-legacy/lineage-20.0 --depth=1
rm -rf ../kernel/asus/
rm -rf ../kernel/xiaomi/
git clone https://github.com/Whot1966/kernel_asus_sdm660-4.19 ../kernel/asus/sdm660 -b lineage-20.0 --depth=1
rm -rf ../hardware/qcom-caf/sdm660/audio/
git clone https://github.com/SonicBSV/android_hardware_qcom-caf_msm8998_audio-4.19 ../hardware/qcom-caf/sdm660/audio/ --depth=1
rm -rf ../hardware/qcom-caf/sdm660/display/
git clone https://github.com/Whot1966/android_hardware_qcom_display-SonicBSV ../hardware/qcom-caf/sdm660/display/ --depth=1
rm -rf ../hardware/qcom-caf/sdm660/media/
git clone https://github.com/SonicBSV/android_hardware_qcom-caf_msm8998_media-4.19 ../hardware/qcom-caf/sdm660/media/ --depth=1
rm -rf ../vendor/qcom/opensource/display/
git clone https://github.com/Whot1966/android_vendor_qcom_opensource_display-lineage ../vendor/qcom/opensource/display/ --depth=1
