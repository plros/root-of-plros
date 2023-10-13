#!/usr/bin/env bash

if ! [ -d "$HOME/vendor_plros" ]; then
echo "vendor_plros not found! Cloning..."
git clone https://github.com/plros/android_vendor_plros ~/vendor_plros --depth=1
fi

if ! [ -d "$HOME/external_roboto-fonts" ]; then
echo "external_roboto-fonts not found! Cloning..."
git clone https://github.com/plros/external_roboto-fonts ~/external_roboto-fonts --depth=1
fi

echo "Start copying ..."
for w in Light Regular Medium LightItalic Italic MediumItalic; do
cp ResultNoto-$w.ttf ~/vendor_plros/fonts/NotoSans-$w.ttf 
done

cp ResultNoto-RegularVF.ttf ~/external_roboto-fonts/Roboto-Regular.ttf 
cp ResultNotoStatic-Regular.ttf ~/external_roboto-fonts/RobotoStatic-Regular.ttf 
echo "Finish!"
echo "Please push the changes and re-sync your repo!"
