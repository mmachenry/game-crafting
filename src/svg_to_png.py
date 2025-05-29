import cairosvg
from PIL import Image
import argparse
import io

parser = argparse.ArgumentParser()
parser.add_argument("-i", "--input-file")
parser.add_argument("-o", "--output-file")
parser.add_argument("-w", "--width", type=int, default = 825)
parser.add_argument("--height", type=int, default = 1125)
parser.add_argument("-s", "--size", type=int, default = 0)
parser.add_argument("-c", "--color", default="white")

def main (args):
    content_width = args.width - 2 * args.size
    content_height = args.height - 2 * args.size

    png_bytes = cairosvg.svg2png(
        url = args.input_file,
        output_width = content_width,
        output_height = content_height,
        background_color = args.color,
    )
    content_image = Image.open(io.BytesIO(png_bytes))

    background = Image.new(
        "RGB",
        (args.width,args.height),
        color = args.color
    )
    background.paste(content_image, (args.size, args.size))
    background.save(args.output_file)

if __name__ == '__main__':
    main(parser.parse_args())
