from PIL import Image
import cairosvg
import io

def make_tokens(name, canvas_size=(300, 300)):
    png_data = cairosvg.svg2png(url = "my_icons/" + name + ".svg")
    svg_image = Image.open(io.BytesIO(png_data)).convert("RGBA")

    # Step 2: Create black background
    black_background = Image.new("RGBA", canvas_size, (0, 0, 0, 255))
    white_background = Image.new("RGBA", canvas_size, (50, 50, 50, 255))

    # Step 3: Center the SVG image
    svg_width, svg_height = svg_image.size
    bg_width, bg_height = canvas_size
    position = ((bg_width - svg_width) // 2, (bg_height - svg_height) // 2)

    # Step 4: Paste SVG with transparency onto the black background
    black_background.paste(svg_image, position, svg_image)
    white_background.paste(svg_image, position, svg_image)

    # Step 5: Save to PNG
    black_background.convert("RGB").save("for_game_crafter/black_" + name + ".png", "PNG")
    white_background.convert("RGB").save("for_game_crafter/white_" + name + ".png", "PNG")

if __name__ == "__main__":
    make_tokens("ant")
    make_tokens("beetle")
    make_tokens("grasshopper")
    make_tokens("mosquito")
    make_tokens("pillbug")
    make_tokens("queen")
    make_tokens("spider")
