require("prototypes.config")

color_technologies = {}

if ENABLE_CONCRETE then
-- colored concrete tech
    concrete = util.table.deepcopy(data.raw["technology"]["railway"])
    concrete.name = "colored-concrete"
    concrete.icon = MOD_NAME.."/graphics/concrete/cyan/icon.png"
    concrete.prerequisites = {"concrete"}
    concrete.unit = {count=50, ingredients={{"science-pack-1",1},{"science-pack-2",1}}, time=30}
    concrete.order = "c-c-cc"
    concrete.effects = {}
    for color,rgb in pairs(COLOR_TABLE) do
        table.insert(concrete.effects, { type="unlock-recipe", recipe="concrete-"..color })
    end
    table.insert(concrete.effects, { type="unlock-recipe", recipe="fire-hazard-concrete" })
    table.insert(color_technologies, concrete)
end

if ENABLE_LAMPS then
-- colored indicator lamps tech
    lamp = util.table.deepcopy(data.raw["technology"]["optics"])
    lamp.name = "colored-lamps"
    lamp.icon = MOD_NAME.."/graphics/lamp/cyan/icon.png"
    lamp.prerequisites = {"optics", "circuit-network"}
    lamp.unit = {count=20, ingredients={{"science-pack-1",1},{"science-pack-2",1}}, time=15}
    lamp.order = "a-h-ac"
    lamp.effects = {}
    for color,rgb in pairs(COLOR_TABLE) do
        table.insert(lamp.effects, { type="unlock-recipe", recipe="small-lamp-"..color })
    end
    table.insert(color_technologies, lamp)
end

if ENABLE_TRAINS then
-- colored trains tech
    train = util.table.deepcopy(data.raw["technology"]["railway"])
    train.name = "colored-trains"
    train.icon = MOD_NAME.."/graphics/locomotive/cyan/icon.png"
    train.prerequisites = {"railway"}
    train.unit = {count=30, ingredients={{"science-pack-1",1},{"science-pack-2",1}}, time=20}
    train.order = "c-g-ac"
    train.effects = {}
    for color,rgb in pairs(COLOR_TABLE) do
        table.insert(train.effects, { type="unlock-recipe", recipe="diesel-locomotive-"..color })
    end
    table.insert(color_technologies, train)
end

data:extend(color_technologies)
