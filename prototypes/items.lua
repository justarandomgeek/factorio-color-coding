require("prototypes.config")

color_items = {}

if ENABLE_CONCRETE then
    -- colored concrete inventory items
    function add_concrete(color, group, align)
        concrete = util.table.deepcopy(data.raw["item"]["hazard-concrete"])
        concrete.name = "concrete-"..color
        concrete.icon = MOD_NAME.."/graphics/concrete/"..TILE_MINE_RESULT[color].."/icon.png"
        concrete.icon_size = 32
        concrete.place_as_tile.result = "concrete-"..TILE_MINE_RESULT[color]
        concrete.order = "c-aa"..align.."-"..color.."]"
        concrete.subgroup = "color-concrete-"..group
        table.insert(color_items,concrete)
    end

    i = 0
    for color,_ in pairs(COLOR_TABLE) do
        --ugly numbering/zero padding hack to get the crafting screen to sort chromatically rather than alphabetically
        i = i + 1
        if i < 10 then pad = "0" else pad = "" end
        add_concrete(color, "solid", pad..i)
    end

    i = 0
    for color,_ in pairs(COLOR_DIAGONAL_TABLE) do
        --ugly numbering/zero padding hack to get the crafting screen to sort chromatically rather than alphabetically
        i = i + 1
        if i < 10 then pad = "0" else pad = "" end
        add_concrete(color, "diagonal", pad..i)
    end

    i = 0
    for color,_ in pairs(COLOR_STRIPE_TABLE) do
        --ugly numbering/zero padding hack to get the crafting screen to sort chromatically rather than alphabetically
        i = i + 1
        if i < 10 then pad = "0" else pad = "" end
        add_concrete(color, "stripe", pad..i)
    end

    i = 0
    for color,_ in pairs(SPECIALTY_DIAGONAL_TABLE) do
        --ugly numbering/zero padding hack to get the crafting screen to sort chromatically rather than alphabetically
        i = i + 1
        if i < 10 then pad = "0" else pad = "" end
        add_concrete(color, "diagonal-specialty", pad..i)
    end

    i = 0
    for color,_ in pairs(SPECIALTY_STRIPE_TABLE) do
        --ugly numbering/zero padding hack to get the crafting screen to sort chromatically rather than alphabetically
        i = i + 1
        if i < 10 then pad = "0" else pad = "" end
        add_concrete(color, "stripe-specialty", pad..i)
    end
end

if ENABLE_LAMPS then
    -- replace stock lamp icon with "brighter" one to make sure it's consistent with, but distinct from, the white indicator lamps
    data.raw["item"]["small-lamp"].icon = MOD_NAME.."/graphics/lamp/stock/icon.png"

    -- colored indicator lamp inventory items
    i = 0
    for color,rgb in pairs(COLOR_SOLID_TABLE) do
        --ugly numbering/zero padding hack to get the crafting screen to sort chromatically rather than alphabetically
        i = i + 1
        if i < 10 then pad = "0" else pad = "" end
        lamp = util.table.deepcopy(data.raw["item"]["small-lamp"])
        lamp.name = "small-lamp-"..color
        lamp.icon = MOD_NAME.."/graphics/lamp/"..color.."/icon.png"
        lamp.icon_size = 32
        lamp.place_result = "small-lamp-"..color
        lamp.order = "l-a"..pad..i.."-"..color.."]"
        lamp.subgroup = "color-lamps"
        table.insert(color_items,lamp)
    end
end

data:extend(color_items)
