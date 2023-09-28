#!/usr/bin/env bash

rm -rf ../device/asus/
rm -rf ../device/xiaomi/
git clone https://github.com/Whot1966/device_xiaomi_ginkgo ../device/xiaomi/ginkgo
rm -rf ../vendor/asus/
rm -rf ../vendor/xiaomi/
git clone https://github.com/Whot1966/vendor_xiaomi_ginkgo ../vendor/xiaomi/ginkgo --depth=1
rm -rf ../kernel/asus/
rm -rf ../kernel/xiaomi/
git clone https://github.com/Whot1966/kernel_xiaomi_ginkgo ../kernel/xiaomi/ginkgo -b redsin/13 --depth=1
rm -rf ../vendor/miuicamera
git clone https://github.com/Whot1966/vendor_miuicamera ../vendor/miuicamera --depth=1
rm -rf ../hardware/qcom-caf/sm8150/audio/
git clone https://github.com/ArrowOS/android_hardware_qcom_audio ../hardware/qcom-caf/sm8150/audio/ --depth=1 -b arrow-13.1-caf-sm8150
rm -rf ../hardware/qcom-caf/sm8150/display/
git clone https://github.com/Whot1966/android_hardware_qcom_display-arrow ../hardware/qcom-caf/sm8150/display/ --depth=1
rm -rf ../hardware/qcom-caf/sm8150/media/
git clone https://github.com/ArrowOS/android_hardware_qcom_media ../hardware/qcom-caf/sm8150/media/ --depth=1 -b arrow-13.1-caf-sm8150
rm -rf ../vendor/qcom/opensource/display/
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_display ../vendor/qcom/opensource/display/ --depth=1
rm -rf ../vendor/nxp/opensource/interfaces/nfc
git clone https://github.com/ArrowOS/android_vendor_nxp_interfaces_opensource_nfc ../vendor/nxp/opensource/interfaces/nfc --depth=1 -b arrow-13.1
rm -rf ../vendor/nxp/opensource/commonsys/external/libnfc-nci
git clone https://github.com/ArrowOS/android_vendor_nxp_opensource_external_libnfc-nci ../vendor/nxp/opensource/commonsys/external/libnfc-nci --depth=1 -b arrow-13.1
rm -rf ../vendor/nxp/opensource/commonsys/packages/apps/Nfc
git clone https://github.com/ArrowOS/android_vendor_nxp_opensource_packages_apps_Nfc ../vendor/nxp/opensource/commonsys/packages/apps/Nfc --depth=1 -b arrow-13.1
rm -rf ../vendor/nxp/opensource/commonsys/frameworks
git clone https://github.com/ArrowOS/android_vendor_nxp_opensource_frameworks ../vendor/nxp/opensource/commonsys/frameworks --depth=1 -b arrow-13.1
rm -rf ../vendor/nxp/opensource/sn100x/halimpl
git clone https://github.com/ArrowOS/android_vendor_nxp_opensource_halimpl ../vendor/nxp/opensource/sn100x/halimpl --depth=1 -b arrow-13.1-sn100x
rm -rf ../vendor/nxp/opensource/sn100x/hidlimpl
git clone https://github.com/ArrowOS/android_vendor_nxp_opensource_hidlimpl ../vendor/nxp/opensource/sn100x/hidlimpl --depth=1 -b arrow-13.1-sn100x
