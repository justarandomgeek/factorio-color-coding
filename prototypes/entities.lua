local config = require("prototypes.config")

color_entities = {}

-- create new colored indicator lamp entities
for color,rgb in pairs(config.colors) do
  if color == "black" then
      --override blacklight color without affecting global definition of black
      rgb = config.blacklight
  end

  lamp = util.table.deepcopy(data.raw["lamp"]["small-lamp"])
  lamp.name                      = "small-lamp-"..color
  lamp.icon                      = "__color-coding__/graphics/lamp/"..color.."/icon.png"
  lamp.icon_size = 32
  lamp.icon_mipmaps = 1
  lamp.signal_to_color_mapping   = nil

  lamp.picture_off.layers[1].filename            = "__color-coding__/graphics/lamp/"..color.."/lamp.png"
  lamp.picture_off.layers[1].hr_version.filename = "__color-coding__/graphics/lamp/"..color.."/hr-lamp.png"
  lamp.picture_on.filename            = "__color-coding__/graphics/lamp/"..color.."/lamp-light.png"
  lamp.picture_on.hr_version.filename = "__color-coding__/graphics/lamp/"..color.."/hr-lamp-light.png"
  
  lamp.energy_usage_per_tick     = "250W"
  lamp.light["size"]             = 5
  lamp.light["intensity"]        = 0.5
  lamp.circuit_wire_max_distance = 10
  lamp.light["color"]            = {
      r                          = rgb["r"] * 0.2,
      g                          = rgb["g"] * 0.2,
      b                          = rgb["b"] * 0.2,
  }
  lamp.minable["result"]  = "small-lamp-"..color
  table.insert(color_entities,lamp)
end

data:extend(color_entities)
