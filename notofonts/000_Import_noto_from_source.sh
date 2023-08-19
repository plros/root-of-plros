#!/usr/bin/env bash
date_for_now_and_for_this_script_only="$(date +'%d-%m-%Y')"

echo "Deleting old folder ..."
rm -rf ~/notofonts.github.io

echo "Cloning with shallow ..."
git clone https://github.com/notofonts/notofonts.github.io ~/notofonts.github.io --depth=1

echo "Copying ..."
cp ~/notofonts.github.io/fonts/NotoSans/full/ttf/* .
cp ~/notofonts.github.io/fonts/NotoSans/full/variable-ttf/* .

rm -rf ~/notofonts.github.io
git add .
git commit -m "Update Noto Sans full edition as $date_for_now_and_for_this_script_only"
git push
echo "Done and dusted! Out of this world!"
