local config = require("prototypes.config")

local color_items = {}

local function simple_item(name,subgroup,color,rgb,order,place_as,place_name)
  local item = {
    type = "item",
    name = name.."-"..color,
    icons = {
      {
        icon = data.raw["item"][name].icon,
        icon_mipmaps = data.raw["item"][name].icon_mipmaps,
        icon_size = data.raw["item"][name].icon_size,
        tint = rgb.player_color
      },
    },
    
    order = order.."-"..color,
    subgroup = subgroup,
    stack_size = 100
  }
  if place_as == "tile" then
    item.place_as_tile = {
      result = (place_name or name).."-"..color,
      condition_size = 1, condition = {"water-tile"},
    }
  elseif place_as == "entity" then
    item.place_result = (place_name or name).."-"..color
  end
  return item
end

local i = 0
local pad
for color,rgb in pairs(config.colors) do
    i = i + 1
    if i < 10 then pad = "0" else pad = "" end
    table.insert(color_items,simple_item("concrete","color-concrete",color,rgb,"c-ab"..pad..i,"tile"))
    table.insert(color_items,simple_item("refined-concrete","color-refined-concrete",color,rgb,"c-ac"..pad..i,"tile"))
    table.insert(color_items,simple_item("stone-brick","color-bricks",color,rgb,"c-ad"..pad..i,"tile","stone-path"))
    table.insert(color_items,simple_item("stone-wall","color-walls",color,rgb,"c-ae"..pad..i,"entity"))

    local lamp = util.table.deepcopy(data.raw["item"]["small-lamp"])
    lamp.name = "small-lamp-"..color
    lamp.icons = {
      {
        icon = "__base__/graphics/icons/small-lamp.png",
        icon_mipmaps = 4,
        icon_size = 64,
      },
      {
        icon = "__color-coding__/graphics/lamp/small-lamp-bulb.png",
        icon_mipmaps = 4,
        icon_size = 64,
        tint = {
          r = rgb.player_color["r"] * 0.9,
          g = rgb.player_color["g"] * 0.9,
          b = rgb.player_color["b"] * 0.9,
          a = 0.5 + 0.5*rgb.player_color["a"],
        }
      }
    }
    lamp.icon = nil
    lamp.icon_mipmaps = nil
    lamp.icon_size = nil
    lamp.place_result = "small-lamp-"..color
    lamp.order = "l-a"..pad..i.."-"..color
    lamp.subgroup = "color-lamps"

    table.insert(color_items,lamp)
end

data:extend(color_items)
