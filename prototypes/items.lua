local config = require("prototypes.config")

color_items = {}

-- colored concrete inventory items
function add_concrete(color,rgb,pad,i)
    local concrete = util.table.deepcopy(data.raw["item"]["hazard-concrete"])
    concrete.name = "concrete-"..color
    concrete.icon = "__color-coding__/graphics/concrete/"..color.."/icon.png"
    concrete.icon_size = 32
    concrete.icon_mipmaps = 1
    concrete.place_as_tile.result = "concrete-"..color
    concrete.order = "c-aa"..pad..i.."-"..color.."]"
    concrete.subgroup = "color-concrete"
    table.insert(color_items,concrete)

    local rconcrete = util.table.deepcopy(data.raw["item"]["refined-hazard-concrete"])
    rconcrete.name = "refined-concrete-"..color
    rconcrete.icon = "__color-coding__/graphics/concrete/"..color.."/refined-icon.png"
    rconcrete.icon_size = 32
    rconcrete.icon_mipmaps = 1
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

-- replace stock lamp icon with "brighter" one to make sure it's consistent with, but distinct from, the white indicator lamps
data.raw["item"]["small-lamp"].icon = "__color-coding__/graphics/lamp/stock/icon.png"
data.raw["item"]["small-lamp"].icon_size = 32
data.raw["item"]["small-lamp"].icon_mipmaps = 1

-- colored indicator lamp inventory items
i = 0
for color,rgb in pairs(config.colors) do
    --ugly numbering/zero padding hack to get the crafting screen to sort chromatically rather than alphabetically
    i = i + 1
    if i < 10 then pad = "0" else pad = "" end
    lamp = util.table.deepcopy(data.raw["item"]["small-lamp"])
    lamp.name = "small-lamp-"..color
    lamp.icon = "__color-coding__/graphics/lamp/"..color.."/icon.png"
    lamp.icon_size = 32
    lamp.icon_mipmaps = 1
    lamp.place_result = "small-lamp-"..color
    lamp.order = "l-a"..pad..i.."-"..color.."]"
    lamp.subgroup = "color-lamps"
    table.insert(color_items,lamp)
end

data:extend(color_items)
