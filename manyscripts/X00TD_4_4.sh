#!/usr/bin/env bash

rm -rf ../device/asus/
rm -rf ../device/xiaomi/
git clone https://github.com/Whot1966/device_asus_X00TD ../device/asus/X00TD -b lineage-20.0
rm -rf ../vendor/asus/
rm -rf ../vendor/xiaomi/
rm -rf ../vendor/miuicamera/
git clone https://github.com/Whot1966/vendor_asus_X00TD ../vendor/asus/X00TD -b lineage-20.0  --depth=1
rm -rf ../kernel/asus/
rm -rf ../kernel/xiaomi/
git clone https://github.com/Whot1966/kernel_asus_sdm660 ../kernel/asus/sdm660 -b eas/lineage-20.0 --depth=1
rm -rf ../vendor/qcom/opensource/display/
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_display ../vendor/qcom/opensource/display/ --depth=1
