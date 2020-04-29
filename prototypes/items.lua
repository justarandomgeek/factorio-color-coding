local config = require("prototypes.config")

color_items = {}

-- colored concrete inventory items

function add_concrete(color,rgb,pad,i)
    local concrete = util.table.deepcopy(data.raw["item"]["hazard-concrete"])
    concrete.name = "concrete-"..color
    concrete.icons = {
        {
            icon = data.raw["item"]["concrete"].icon,
            icon_mipmaps = data.raw["item"]["concrete"].icon_mipmaps,
            icon_size = data.raw["item"]["concrete"].icon_size,
            tint = rgb.player_color
        }
    }
    concrete.icon = nil
    concrete.icon_mipmaps = nil
    concrete.icon_size = nil
    concrete.place_as_tile.result = "concrete-"..color
    concrete.order = "c-aa"..pad..i.."-"..color.."]"
    concrete.subgroup = "color-concrete"
    table.insert(color_items,concrete)

    local rconcrete = util.table.deepcopy(data.raw["item"]["refined-hazard-concrete"])
    rconcrete.name = "refined-concrete-"..color
    rconcrete.icons = {
        {
            icon = data.raw["item"]["refined-concrete"].icon,
            icon_mipmaps = data.raw["item"]["refined-concrete"].icon_mipmaps,
            icon_size = data.raw["item"]["refined-concrete"].icon_size,
            tint = rgb.player_color
        }
    }
    rconcrete.icon = nil
    rconcrete.icon_mipmaps = nil
    rconcrete.icon_size = nil
    rconcrete.place_as_tile.result = "refined-concrete-"..color
    rconcrete.order = "c-ab"..pad..i.."-"..color.."]"
    rconcrete.subgroup = "color-concrete"
    table.insert(color_items,rconcrete)
end

i = 0
for color,rgb in pairs(config.colors) do
    --ugly numbering/zero padding hack to get the crafting screen to sort chromatically rather than alphabetically
    i = i + 1
    if i < 10 then pad = "0" else pad = "" end
    add_concrete(color,rgb,pad,i)
end

-- colored indicator lamp inventory items
i = 0
for color,rgb in pairs(config.colors) do
    --ugly numbering/zero padding hack to get the crafting screen to sort chromatically rather than alphabetically
    i = i + 1
    if i < 10 then pad = "0" else pad = "" end
    lamp = util.table.deepcopy(data.raw["item"]["small-lamp"])
    lamp.name = "small-lamp-"..color
    lamp.icons = {
        {
            icon = lamp.icon,
            icon_mipmaps = lamp.icon_mipmaps,
            icon_size = lamp.icon_size,
            tint = rgb.player_color
        }
    }
    lamp.icon = nil
    lamp.icon_mipmaps = nil
    lamp.icon_size = nil
    lamp.place_result = "small-lamp-"..color
    lamp.order = "l-a"..pad..i.."-"..color.."]"
    lamp.subgroup = "color-lamps"
    table.insert(color_items,lamp)
end

data:extend(color_items)
