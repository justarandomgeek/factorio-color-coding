MOD_NAME = "__color-coding__"

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
COLOR_TABLE = {}
COLOR_TABLE["red"    ]={r=1.0, g=0.1, b=0.1}
COLOR_TABLE["orange" ]={r=1.0, g=0.5, b=0.1}
COLOR_TABLE["yellow" ]={r=1.0, g=1.0, b=0.1}
COLOR_TABLE["green"  ]={r=0.1, g=1.0, b=0.1}
COLOR_TABLE["cyan"   ]={r=0.1, g=1.0, b=1.0}
COLOR_TABLE["blue"   ]={r=0.1, g=0.1, b=1.0}
COLOR_TABLE["purple" ]={r=0.5, g=0.1, b=1.0}
COLOR_TABLE["magenta"]={r=1.0, g=0.1, b=1.0}
COLOR_TABLE["white"  ]={r=1.0, g=1.0, b=1.0}
COLOR_TABLE["black"  ]={r=0.1, g=0.1, b=0.1}

-- This table adds textured concretes only (does not affect lamps or trains)
-- The RGB values control the color of the pixels on the minimap for each type of concrete
-- To add another concrete all you have to do is add an appropriate line here,
-- then make a new folder in graphics/concrete/ to match and add your texture assets there.
FIRE_CONCRETE_TABLE = {}
FIRE_CONCRETE_TABLE["fire-left"   ]={r=1.0, g=0.5, b=0.5}
FIRE_CONCRETE_TABLE["fire-right"  ]={r=1.0, g=0.5, b=0.5}

--  Note that when adding to either table above, you will also need to create/update locale strings in ./locale/en/en.cfg to match.



-- This table controls what color is "next" when rotating to change colors. 
NEXT_COLOR_TABLE = {}

NEXT_COLOR_TABLE["red"    ]="green"
NEXT_COLOR_TABLE["green"  ]="blue"
NEXT_COLOR_TABLE["blue"   ]="white"
NEXT_COLOR_TABLE["white"  ]="red"

NEXT_COLOR_TABLE["cyan"   ]="magenta"
NEXT_COLOR_TABLE["magenta"]="yellow"
NEXT_COLOR_TABLE["yellow" ]="black"
NEXT_COLOR_TABLE["black"  ]="cyan"

NEXT_COLOR_TABLE["orange" ]="purple"
NEXT_COLOR_TABLE["purple" ]="orange"

NEXT_COLOR_TABLE["fire-left" ]="fire-right"
NEXT_COLOR_TABLE["fire-right"]="fire-left"

TILE_MINE_RESULT={}
TILE_MINE_RESULT["red"    ]="colored-rgbw-concrete"
TILE_MINE_RESULT["green"  ]="colored-rgbw-concrete"
TILE_MINE_RESULT["blue"   ]="colored-rgbw-concrete"
TILE_MINE_RESULT["white"  ]="colored-rgbw-concrete"

TILE_MINE_RESULT["cyan"   ]="colored-cmyk-concrete"
TILE_MINE_RESULT["magenta"]="colored-cmyk-concrete"
TILE_MINE_RESULT["yellow" ]="colored-cmyk-concrete"
TILE_MINE_RESULT["black"  ]="colored-cmyk-concrete"

TILE_MINE_RESULT["orange" ]="colored-op-concrete"
TILE_MINE_RESULT["purple" ]="colored-op-concrete"

TILE_MINE_RESULT["fire-left" ]="fire-hazard-concrete"
TILE_MINE_RESULT["fire-right"]="fire-hazard-concrete"


--COMPONENT TOGGLES
-- WARNING: CHANGING THESE AFTER THE MOD HAS BEEN INSTALLED MAY PREVENT OLD WORLDS FROM LOADING.
-- If you don't have any of the item you disable in your world, then you're probably fine.
-- But if any of these objects are in your world and you disable them, you will lose those items, and the game may even crash.
ENABLE_LAMPS = true                -- set to false to disable indicator lamps
ENABLE_CONCRETE = true             -- set to false to disable colored and textured concrete


--LIGHTING SETTINGS
LAMP_INTENSITY              = 0.5  -- How bright the lights appear to be. 0.0 = no glow, 4.0 = blinding. Default = 0.5
LAMP_SATURATION             = 0.2  -- How colorful the lights are. Keep low to avoid oversaturation. Default 0.2
LAMP_ALPHA                  = 0    -- Transparency of light "halos". 0 = transparent, 1 = opaque (looks weird). Default 0.
LAMP_FLOOD_DIAMETER         = 5    -- Diameter in tiles of the area lit by the lamps. Default 5, (stock lamps are 40).

-- Overrides color of black indicator lamp without messing up black concrete's color on the map
LAMP_BLACKLIGHT_COLOR       = {r=0.75, g=0.5, b=1.0, a=LAMP_ALPHA}


-- CRAFTING SETTINGS
-- Times are in seconds. Default is 0.01 (instantaneous) for all crafting times.
CRAFTING_TIME_CONCRETE      = 0.01
CRAFTING_TIME_LAMPS         = 0.01
CRAFTING_TIME_TRAINS        = 0.01

-- Batch size for crafting colored concrete; this is the minimum you can make at once, but larger numbers craft with less clicking
CONCRETE_BATCH_SIZE         = 10

-- UNCRAFTING SETTINGS
-- Set this to 'false' to disable colored items reverting to stock when you pick them up
-- Note that this will make it impossible to revert a colored item to stock, or to convert from one color to another!
UNCRAFT_ITEMS_ON_PICKUP     = true

-- NOTE:
-- After changing any of the crafting settings, you may need to run this command in game,
-- then save, to make the setting change take effect (not needed for new worlds):
--              /c for i,f in pairs(game.forces) do f.reset_recipes() end
