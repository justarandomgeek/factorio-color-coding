local config = require("prototypes.config")

color_tiles = {}

-- create new concrete tiles
function add_concrete(color,rgb)
    local concrete = util.table.deepcopy(data.raw["tile"]["hazard-concrete-left"])
    concrete.name = "concrete-"..color
    concrete.next_direction = nil
    if color == "white" or color == "black" then
        concrete.variants.material_background.picture = "__color-coding__/graphics/concrete/"..color.."/concrete.png"
        concrete.variants.material_background.hr_version.picture = "__color-coding__/graphics/concrete/"..color.."/hr-concrete.png"
    else
        concrete.variants.material_background.picture = "__base__/graphics/terrain/concrete/concrete.png"
        concrete.variants.material_background.hr_version.picture = "__base__/graphics/terrain/concrete/hr-concrete.png"
        concrete.tint = rgb.chat_color
    end
    concrete.map_color = rgb.player_color
    concrete.minable["result"] = "concrete-" .. color

    table.insert(color_tiles,concrete)

    local rconcrete = util.table.deepcopy(data.raw["tile"]["refined-hazard-concrete-left"])
    rconcrete.name = "refined-concrete-"..color
    rconcrete.transition_merges_with_tile = "refined-concrete"
    rconcrete.next_direction = nil
    if color == "white" or color == "black" then
        rconcrete.variants.material_background.picture = "__color-coding__/graphics/concrete/" .. color .. "/refined-concrete.png"
        rconcrete.variants.material_background.hr_version.picture = "__color-coding__/graphics/concrete/" .. color .. "/hr-refined-concrete.png"
    else
        rconcrete.variants.material_background.picture = "__base__/graphics/terrain/concrete/refined-concrete.png"
        rconcrete.variants.material_background.hr_version.picture = "__base__/graphics/terrain/concrete/hr-refined-concrete.png"
        rconcrete.tint = rgb.chat_color
    end
    rconcrete.map_color = {
        r = (rgb.player_color["r"] * 0.5),
        g = (rgb.player_color["g"] * 0.5),
        b = (rgb.player_color["b"] * 0.5),
        a = rgb.player_color["a"]
    }
    rconcrete.minable["result"] = "refined-concrete-" .. color

    table.insert(color_tiles,rconcrete)
end

for color,rgb in pairs(config.colors) do
    add_concrete(color,rgb)
end

data:extend(color_tiles)
