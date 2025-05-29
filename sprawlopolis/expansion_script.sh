OUT_DIR=sprawlopolis/cards/expansion

#pdftoppm -png -f 2 sprawlopolis/original/SPRAWLOPOLIS-PNP.pdf sprawlopolis/pngs/sprawlopolis
#pdftoppm -png -f 2 sprawlopolis/original/SPRAWL_INT-PNP.pdf sprawlopolis/pngs/interstate
#pdftoppm -png -f 2 sprawlopolis/original/SPRAWLOPOLIS_BEACHES-PNP.pdf sprawlopolis/pngs/beaches
#pdftoppm -png -f 1 sprawlopolis/original/SPRAWLOPOLIS-CZ-PNP.pdf sprawlopolis/pngs/construction
#pdftoppm -png -f 1 sprawlopolis/original/SPRAWLOPOLIS-POI-PNP.pdf sprawlopolis/pngs/points
#pdftoppm -png -f 2 sprawlopolis/original/Sprawlopolis\ -\ Roadwork\ PNP\ v1.0.pdf sprawlopolis/pngs/roadwork
#pdftoppm -png -f 1 sprawlopolis/original/SPRAWLOPOLIS-W-PNP.pdf sprawlopolis/pngs/wrecktar

# INTERSTATE
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/interstate-2.png -n "interstate_{n}[face]"
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/interstate-3.png -n "interstate_{n}[back]"
rm $OUT_DIR/interstate_5[face].png $OUT_DIR/interstate_6[face].png $OUT_DIR/interstate_4[back].png $OUT_DIR/interstate_5[back].png
mv $OUT_DIR/interstate_1[back].png $OUT_DIR/interstate_x[back].png
mv $OUT_DIR/interstate_3[back].png $OUT_DIR/interstate_1[back].png
mv $OUT_DIR/interstate_x[back].png $OUT_DIR/interstate_3[back].png
mv $OUT_DIR/interstate_6[back].png $OUT_DIR/interstate_4[back].png

# BEACHES
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/beaches-2.png -n "beaches_{n}[face]"
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/beaches-3.png -n "beaches_{n}[back]"
rm $OUT_DIR/beaches_5[face].png $OUT_DIR/beaches_6[face].png $OUT_DIR/beaches_4[back].png $OUT_DIR/beaches_5[back].png
mv $OUT_DIR/beaches_1[back].png $OUT_DIR/beaches_x[back].png
mv $OUT_DIR/beaches_3[back].png $OUT_DIR/beaches_1[back].png
mv $OUT_DIR/beaches_x[back].png $OUT_DIR/beaches_3[back].png
mv $OUT_DIR/beaches_6[back].png $OUT_DIR/beaches_4[back].png

# CONSTRUCTION
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/construction-1.png -n "construction_{n}[face]"
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/construction-2.png -n "construction_{n}[back]"
rm $OUT_DIR/construction_5[face].png $OUT_DIR/construction_6[face].png $OUT_DIR/construction_4[back].png $OUT_DIR/construction_5[back].png
mv $OUT_DIR/construction_1[back].png $OUT_DIR/construction_x[back].png
mv $OUT_DIR/construction_3[back].png $OUT_DIR/construction_1[back].png
mv $OUT_DIR/construction_x[back].png $OUT_DIR/construction_3[back].png
mv $OUT_DIR/construction_6[back].png $OUT_DIR/construction_4[back].png

python src/split_png_cards.py -d $OUT_DIR --border-color white -x 213 -y 82 -w 408 --height 556 -r 2 -c 3 -i sprawlopolis/pngs/roadwork-2.png -n "roadwork_{n}[face]"
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 213 -y 82 -w 408 --height 556 -r 2 -c 3 -i sprawlopolis/pngs/roadwork-3.png -n "roadwork_{n}[back]"
rm $OUT_DIR/roadwork_5[face].png $OUT_DIR/roadwork_6[face].png $OUT_DIR/roadwork_4[back].png $OUT_DIR/roadwork_5[back].png
mv $OUT_DIR/roadwork_1[back].png $OUT_DIR/roadwork_x[back].png
mv $OUT_DIR/roadwork_3[back].png $OUT_DIR/roadwork_1[back].png
mv $OUT_DIR/roadwork_x[back].png $OUT_DIR/roadwork_3[back].png
mv $OUT_DIR/roadwork_6[back].png $OUT_DIR/roadwork_4[back].png

# POINTS OF INTEREST
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/points-1.png -n "points_{n}[face]"
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/points-2.png -n "points_{n}[back]"
mv $OUT_DIR/points_2[face].png $OUT_DIR/points[face].png
mv $OUT_DIR/points_2[back].png $OUT_DIR/points[back].png
rm $OUT_DIR/points_*

# WRECKTAR
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/wrecktar-1.png -n "wrecktar_{n}[face]"
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/wrecktar-2.png -n "wrecktar_{n}[back]"
mv $OUT_DIR/wrecktar_2[face].png $OUT_DIR/wrecktar[face].png
mv $OUT_DIR/wrecktar_2[back].png $OUT_DIR/wrecktar[back].png
rm $OUT_DIR/wrecktar_*

# Then uploaded them to thegamecrafter and proofed them and
# thought they could probably use a bit of border, they were
# good enough.
