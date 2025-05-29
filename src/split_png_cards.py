from PIL import Image
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-i", "--input-file")
parser.add_argument("-d", "--dir", default=".")
parser.add_argument("-r", "--rows", type=int, default=3)
parser.add_argument("-c", "--columns", type=int, default=3)
parser.add_argument("-x", "--x-offset", type=int, default=0)
parser.add_argument("-y", "--y-offset", type=int, default=0)
parser.add_argument("-w", "--width", type=int, default=500)
parser.add_argument("--height", type=int, default=700)
parser.add_argument("--out-width", type=int, default=825)
parser.add_argument("--out-height", type=int, default=1125)
parser.add_argument("--x-seperator", type=int, default=0)
parser.add_argument("--y-seperator", type=int, default=0)
parser.add_argument("-n", "--name", default="card_face{n}")
parser.add_argument("-b", "--border_size", type=int, default=0)
parser.add_argument("--border-color", default="black")


def main (args):
    img = Image.open(args.input_file)
    card_num = 0
    for card_y in range(0, args.rows):
        for card_x in range(0, args.columns):
            card_num += 1
            x = args.x_offset + (args.width + args.x_seperator) * card_x
            y = args.y_offset + (args.height + args.y_seperator) * card_y
            coord = (x,y,x+args.width-1, y+args.height-1)
            card_name = (
                args.dir + "/" + args.name.format(n=card_num) + ".png"
            )
            size = (args.out_width - args.border_size*2, args.out_height-args.border_size*2)
            card_image = img.crop(coord).resize(size)

            background = Image.new("RGB", (args.out_width,args.out_height), color=args.border_color)
            background.paste(card_image, (args.border_size,args.border_size))
            background.save(card_name)

if __name__ == '__main__':
    main(parser.parse_args())
