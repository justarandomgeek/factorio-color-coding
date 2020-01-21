require("prototypes.config")

color_technologies = {}

-- colored concrete tech
concrete = util.table.deepcopy(data.raw["technology"]["railway"])
concrete.name = "colored-concrete"
concrete.icon = "__color-coding__/graphics/concrete/cyan/icon.png"
concrete.icon_size = 32
concrete.prerequisites = {"concrete"}
concrete.unit = {count=50, ingredients={{"automation-science-pack",1},{"logistic-science-pack",1}}, time=30}
concrete.order = "c-c-cc"
concrete.effects = {}
for color,rgb in pairs(COLOR_TABLE) do
    table.insert(concrete.effects, { type="unlock-recipe", recipe="concrete-"..color })
    table.insert(concrete.effects, { type="unlock-recipe", recipe="refined-concrete-"..color })
end
table.insert(color_technologies, concrete)

-- colored indicator lamps tech
lamp = util.table.deepcopy(data.raw["technology"]["optics"])
lamp.name = "colored-lamps"
lamp.icon = "__color-coding__/graphics/lamp/cyan/icon.png"
lamp.icon_size = 32
lamp.prerequisites = {"optics", "circuit-network"}
lamp.unit = {count=20, ingredients={{"automation-science-pack",1},{"logistic-science-pack",1}}, time=15}
lamp.order = "a-h-ac"
lamp.effects = {}
for color,rgb in pairs(COLOR_TABLE) do
    table.insert(lamp.effects, { type="unlock-recipe", recipe="small-lamp-"..color })
end
table.insert(color_technologies, lamp)

data:extend(color_technologies)
