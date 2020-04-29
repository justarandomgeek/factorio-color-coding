local config = require("prototypes.config")

color_entities = {}

-- create new colored indicator lamp entities
for color,rgb in pairs(config.colors) do
  lamp = util.table.deepcopy(data.raw["lamp"]["small-lamp"])
  lamp.name                      = "small-lamp-"..color
  lamp.icons = {
    {
      icon = lamp.icon,
      icon_mipmaps = lamp.icon_mipmaps,
      icon_size = lamp.icon_size,
      tint = rgb.player_color
    }
  }
  lamp.icon = nil
  lamp.icon_mipmaps = nil
  lamp.icon_size = nil
  lamp.signal_to_color_mapping   = nil

  if color == "black" then
    --override blacklight color without affecting global definition of black
    lamp.picture_on.tint = config.blacklight.on_tint
    lamp.picture_on.hr_version.tint = config.blacklight.on_tint
    lamp.picture_off.layers[1].tint = config.blacklight.off_tint
    lamp.picture_off.layers[1].hr_version.tint = config.blacklight.off_tint
  else
    local tint = {
      r = rgb.player_color["r"],
      g = rgb.player_color["g"],
      b = rgb.player_color["b"],
      --a = rgb.chat_color["a"],
    }
    lamp.picture_on.tint = tint
    lamp.picture_on.hr_version.tint = tint
    lamp.picture_off.layers[1].tint = tint
    lamp.picture_off.layers[1].hr_version.tint = tint
  end
  
  lamp.energy_usage_per_tick     = "250W"
  lamp.light["size"]             = 5
  lamp.light["intensity"]        = 1
  lamp.circuit_wire_max_distance = 10
  lamp.light["color"]            = {
      r                          = rgb.chat_color["r"],
      g                          = rgb.chat_color["g"],
      b                          = rgb.chat_color["b"],
  }
  lamp.minable["result"]  = "small-lamp-"..color
  table.insert(color_entities,lamp)
end

data:extend(color_entities)
