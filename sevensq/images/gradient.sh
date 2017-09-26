convert -size 1600x600 gradient: -evaluate cos 0.5 -rotate 90 -negate g1.png
convert g1.png -gravity west  -extent 1600x1600 g11.png
convert -size 1600x1600 gradient: -evaluate cos 0.5 -negate g2.png
convert g2.png -gravity south  -extent 1600x1600 g22.png
convert -size 1600x600 gradient: -evaluate cos 0.5 -rotate 90 g3.png
convert g3.png -gravity east  -extent 1600x1600 g33.png
convert g11.png -compose Multiply g33.png  -composite g4.png
convert g22.png -compose Multiply g4.png  -composite g.png
#convert biig3.png  -channel RGBA  -blur 0x2  biig3-blur.png
convert g.png -compose Multiply biig3-blur.png  -composite biig-dark3.jpg
#convert -crop 1280x960+220+0 biig-dark3.jpg biig-dark3-small.jpg
