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
COLOR_TABLE = {
    red     ={r=1.0, g=0.1, b=0.1},
    orange  ={r=1.0, g=0.5, b=0.1},
    yellow  ={r=1.0, g=1.0, b=0.1},
    green   ={r=0.1, g=1.0, b=0.1},
    cyan    ={r=0.1, g=1.0, b=1.0},
    blue    ={r=0.1, g=0.1, b=1.0},
    purple  ={r=0.5, g=0.1, b=1.0},
    magenta ={r=1.0, g=0.1, b=1.0},
    white   ={r=1.0, g=1.0, b=1.0},
    black   ={r=0.1, g=0.1, b=0.1},
}

--  Note that when adding to the table above, you will also need to create/update locale strings in ./locale/en/en.cfg to match.

--LIGHTING SETTINGS
LAMP_INTENSITY              = 0.5  -- How bright the lights appear to be. 0.0 = no glow, 4.0 = blinding. Default = 0.5
LAMP_SATURATION             = 0.2  -- How colorful the lights are. Keep low to avoid oversaturation. Default 0.2
LAMP_FLOOD_DIAMETER         = 5    -- Diameter in tiles of the area lit by the lamps. Default 5, (stock lamps are 40).

-- Overrides color of black indicator lamp without messing up black concrete's color on the map
LAMP_BLACKLIGHT_COLOR       = {r=0.75, g=0.5, b=1.0}

-- CRAFTING SETTINGS
-- Times are in seconds. Default is 0.01 (instantaneous) for all crafting times.
CRAFTING_TIME_CONCRETE      = 0.25
CRAFTING_TIME_LAMPS         = 0.01
CRAFTING_TIME_TRAINS        = 0.01

-- Batch size for crafting colored concrete; this is the minimum you can make at once, but larger numbers craft with less clicking
CONCRETE_BATCH_SIZE         = 10

-- UNCRAFTING SETTINGS
-- Set this to 'false' to disable colored items reverting to stock when you pick them up
-- Note that this will make it impossible to revert a colored item to stock, or to convert from one color to another!
UNCRAFT_ITEMS_ON_PICKUP     = false

-- NOTE:
-- After changing any of the crafting settings, you may need to run this command in game,
-- then save, to make the setting change take effect (not needed for new worlds):
--              /c for i,f in pairs(game.forces) do f.reset_recipes() end
