require("prototypes.config")

color_items = {}

if ENABLE_CONCRETE then
    -- colored concrete inventory items
    table.insert(color_items,
    {
    type = "item",
    name = "colored-rgbw-concrete",
    icon = MOD_NAME.."/graphics/concrete/red/icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "terrain",
    order = "b[concrete]-b[colored1]",
    stack_size = 100,
    place_as_tile =
    {
      result = "concrete-red",
      condition_size = 4,
      condition = { "water-tile" }
    }
    })
    table.insert(color_items,
    {
    type = "item",
    name = "colored-cmyk-concrete",
    icon = MOD_NAME.."/graphics/concrete/cyan/icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "terrain",
    order = "b[concrete]-b[colored2]",
    stack_size = 100,
    place_as_tile =
    {
      result = "concrete-cyan",
      condition_size = 4,
      condition = { "water-tile" }
    }
    })
    table.insert(color_items,
    {
    type = "item",
    name = "colored-op-concrete",
    icon = MOD_NAME.."/graphics/concrete/orange/icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "terrain",
    order = "b[concrete]-b[colored3]",
    stack_size = 100,
    place_as_tile =
    {
      result = "concrete-orange",
      condition_size = 4,
      condition = { "water-tile" }
    }
    })
    
    table.insert(color_items,
    {
    type = "item",
    name = "fire-hazard-concrete",
    icon = MOD_NAME.."/graphics/concrete/fire-left/icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "terrain",
    order = "b[concrete]-b[fire]",
    stack_size = 100,
    place_as_tile =
    {
      result = "concrete-fire-left",
      condition_size = 4,
      condition = { "water-tile" }
    }
	 })
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
        lamp.place_result = "small-lamp-"..color
        lamp.order = "l-a"..pad..i.."-"..color.."]"
        lamp.subgroup = "color-lamps"
        table.insert(color_items,lamp)
    end
end

data:extend(color_items)
