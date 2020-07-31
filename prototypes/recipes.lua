local config = require("prototypes.config")

local color_recipes = {}

local function recipe(name,color,energy_required,result_count)
  return {
    type = "recipe",
    name = name.."-"..color,
    enabled = false,
    ingredients = {{name,result_count}},
    energy_required = energy_required,
    result = name.."-"..color,
    result_count = result_count,
  }
end

for color,rgb in pairs(config.colors) do
  table.insert(color_recipes,recipe("stone-brick",color,0.25,10))
  table.insert(color_recipes,recipe("concrete",color,0.25,10))
  table.insert(color_recipes,recipe("refined-concrete",color,0.25,10))
  table.insert(color_recipes,recipe("small-lamp",color,0.01,1))
  table.insert(color_recipes,recipe("stone-wall",color,0.01,1))
end

data:extend(color_recipes)
