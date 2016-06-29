require("prototypes.config")

color_entities = {}

if ENABLE_TRAINS then
    -- reskin stock train to use 'unmarked' sprites
    stock_train = data.raw["locomotive"]["diesel-locomotive"]
    stock_train.icon                  = MOD_NAME.."/graphics/locomotive/stock/icon.png"
    stock_train.pictures.filenames[1] = MOD_NAME.."/graphics/locomotive/stock/01.png"
    stock_train.pictures.filenames[2] = MOD_NAME.."/graphics/locomotive/stock/02.png"
    stock_train.pictures.filenames[3] = MOD_NAME.."/graphics/locomotive/stock/03.png"
    stock_train.pictures.filenames[4] = MOD_NAME.."/graphics/locomotive/stock/04.png"
    stock_train.pictures.filenames[5] = MOD_NAME.."/graphics/locomotive/stock/05.png"
    stock_train.pictures.filenames[6] = MOD_NAME.."/graphics/locomotive/stock/06.png"
    stock_train.pictures.filenames[7] = MOD_NAME.."/graphics/locomotive/stock/07.png"
    stock_train.pictures.filenames[8] = MOD_NAME.."/graphics/locomotive/stock/08.png"

    -- create new colored train entities
    for color,rgb in pairs(COLOR_TABLE) do
        train = util.table.deepcopy(data.raw["locomotive"]["diesel-locomotive"])
        train.type                  = "locomotive"
        train.name                  = "diesel-locomotive-"..color
        train.icon                  = MOD_NAME.."/graphics/locomotive/"..color.."/icon.png"
        train.pictures.filenames[1] = MOD_NAME.."/graphics/locomotive/"..color.."/01.png"
        train.pictures.filenames[2] = MOD_NAME.."/graphics/locomotive/"..color.."/02.png"
        train.pictures.filenames[3] = MOD_NAME.."/graphics/locomotive/"..color.."/03.png"
        train.pictures.filenames[4] = MOD_NAME.."/graphics/locomotive/"..color.."/04.png"
        train.pictures.filenames[5] = MOD_NAME.."/graphics/locomotive/"..color.."/05.png"
        train.pictures.filenames[6] = MOD_NAME.."/graphics/locomotive/"..color.."/06.png"
        train.pictures.filenames[7] = MOD_NAME.."/graphics/locomotive/"..color.."/07.png"
        train.pictures.filenames[8] = MOD_NAME.."/graphics/locomotive/"..color.."/08.png"
        if UNCRAFT_ITEMS_ON_PICKUP then
            train.minable["result"] = "diesel-locomotive"
        else
            train.minable["result"] = "diesel-locomotive-"..color
        end

        table.insert(color_entities,train)
    end
end

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
