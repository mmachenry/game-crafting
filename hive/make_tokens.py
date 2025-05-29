from svgutils.transform import fromfile, SVGFigure

def main():
    make_game_crafter_png("ant")
    make_game_crafter_png("spider")
    make_game_crafter_png("grasshopper")
    make_game_crafter_png("beetle")
    make_game_crafter_png("queen")
    #make_game_crafter_png("ladybug", 1)
    make_game_crafter_png("mosquito")
    make_game_crafter_png("pillbug")

def make_game_crafter_png(name, scale_factor=1):
    template = fromfile("/home/mmachenry/src/game-crafting/thegamecrafter/hex-shard.svg")
    template_root = template.getroot()
    template_root.moveto(0,0,scale_x=300/72,scale_y=300/72)

    icon = fromfile("my_icons/" + name + ".svg")
    icon_root = icon.getroot()

    orig_width = float(icon.width.replace('px', ''))
    orig_height = float(icon.height.replace('px', ''))
    new_width = orig_width * scale_factor
    new_height = orig_height * scale_factor

    new_x = (300 - new_width) / 2
    new_y = (300 - new_height) / 2
    icon_root.moveto(new_x, new_y, scale_x=scale_factor, scale_y=scale_factor)

    new_fig = SVGFigure("300px", "300px")

    if True: # don't show template
        new_fig.append([template_root, icon_root])
    else:
        new_fig.append([icon_root])

    new_fig.save("for_game_crafter/white_" + name + ".svg")


if __name__ == "__main__":
    main()
