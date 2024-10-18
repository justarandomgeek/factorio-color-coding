local config = require("prototypes.config")

---@param name string
---@param color string
---@param energy_required number
---@param result_count number
---@return data.RecipePrototype
local function recipe(name,color,energy_required,result_count)
  return {
    type = "recipe",
    name = name.."-"..color,
    enabled = false,
    ingredients = {
      {type="item", name=name, amount=result_count}
    },
    energy_required = energy_required,
    results = {
      {type="item", name=name.."-"..color, amount=result_count}
    },
  }--[[@as data.RecipePrototype]]
end

for color in pairs(config.colors) do
  data:extend{
    recipe("stone-brick",color,0.25,10),
    recipe("concrete",color,0.25,10),
    recipe("refined-concrete",color,0.25,10),
    recipe("small-lamp",color,0.25,1),
    recipe("stone-wall",color,0.25,1),
  }
end

