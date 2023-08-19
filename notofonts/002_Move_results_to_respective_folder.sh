#!/usr/bin/env bash

if ! [ -d "$HOME/android_vendor_plros" ]; then
echo "android_vendor_plros not found! Cloning..."
git clone https://github.com/plros/android_vendor_plros ~/android_vendor_plros --depth=1
fi

if ! [ -d "$HOME/android_external_roboto-fonts" ]; then
echo "android_external_roboto-fonts not found! Cloning..."
git clone https://github.com/Whot1966/android_external_roboto-fonts ~/android_external_roboto-fonts --depth=1
fi

echo "Start copying ..."
for w in Light Regular Medium LightItalic Italic MediumItalic; do
cp ResultNoto-$w.ttf ~/android_vendor_plros/fonts/NotoSans-$w.ttf 
done

cp ResultNoto-RegularVF.ttf ~/android_external_roboto-fonts/Roboto-Regular.ttf 
cp ResultNoto-Regular.ttf ~/android_external_roboto-fonts/RobotoStatic-Regular.ttf 
echo "Finish!"
echo "Please push the changes and re-sync your repo!"
