require("prototypes.config")

color_tiles = {}

if ENABLE_CONCRETE then
    -- create new concrete tiles
    function add_concrete(color,rgb)
        concrete = util.table.deepcopy(data.raw["tile"]["hazard-concrete-left"])
        concrete.name = "concrete-"..color
        concrete.next_direction = nil
        concrete.variants.material_background.picture = MOD_NAME.."/graphics/concrete/"..color.."/concrete.png"
        concrete.variants.material_background.hr_version.picture = MOD_NAME.."/graphics/concrete/"..color.."/hr-concrete.png"
        concrete.map_color = {
            r = (rgb["r"] * 0.5),
            g = (rgb["g"] * 0.5),
            b = (rgb["b"] * 0.5)
        }
        concrete.minable["result"] = "concrete-" .. color

        table.insert(color_tiles,concrete)
    end

    for color,rgb in pairs(COLOR_TABLE) do
        add_concrete(color,rgb)
    end
end

data:extend(color_tiles)
