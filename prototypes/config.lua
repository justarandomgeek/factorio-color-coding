return {
  --  These tables are the foundation of the rest of the mod
  --  EVERYTHING is derived from these lists:
  --    * entity names
  --    * sprite folder paths
  --    * lamp light color
  --    * map pixel colors for the concrete
  --
  --  To add a color (for all item types) you need to create the right folders, spritesheets, and icons, then add a line here.
  --  To rename a color, simply rename it below. Note: all items of the old color name will disappear from your saves!
  --  To disable a color, comment it (--) out. Again: all items of that color will disappear from your saves!
  --
  -- copied from Factorio's own colored concrete, which is copied and tweaked from util constants
  colors = {
    red =     { player_color = { r = 0.815, g = 0.024, b = 0.0  , a = 0.5 }, chat_color = { r = 1.000, g = 0.266, b = 0.241 } },
    green =   { player_color = { r = 0.093, g = 0.768, b = 0.172, a = 0.5 }, chat_color = { r = 0.173, g = 0.824, b = 0.250 } },
    blue =    { player_color = { r = 0.155, g = 0.540, b = 0.898, a = 0.5 }, chat_color = { r = 0.343, g = 0.683, b = 1.000 } },
    orange =  { player_color = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 }, chat_color = { r = 1.000, g = 0.630, b = 0.259 } },
    yellow =  { player_color = { r = 0.835, g = 0.666, b = 0.077, a = 0.5 }, chat_color = { r = 1.000, g = 0.828, b = 0.231 } },
    pink =    { player_color = { r = 0.929, g = 0.386, b = 0.514, a = 0.5 }, chat_color = { r = 1.000, g = 0.720, b = 0.833 } },
    purple =  { player_color = { r = 0.485, g = 0.111, b = 0.659, a = 0.5 }, chat_color = { r = 0.821, g = 0.440, b = 0.998 } },
    black =   { player_color = { r = 0.1  , g = 0.1  , b = 0.1,   a = 0.5 }, chat_color = { r = 0.5  , g = 0.5  , b = 0.5   } },
    brown =   { player_color = { r = 0.300, g = 0.117, b = 0.0,   a = 0.5 }, chat_color = { r = 0.757, g = 0.522, b = 0.371 } },
    cyan =    { player_color = { r = 0.275, g = 0.755, b = 0.712, a = 0.5 }, chat_color = { r = 0.335, g = 0.918, b = 0.866 } },
    acid =    { player_color = { r = 0.559, g = 0.761, b = 0.157, a = 0.5 }, chat_color = { r = 0.708, g = 0.996, b = 0.134 } },
    white =   { player_color = { r = 1.0  , g = 1.0  , b = 1.0  , a = 0.5 }, chat_color = { r = 1.0  , g = 1.0  , b = 1.0   } },
  },

  --  Note that when adding to the table above, you will also need to create/update locale strings in ./locale/en/en.cfg to match.

  -- Overrides color of black indicator lamp without messing up black concrete's color on the map
  blacklight       = {
    on_tint = { r = 0.6, g = 0.3, b = 0.8 },
    off_tint = { r = 0.1, g = 0.1, b = 0.1 },
    chat_color = { r = 0.75, g = 0.5, b = 1.0 }
  },
}