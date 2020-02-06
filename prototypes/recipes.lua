local config = require("prototypes.config")

color_recipes = {}

-- recipes for colored concrete
function add_concrete(color,rgb)
    local concrete = {}
    concrete.type = "recipe"
    concrete.name = "concrete-"..color
    concrete.enabled = false
    concrete.ingredients = {{"concrete",10}}
    concrete.energy_required = 0.25
    concrete.result = "concrete-"..color
    concrete.result_count = 10
    table.insert(color_recipes,concrete)

    local rconcrete = {}
    rconcrete.type = "recipe"
    rconcrete.name = "refined-concrete-"..color
    rconcrete.enabled = false
    rconcrete.ingredients = {{"refined-concrete",10}}
    rconcrete.energy_required = 0.25
    rconcrete.result = "refined-concrete-"..color
    rconcrete.result_count = 10
    table.insert(color_recipes,rconcrete)
end

for color,rgb in pairs(config.colors) do
    add_concrete(color,rgb)
end

-- recipes for colored lamps
for color,rgb in pairs(config.colors) do
    lamp = {}
    lamp.type = "recipe"
    lamp.name = "small-lamp-"..color
    lamp.enabled = false
    lamp.energy_required = 0.01
    lamp.ingredients = {{"small-lamp", 1}}
    lamp.result = "small-lamp-"..color
    table.insert(color_recipes,lamp)
end

data:extend(color_recipes)
