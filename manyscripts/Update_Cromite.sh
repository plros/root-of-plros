#!/usr/bin/env bash
date_for_now_and_for_this_script_only="$(date +'%d-%m-%Y')"
cromite_versioning_for_me_only="$(curl -sL https://api.github.com/repos/uazo/cromite/releases/latest | jq -r ".tag_name")"

echo "Getting latest release ..."
wget $(curl -L -s https://api.github.com/repos/uazo/cromite/releases/latest | grep -o -E "https://(.*)arm64_ChromePublic(.*).apk")

if ! [ -d "$HOME/vendor_plros_prebuilt_apps_Cromite" ]; then
echo "vendor_plros_prebuilt_apps_Cromite not found! Cloning..."
git clone https://gitlab.com/plros-lab/vendor_plros_prebuilt_apps_Cromite ~/vendor_plros_prebuilt_apps_Cromite --depth=1
fi

echo "Moving ..."
mv arm64_ChromePublic.apk ~/vendor_plros_prebuilt_apps_Cromite/arm64_ChromePublic.apk
rm -rf arm64_ChromePublic.apk
echo "Done! This is your commit message:"
echo "Update Cromite as $date_for_now_and_for_this_script_only and $cromite_versioning_for_me_only"
