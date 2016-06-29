require("prototypes.config")

color_tiles = {}

if ENABLE_CONCRETE then
    -- create new concrete tiles
    function add_concrete(color,rgb)
        concrete = util.table.deepcopy(data.raw["tile"]["concrete"])
        concrete.name                           = "concrete-"..color
        concrete.variants.main[1].picture       = MOD_NAME.."/graphics/concrete/"..color.."/concrete1.png"
        concrete.variants.main[2].picture       = MOD_NAME.."/graphics/concrete/"..color.."/concrete2.png"
        concrete.variants.main[3].picture       = MOD_NAME.."/graphics/concrete/"..color.."/concrete4.png"
        concrete.variants.inner_corner.picture  = MOD_NAME.."/graphics/concrete/"..color.."/concrete-inner-corner.png"
        concrete.variants.outer_corner.picture  = MOD_NAME.."/graphics/concrete/"..color.."/concrete-outer-corner.png"
        concrete.variants.side.picture          = MOD_NAME.."/graphics/concrete/"..color.."/concrete-side.png"
        concrete.variants.u_transition.picture  = MOD_NAME.."/graphics/concrete/"..color.."/concrete-u.png"
        concrete.variants.o_transition.picture  = MOD_NAME.."/graphics/concrete/"..color.."/concrete-o.png"
        concrete.map_color = {
            r = (rgb["r"] * 0.5),
            g = (rgb["g"] * 0.5),
            b = (rgb["b"] * 0.5)
        }
        if UNCRAFT_ITEMS_ON_PICKUP then
            concrete.minable["result"] = "concrete"
        else
            concrete.minable["result"] = "concrete-"..color
        end

        table.insert(color_tiles,concrete)
    end

    for color,rgb in pairs(COLOR_TABLE) do
        add_concrete(color,rgb)
    end

    for color,rgb in pairs(TEXTURE_CONCRETE_TABLE) do
        add_concrete(color,rgb)
    end
end

data:extend(color_tiles)
