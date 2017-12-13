require("prototypes.config")

color_recipes = {}

if ENABLE_CONCRETE then
    -- recipes for colored concrete
    function add_concrete(color,rgb)
        concrete = {}
        concrete.type = "recipe"
        concrete.name = "concrete-"..color
        concrete.enabled = false
        concrete.ingredients = {{"concrete",CONCRETE_BATCH_SIZE}}
        concrete.energy_required = CRAFTING_TIME_CONCRETE
        concrete.result = "concrete-"..color
        concrete.result_count = CONCRETE_BATCH_SIZE
        table.insert(color_recipes,concrete)
    end

    for color,rgb in pairs(COLOR_TABLE) do
        add_concrete(color,rgb)
    end
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
