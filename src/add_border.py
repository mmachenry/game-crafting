from PIL import Image
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-i", "--input-file")
parser.add_argument("-o", "--output-file")
parser.add_argument("-s", "--size", type=int)
parser.add_argument("-c", "--color", default="black")

def main (args):
    img = Image.open(args.input_file)
    (x,y) = img.size
    background = Image.new("RGB", (x,y), color=args.color)
    small = img.resize((x-args.size*2,y-args.size*2))
    background.paste(small, (args.size,args.size))
    background.save(args.output_file)

if __name__ == '__main__':
    main(parser.parse_args())
