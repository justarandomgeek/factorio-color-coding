require("prototypes.config")

color_recipes = {}

if ENABLE_CONCRETE then
    -- recipes for colored concrete
    table.insert(color_recipes,
    {
    type = "recipe",
    name = "colored-rgbw-concrete",
    energy_required = 0.25,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"concrete", 10}
    },
    result= "colored-rgbw-concrete",
    result_count = 10
    })
    
    table.insert(color_recipes,
    {
    type = "recipe",
    name = "colored-cmyk-concrete",
    energy_required = 0.25,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"concrete", 10}
    },
    result= "colored-cmyk-concrete",
    result_count = 10
    })
    table.insert(color_recipes,
    {
    type = "recipe",
    name = "colored-op-concrete",
    energy_required = 0.25,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"concrete", 10}
    },
    result= "colored-op-concrete",
    result_count = 10
    })
    
    table.insert(color_recipes,
    {
    type = "recipe",
    name = "fire-hazard-concrete",
    energy_required = 0.25,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"concrete", 10}
    },
    result= "fire-hazard-concrete",
    result_count = 10
    })
end

if ENABLE_LAMPS then
    -- recipes for colored lamps
    for color,rgb in pairs(COLOR_TABLE) do
        lamp = {}
        lamp.type = "recipe"
        lamp.name = "small-lamp-"..color
        lamp.enabled = false
        lamp.energy_required = CRAFTING_TIME_LAMPS
        lamp.ingredients = {{"small-lamp", 1}}
        lamp.result = "small-lamp-"..color
        table.insert(color_recipes,lamp)
    end
end

data:extend(color_recipes)
