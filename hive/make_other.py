from PIL import Image
import cairosvg
import io

def make_tokens(name, canvas_size=(300, 300)):
    png_data = cairosvg.svg2png(url = "my_icons/" + name + ".svg")
    svg_image = Image.open(io.BytesIO(png_data)).convert("RGBA")

    background = Image.new("RGBA", canvas_size, (177, 177, 177, 255))

    svg_width, svg_height = svg_image.size
    bg_width, bg_height = canvas_size
    position = ((bg_width - svg_width) // 2, (bg_height - svg_height) // 2)

    background.paste(svg_image, position, svg_image)
    background.convert("RGB").save("for_game_crafter/" + name + ".png", "PNG")

if __name__ == "__main__":
    make_tokens("turn")
    make_tokens("no")
