# A record of what I did to split up these cards. First I
# broke up the orginal PDF into 6 PNGs with 6 cards on each

# pdftoppm -png -f 2 mint-julep/MINT_JULEP-PNP.pdf mint-julep

# Then for each of those 6 PNGs with 6 cardss I used my split
# program to break them up into cards in the card directory
# given the proper offsets for where the cards where laid out
python src/split_png_cards.py -d mint-julep/cards/ -b 40 --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i mint-julep/pngs/mint-julep-2.png -n "face_1_{n}"
python src/split_png_cards.py -d mint-julep/cards/ -b 40 --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i mint-julep/pngs/mint-julep-3.png -n "back_1_{n}"
python src/split_png_cards.py -d mint-julep/cards/ -b 40 --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i mint-julep/pngs/mint-julep-4.png -n "face_2_{n}"
python src/split_png_cards.py -d mint-julep/cards/ -b 40 --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i mint-julep/pngs/mint-julep-5.png -n "back_2_{n}"
python src/split_png_cards.py -d mint-julep/cards/ -b 40 --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i mint-julep/pngs/mint-julep-6.png -n "face_3_{n}"
python src/split_png_cards.py -d mint-julep/cards/ -b 40 --border-color white -x 208 -y 75 -w 411 --height 561 -r 2 -c 3 -i mint-julep/pngs/mint-julep-7.png -n "back_3_{n}"

# Then uploaded them to thegamecrafter and proofed them and
# thought they could probably use a bit of border, they were
# good enough.
