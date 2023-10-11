#!/bin/bash -xe
cp ginkgo-miui-camera/frameworks_base/0001-CameraManager-HAX-for-depth-sensor-on-ginkgo-1-2.patch ../frameworks/base/
cd ../frameworks/base
git am 0001-CameraManager-HAX-for-depth-sensor-on-ginkgo-1-2.patch
rm 0001-CameraManager-HAX-for-depth-sensor-on-ginkgo-1-2.patch
cd ../../patch
cp ginkgo-miui-camera/frameworks_av/000* ../frameworks/av/
cd ../frameworks/av
git am 000*
rm 000*
cd ../../patch
