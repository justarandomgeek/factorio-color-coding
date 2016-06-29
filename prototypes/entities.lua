require("prototypes.config")

color_entities = {}

if ENABLE_LAMPS then
    -- create new colored indicator lamp entities
    for color,rgb in pairs(COLOR_TABLE) do
        lamp = util.table.deepcopy(data.raw["lamp"]["small-lamp"])
        lamp.name                      = "small-lamp-"..color
        lamp.icon                      = MOD_NAME.."/graphics/lamp/"..color.."/icon.png"
        lamp.picture_off.filename      = MOD_NAME.."/graphics/lamp/"..color.."/light-off.png"
        lamp.picture_on.filename       = MOD_NAME.."/graphics/lamp/"..color.."/light-on-patch.png"
        lamp.picture_off.shift         = {0,0}
        lamp.picture_on.shift          = {-0.015625,-0.1875}
        lamp.energy_usage_per_tick     = "250W"
        lamp.light["size"]             = LAMP_FLOOD_DIAMETER
        lamp.light["intensity"]        = LAMP_INTENSITY
        lamp.circuit_wire_max_distance = 10
        if color == "black" then
            --override blacklight color without affecting global definition of black
            rgb = LAMP_BLACKLIGHT_COLOR
        end
        lamp.light["color"]            = {
            r                          = rgb["r"] * LAMP_SATURATION,
            g                          = rgb["g"] * LAMP_SATURATION,
            b                          = rgb["b"] * LAMP_SATURATION,
            a                          = LAMP_ALPHA
        }
        if UNCRAFT_ITEMS_ON_PICKUP then
            lamp.minable["result"]  = "small-lamp"
        else
            lamp.minable["result"]  = "small-lamp-"..color
        end
        table.insert(color_entities,lamp)
    end
    data.raw["lamp"]["small-lamp"]["picture_off"].shift = {0,0}
    data.raw["lamp"]["small-lamp"]["picture_on"].shift  = {-0.015625,-0.1875}
end

data:extend(color_entities)
