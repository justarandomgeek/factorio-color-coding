local config = require("prototypes.config")

---@param name string
---@param base string
---@param color string
---@param rgb any
---@param concrete boolean
---@param itemname? string
---@return data.TilePrototype
local function tile(name,base,color,rgb,concrete,itemname)
  local t = util.table.deepcopy(data.raw["tile"][base])
  t.name = name.."-"..color
  t.next_direction = nil
  t.transition_merges_with_tile = name
  
  if color == "white" or color == "black" then
    t.variants.material_background.picture = "__color-coding__/graphics/tiles/"..color.."/"..name..".png"
  else
    if concrete then
      t.variants.material_background.picture = "__base__/graphics/terrain/concrete/"..name..".png"
    else
      t.variants.material_background = {
        picture = "__color-coding__/graphics/tiles/plain/"..name..".png",
        count = 8,
        scale = 0.5
      }
    end
    t.tint = rgb.chat_color
  end
  t.map_color = rgb.player_color
  t.minable["result"] = (itemname or name).."-"..color
  t.placeable_by = nil
  return t
end

for color,rgb in pairs(config.colors) do
  local hazard = tile("concrete","hazard-concrete-left",color,rgb,true)
  
  local rconcrete = tile("refined-concrete","refined-hazard-concrete-left",color,rgb,true)
  rconcrete.map_color = {
    r = (rgb.player_color["r"] * 0.5),
    g = (rgb.player_color["g"] * 0.5),
    b = (rgb.player_color["b"] * 0.5),
    a = rgb.player_color["a"]
  }

  local stonepath = tile("stone-path","hazard-concrete-left",color,rgb,false,"stone-brick")
  stonepath.layer = data.raw["tile"]["stone-path"].layer
  stonepath.map_color = {
    r = 0.5 + (rgb.player_color["r"] * 0.5),
    g = 0.5 + (rgb.player_color["g"] * 0.5),
    b = 0.5 + (rgb.player_color["b"] * 0.5),
    a = rgb.player_color["a"]
  }
  
  data.extend{hazard, rconcrete, stonepath}
end
