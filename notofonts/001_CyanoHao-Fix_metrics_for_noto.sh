#!/usr/bin/env bash

cp NotoSans\[wdth\,wght\].ttf NotoSans-RegularVF.ttf
cp NotoSans-Italic\[wdth\,wght\].ttf NotoSans-ItalicVF.ttf
for w in Thin Light Regular Medium Bold Black ThinItalic LightItalic Italic MediumItalic BoldItalic BlackItalic RegularVF ItalicVF; do
  ttx -t 'head' -t 'hhea' -t 'name' -o $w.ttx NotoSans-$w.ttf
  sed -i 's/yMin value="-[0-9]\+"/yMin value="-271"/; s/yMax value="[0-9]\+"/yMax value="1056"/; s/ascent value="[0-9]\+"/ascent value="928"/; s/descent value="-[0-9]\+"/descent value="-244"/' $w.ttx
  sed -i 's/Noto Sans/Roboto/g' $w.ttx
  ttx -m NotoSans-$w.ttf -o ResultNoto-$w.ttf $w.ttx
  rm $w.ttx
done
for w in Light Regular Medium Bold LightItalic Italic MediumItalic BoldItalic; do
  if [[ $w == Regular ]]; then
    notosansfilename=NotoSans-Condensed.ttf
  else
    notosansfilename=NotoSans-Condensed$w.ttf
  fi
  ttx -t 'head' -t 'hhea' -t 'name' -o $w.ttx $notosansfilename
  sed -i 's/yMin value="-[0-9]\+"/yMin value="-271"/; s/yMax value="[0-9]\+"/yMax value="1056"/; s/ascent value="[0-9]\+"/ascent value="928"/; s/descent value="-[0-9]\+"/descent value="-244"/' $w.ttx
  sed -i 's/Noto Sans/Roboto/g' $w.ttx
  ttx -m $notosansfilename -o ResultNotoCondensed-$w.ttf $w.ttx
  rm $w.ttx
done
cp ResultNoto-Regular.ttf NotoStatic-Regular.ttf
ttx -t 'name' -o NotoStatic-Regular.ttf.ttx NotoStatic-Regular.ttf 
sed -i 's/Roboto/RobotoStatic/g' NotoStatic-Regular.ttf.ttx
ttx -m NotoStatic-Regular.ttf -o ResultNotoStatic-Regular.ttf NotoStatic-Regular.ttf.ttx
rm NotoStatic-Regular.ttf.ttx NotoStatic-Regular.ttf
