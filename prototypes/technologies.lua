local config = require("prototypes.config")

local color_technologies = {}

local function tech(name,prereq,count,time,order,unlocks)
  local t = {
    type = "technology",
    name = name,
    icon = "__color-coding__/graphics/"..name..".png",
    icon_size = 128,
    prerequisites = prereq,
    unit = {count=count, ingredients={{"automation-science-pack",1},{"logistic-science-pack",1}}, time=time},
    order = order,
    effects = {},
  }
  for color,rgb in pairs(config.colors) do
    for _,recipe in pairs(unlocks) do
      table.insert(t.effects, { type="unlock-recipe", recipe=recipe.."-"..color })
    end
  end
  return t
end

data:extend{
  tech("colored-concrete",{"colored-bricks","concrete"},50,30,"c-c-cc",{"concrete","refined-concrete"}),
  tech("colored-lamps",{"optics","circuit-network"},20,12,"a-h-ac",{"small-lamp"}),
  tech("colored-walls",{"colored-bricks","stone-wall","logistic-science-pack"},20,12,"a-l-ac",{"stone-wall"}),
  tech("colored-bricks",{"logistic-science-pack"},50,30,"b-dc",{"stone-brick"}),
}
