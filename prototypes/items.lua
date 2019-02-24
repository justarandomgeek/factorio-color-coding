require("prototypes.config")

color_items = {}

if ENABLE_CONCRETE then
    -- colored concrete inventory items
    function add_concrete(color,rgb,pad,i)
        local concrete = util.table.deepcopy(data.raw["item"]["hazard-concrete"])
        concrete.name = "concrete-"..color
        concrete.icon = MOD_NAME.."/graphics/concrete/"..color.."/icon.png"
        concrete.icon_size = 32
        concrete.place_as_tile.result = "concrete-"..color
        concrete.order = "c-aa"..pad..i.."-"..color.."]"
        concrete.subgroup = "color-concrete"
        table.insert(color_items,concrete)

        local rconcrete = util.table.deepcopy(data.raw["item"]["refined-hazard-concrete"])
        rconcrete.name = "refined-concrete-"..color
        rconcrete.icon = MOD_NAME.."/graphics/concrete/"..color.."/refined-icon.png"
        rconcrete.icon_size = 32
        rconcrete.place_as_tile.result = "refined-concrete-"..color
        rconcrete.order = "c-ab"..pad..i.."-"..color.."]"
        rconcrete.subgroup = "color-concrete"
        table.insert(color_items,rconcrete)
    end

    i = 0
    for color,rgb in pairs(COLOR_TABLE) do
        --ugly numbering/zero padding hack to get the crafting screen to sort chromatically rather than alphabetically
        i = i + 1
        if i < 10 then pad = "0" else pad = "" end
        add_concrete(color,rgb,pad,i)
    end
end

if ENABLE_LAMPS then
    -- replace stock lamp icon with "brighter" one to make sure it's consistent with, but distinct from, the white indicator lamps
    data.raw["item"]["small-lamp"].icon = MOD_NAME.."/graphics/lamp/stock/icon.png"

    -- colored indicator lamp inventory items
    i = 0
    for color,rgb in pairs(COLOR_TABLE) do
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
