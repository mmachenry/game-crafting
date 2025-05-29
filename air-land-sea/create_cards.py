import sys
import os
from PIL import Image

size = (825, 1125)

top_row = [
    (277, 101, 825, 846), (826, 101, 1372, 846), (1373, 101, 1921, 846),
]

bottom_row = [
    (278, 849, 826, 1594), (827, 849, 1373, 1594), (1374, 849, 1922, 1594),
]

def main (filepath, name, side):
    img = Image.open(filepath)
    if side == "face":
        coords = list(reversed(top_row)) + list(reversed(bottom_row))
    else:
        coords = top_row + bottom_row
    n = 0
    for coord in coords:
        card_name = name + "_" + str(n) + "[" + side + "].png"
        img.crop(coord).resize(size).save("cards/" + card_name)
        n += 1

if __name__ == '__main__':
      main(sys.argv[1], sys.argv[2], sys.argv[3])
