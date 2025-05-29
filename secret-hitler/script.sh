SRC_DIR=original/SecretHitlerPlayingCards/
DST_DIR=cards/

convert -resize 825x1125\! $SRC_DIR/card_role_back.png $DST_DIR/back.png
convert -resize 825x1125! $SRC_DIR/card_role_hitler.png $DST_DIR/role_hitler[face].png
convert -resize 825x1125! $SRC_DIR/card_role_fascist_1.png $DST_DIR/role_fascist_1[face].png
convert -resize 825x1125! $SRC_DIR/card_role_fascist_2.png $DST_DIR/role_fascist_2[face].png
convert -resize 825x1125! $SRC_DIR/card_role_fascist_3.png $DST_DIR/role_fascist_3[face].png
convert -resize 825x1125! $SRC_DIR/card_role_liberal_1.png $DST_DIR/role_liberal_1[face].png
convert -resize 825x1125! $SRC_DIR/card_role_liberal_2.png $DST_DIR/role_liberal_2[face].png
convert -resize 825x1125! $SRC_DIR/card_role_liberal_3.png $DST_DIR/role_liberal_3[face].png
convert -resize 825x1125! $SRC_DIR/card_role_liberal_4.png $DST_DIR/role_liberal_4[face].png
convert -resize 825x1125! $SRC_DIR/card_role_liberal_5.png $DST_DIR/role_liberal_5[face].png
convert -resize 825x1125! $SRC_DIR/card_role_liberal_6.png $DST_DIR/role_liberal_6[face].png

convert -resize 825x1125! $SRC_DIR/card_policy_fascist.png $DST_DIR/policy_fascist[face,11].png
convert -resize 825x1125! $SRC_DIR/card_policy_liberal.png $DST_DIR/policy_liberal[face,6].png
convert -resize 825x1125! $SRC_DIR/card_policy_back.png $DST_DIR/policy_fascist[back].png
convert -resize 825x1125! $SRC_DIR/card_policy_back.png $DST_DIR/policy_liberal[back].png

convert -resize 825x1125! $SRC_DIR/card_board_fascist_1_back.png $DST_DIR/board_fascist_1[back].png
convert -resize 825x1125! $SRC_DIR/card_board_fascist_1_front.png $DST_DIR/board_fascist_1[face].png
convert -resize 825x1125! $SRC_DIR/card_board_fascist_2_back.png $DST_DIR/board_fascist_2[back].png
convert -resize 825x1125! $SRC_DIR/card_board_fascist_2_front.png $DST_DIR/board_fascist_2[face].png
convert -resize 825x1125! $SRC_DIR/card_board_fascist_3_back.png $DST_DIR/board_fascist_3[back].png
convert -resize 825x1125! $SRC_DIR/card_board_fascist_3_front.png $DST_DIR/board_fascist_3[face].png
convert -resize 825x1125! $SRC_DIR/card_board_fascist_4_front.png $DST_DIR/board_fascist_4[face].png
convert -resize 825x1125! $SRC_DIR/card_board_fascist_5_front.png $DST_DIR/board_fascist_5[face].png
convert -resize 825x1125! $SRC_DIR/card_board_fascist_6_front.png $DST_DIR/board_fascist_6[face].png

convert -resize 825x1125! $SRC_DIR/card_placard_chancellor.png $DST_DIR/chancellor[face].png
convert -resize 825x1125! $SRC_DIR/card_placard_president.png $DST_DIR/president[face].png
