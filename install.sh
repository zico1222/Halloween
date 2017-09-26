#!/usr/bin/env bash

# Downloads images from Irasutoya (following URLs may be wrong...)
curl 'http://4.bp.blogspot.com/-3WmFauSmSOs/VC9sld2hfBI/AAAAAAAAnX4/NGxW6muF374/s800/halloween_pumpkin2.png' > images/halloween-pumpkin2.png
curl 'http://4.bp.blogspot.com/-psBty41AJEE/VC9sm-kAQWI/AAAAAAAAnYM/KCXG8Wyajoc/s800/halloween_pumpkin5.png' > images/halloween-pumpkin5.png
curl 'http://2.bp.blogspot.com/-f0wOyYu-gn4/VC9smMOIcOI/AAAAAAAAnYQ/r3Q6CfYCWWQ/s800/halloween_pumpkin3.png' > images/halloween-pumpkin3.png
curl 'http://3.bp.blogspot.com/-t9aL5wvT3hM/VC9sdFKo6HI/AAAAAAAAnVo/1JzP3fmW5AI/s800/halloween_background_orange.png' > images/halloween-background-orange.png

convert -size 800x450 xc:"rgba(256,256,256,0.4)" images/canvas.png
convert images/halloween-background-orange.png -modulate 100,60 images/halloween-background-orange.png
convert images/halloween-background-orange.png -fuzz 10% -fill gray20 -opaque black images/halloween-background-orange.png
composite images/canvas.png images/halloween-background-orange.png images/halloween-background-orange.png
convert images/halloween-background-orange.png -crop 533x400+240+6 images/halloween-background-orange.png

# Sets paths where to copy the files
TEXMF=$(kpsewhich -var-value TEXMFLOCAL)
TEXMF=${TEXMF%%:*}
PATH_FONTNA=$TEXMF/fonts/truetype/public/fontna/
PATH_THEMES=$TEXMF/tex/latex/beamer/themes/
PATH_IRASUTOYA=$TEXMF/tex/latex/beamer/art/irasutoya

# Copies the files
mkdir -p $PATH_FONTNA
cp fonts/07LogoTypeGothic7.ttf $PATH_FONTNA/

mkdir -p $PATH_THEMES/color/
cp theme/beamercolorthemeHalloween.sty $PATH_THEMES/color/
mkdir -p $PATH_THEMES/inner/
cp theme/beamerinnerthemeHalloween.sty $PATH_THEMES/inner/
mkdir -p $PATH_THEMES/outer/
cp theme/beamerouterthemeHalloween.sty $PATH_THEMES/outer/
mkdir -p $PATH_THEMES/font/
cp theme/beamerfontthemeHalloween.sty $PATH_THEMES/font/
mkdir -p $PATH_THEMES/theme/
cp theme/beamerthemeHalloween.sty $PATH_THEMES/theme/

mkdir -p $PATH_IRASUTOYA
cp images/*.png $PATH_IRASUTOYA/
cp images/*.bb $PATH_IRASUTOYA/

# Update ls-R (index files for LaTeX)
mktexlsr
