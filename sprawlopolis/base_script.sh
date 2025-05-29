OUT_DIR=sprawlopolis/cards/base

python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/sprawlopolis-2.png -n "sprawlopolis_1_{n}[face]"
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/sprawlopolis-3.png -n "sprawlopolis_1_{n}[back]"
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/sprawlopolis-4.png -n "sprawlopolis_2_{n}[face]"
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/sprawlopolis-5.png -n "sprawlopolis_2_{n}[back]"
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/sprawlopolis-6.png -n "sprawlopolis_3_{n}[face]"
python src/split_png_cards.py -d $OUT_DIR --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i sprawlopolis/pngs/sprawlopolis-7.png -n "sprawlopolis_3_{n}[back]"

mv $OUT_DIR/sprawlopolis_1_1[back].png $OUT_DIR/sprawlopolis_1_x[back].png
mv $OUT_DIR/sprawlopolis_1_3[back].png $OUT_DIR/sprawlopolis_1_1[back].png
mv $OUT_DIR/sprawlopolis_1_x[back].png $OUT_DIR/sprawlopolis_1_3[back].png
mv $OUT_DIR/sprawlopolis_1_4[back].png $OUT_DIR/sprawlopolis_1_x[back].png
mv $OUT_DIR/sprawlopolis_1_6[back].png $OUT_DIR/sprawlopolis_1_4[back].png
mv $OUT_DIR/sprawlopolis_1_x[back].png $OUT_DIR/sprawlopolis_1_6[back].png

mv $OUT_DIR/sprawlopolis_2_1[back].png $OUT_DIR/sprawlopolis_2_x[back].png
mv $OUT_DIR/sprawlopolis_2_3[back].png $OUT_DIR/sprawlopolis_2_1[back].png
mv $OUT_DIR/sprawlopolis_2_x[back].png $OUT_DIR/sprawlopolis_2_3[back].png
mv $OUT_DIR/sprawlopolis_2_4[back].png $OUT_DIR/sprawlopolis_2_x[back].png
mv $OUT_DIR/sprawlopolis_2_6[back].png $OUT_DIR/sprawlopolis_2_4[back].png
mv $OUT_DIR/sprawlopolis_2_x[back].png $OUT_DIR/sprawlopolis_2_6[back].png

mv $OUT_DIR/sprawlopolis_3_1[back].png $OUT_DIR/sprawlopolis_3_x[back].png
mv $OUT_DIR/sprawlopolis_3_3[back].png $OUT_DIR/sprawlopolis_3_1[back].png
mv $OUT_DIR/sprawlopolis_3_x[back].png $OUT_DIR/sprawlopolis_3_3[back].png
mv $OUT_DIR/sprawlopolis_3_4[back].png $OUT_DIR/sprawlopolis_3_x[back].png
mv $OUT_DIR/sprawlopolis_3_6[back].png $OUT_DIR/sprawlopolis_3_4[back].png
mv $OUT_DIR/sprawlopolis_3_x[back].png $OUT_DIR/sprawlopolis_3_6[back].png
