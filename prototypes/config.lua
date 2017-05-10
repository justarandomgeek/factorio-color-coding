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
--  The RGB values control the color of the pixels on the minimap for each type of concrete
--
COLOR_SOLID_TABLE = {}
COLOR_SOLID_TABLE["red"    ]={r=1.0, g=0.1, b=0.1}
COLOR_SOLID_TABLE["orange" ]={r=1.0, g=0.5, b=0.1}
COLOR_SOLID_TABLE["yellow" ]={r=1.0, g=1.0, b=0.1}
COLOR_SOLID_TABLE["green"  ]={r=0.1, g=1.0, b=0.1}
COLOR_SOLID_TABLE["cyan"   ]={r=0.1, g=1.0, b=1.0}
COLOR_SOLID_TABLE["blue"   ]={r=0.1, g=0.1, b=1.0}
COLOR_SOLID_TABLE["purple" ]={r=0.5, g=0.1, b=1.0}
COLOR_SOLID_TABLE["magenta"]={r=1.0, g=0.1, b=1.0}
COLOR_SOLID_TABLE["white"  ]={r=1.0, g=1.0, b=1.0}
COLOR_SOLID_TABLE["black"  ]={r=0.1, g=0.1, b=0.1}

--
--  This table adds textured concretes only (does not affect lamps)
--  To add another concrete all you have to do is add an appropriate line here,
--  then make a new folder in graphics/concrete/ to match and add your texture assets there.
--
COLOR_DIAGONAL_TABLE = {}
COLOR_DIAGONAL_TABLE["red-diagonal"        ]={r=1.0, g=0.1, b=0.1}
COLOR_DIAGONAL_TABLE["orange-diagonal"     ]={r=1.0, g=0.5, b=0.1}
COLOR_DIAGONAL_TABLE["yellow-diagonal"     ]={r=1.0, g=1.0, b=0.1}
COLOR_DIAGONAL_TABLE["green-diagonal"      ]={r=0.1, g=1.0, b=0.1}
COLOR_DIAGONAL_TABLE["cyan-diagonal"       ]={r=0.1, g=1.0, b=1.0}
COLOR_DIAGONAL_TABLE["blue-diagonal"       ]={r=0.1, g=0.1, b=1.0}
COLOR_DIAGONAL_TABLE["purple-diagonal"     ]={r=0.5, g=0.1, b=1.0}
COLOR_DIAGONAL_TABLE["magenta-diagonal"    ]={r=1.0, g=0.1, b=1.0}
COLOR_DIAGONAL_TABLE["white-diagonal"      ]={r=1.0, g=1.0, b=1.0}
COLOR_DIAGONAL_TABLE["black-diagonal"      ]={r=0.1, g=0.1, b=0.1}

--
--  This table adds textured concretes only (does not affect lamps)
--  To add another concrete all you have to do is add an appropriate line here,
--  then make a new folder in graphics/concrete/ to match and add your texture assets there.
--
COLOR_STRIPE_TABLE = {}
COLOR_STRIPE_TABLE["red-stripe"        ]={r=1.0, g=0.1, b=0.1}
COLOR_STRIPE_TABLE["orange-stripe"     ]={r=1.0, g=0.5, b=0.1}
COLOR_STRIPE_TABLE["yellow-stripe"     ]={r=1.0, g=1.0, b=0.1}
COLOR_STRIPE_TABLE["green-stripe"      ]={r=0.1, g=1.0, b=0.1}
COLOR_STRIPE_TABLE["cyan-stripe"       ]={r=0.1, g=1.0, b=1.0}
COLOR_STRIPE_TABLE["blue-stripe"       ]={r=0.1, g=0.1, b=1.0}
COLOR_STRIPE_TABLE["purple-stripe"     ]={r=0.5, g=0.1, b=1.0}
COLOR_STRIPE_TABLE["magenta-stripe"    ]={r=1.0, g=0.1, b=1.0}
COLOR_STRIPE_TABLE["white-stripe"      ]={r=1.0, g=1.0, b=1.0}
COLOR_STRIPE_TABLE["black-stripe"      ]={r=0.1, g=0.1, b=0.1}

--
--  This table adds textured concretes only (does not affect lamps)
--  To add another concrete all you have to do is add an appropriate line here,
--  then make a new folder in graphics/concrete/ to match and add your texture assets there.
--
SPECIALTY_DIAGONAL_TABLE = {}
SPECIALTY_DIAGONAL_TABLE["fire-hazard-diagonal"]={r=1.0, g=0.5, b=0.5}
SPECIALTY_DIAGONAL_TABLE["bio-hazard-diagonal"]={r=0.5, g=1.0, b=0.5}

--
--  This table adds textured concretes only (does not affect lamps)
--  To add another concrete all you have to do is add an appropriate line here,
--  then make a new folder in graphics/concrete/ to match and add your texture assets there.
--
SPECIALTY_STRIPE_TABLE = {}
SPECIALTY_STRIPE_TABLE["fire-hazard-stripe"]={r=1.0, g=0.5, b=0.5}
SPECIALTY_STRIPE_TABLE["bio-hazard-stripe"]={r=0.5, g=1.0, b=0.5}

--  Note that when adding to either table above, you will also need to create/update locale strings in ./locale/en/en.cfg to match.

--Merge tables.
function cctablemerge(tblA, tblB, array_merge)
    if not tblB then
        return tblA
    end
    if array_merge then
        for _, v in pairs(tblB) do
            table.insert(tblA, v)
        end

    else
        for k, v in pairs(tblB) do
            tblA[k] = v
        end
    end
    return tblA
end

COLOR_TABLE = {}
COLOR_TABLE = cctablemerge(COLOR_TABLE, COLOR_SOLID_TABLE)
COLOR_TABLE = cctablemerge(COLOR_TABLE, COLOR_DIAGONAL_TABLE)
COLOR_TABLE = cctablemerge(COLOR_TABLE, COLOR_STRIPE_TABLE)
COLOR_TABLE = cctablemerge(COLOR_TABLE, SPECIALTY_DIAGONAL_TABLE)
COLOR_TABLE = cctablemerge(COLOR_TABLE, SPECIALTY_STRIPE_TABLE)



-- This table controls what color is "next" when rotating to change colors.
NEXT_TABLE = {}
NEXT_TABLE["red-diagonal"         ]={"red-diagonal-left", "red-diagonal-right"}
NEXT_TABLE["orange-diagonal"      ]={"orange-diagonal-left", "orange-diagonal-right"}
NEXT_TABLE["yellow-diagonal"      ]={"yellow-diagonal-left", "yellow-diagonal-right"}
NEXT_TABLE["green-diagonal"       ]={"green-diagonal-left", "green-diagonal-right"}
NEXT_TABLE["cyan-diagonal"        ]={"cyan-diagonal-left", "cyan-diagonal-right"}
NEXT_TABLE["blue-diagonal"        ]={"blue-diagonal-left", "blue-diagonal-right"}
NEXT_TABLE["purple-diagonal"      ]={"purple-diagonal-left", "purple-diagonal-right"}
NEXT_TABLE["magenta-diagonal"     ]={"magenta-diagonal-left", "magenta-diagonal-right"}
NEXT_TABLE["white-diagonal"       ]={"white-diagonal-left", "white-diagonal-right"}
NEXT_TABLE["black-diagonal"       ]={"black-diagonal-left", "black-diagonal-right"}
NEXT_TABLE["fire-hazard-diagonal" ]={"fire-hazard-diagonal-left", "fire-hazard-diagonal-right"}
NEXT_TABLE["bio-hazard-diagonal"  ]={"bio-hazard-diagonal-left", "bio-hazard-diagonal-right"}

NEXT_TABLE["red-stripe"          ]={"red-stripe-vertical", "red-stripe-horizontal"}
NEXT_TABLE["orange-stripe"       ]={"orange-stripe-vertical", "orange-stripe-horizontal"}
NEXT_TABLE["yellow-stripe"       ]={"yellow-stripe-vertical", "yellow-stripe-horizontal"}
NEXT_TABLE["green-stripe"        ]={"green-stripe-vertical", "green-stripe-horizontal"}
NEXT_TABLE["cyan-stripe"         ]={"cyan-stripe-vertical", "cyan-stripe-horizontal"}
NEXT_TABLE["blue-stripe"         ]={"blue-stripe-vertical", "blue-stripe-horizontal"}
NEXT_TABLE["purple-stripe"       ]={"purple-stripe-vertical", "purple-stripe-horizontal"}
NEXT_TABLE["magenta-stripe"      ]={"magenta-stripe-vertical", "magenta-stripe-horizontal"}
NEXT_TABLE["white-stripe"        ]={"white-stripe-vertical", "white-stripe-horizontal"}
NEXT_TABLE["black-stripe"        ]={"black-stripe-vertical", "black-stripe-horizontal"}
NEXT_TABLE["fire-hazard-stripe"  ]={"fire-hazard-stripe-vertical", "fire-hazard-stripe-horizontal"}
NEXT_TABLE["bio-hazard-stripe"   ]={"bio-hazard-stripe-vertical", "bio-hazard-stripe-horizontal"}


TILE_MINE_RESULT={}
for color,_ in pairs(COLOR_TABLE) do
    if not NEXT_TABLE[color] then
        TILE_MINE_RESULT[color]=color
    else
        TILE_MINE_RESULT[color]=NEXT_TABLE[color][1]
    end
end

--COMPONENT TOGGLES
-- WARNING: CHANGING THESE AFTER THE MOD HAS BEEN INSTALLED MAY PREVENT OLD WORLDS FROM LOADING.
-- If you don't have any of the item you disable in your world, then you're probably fine.
-- But if any of these objects are in your world and you disable them, you will lose those items, and the game may even crash.
ENABLE_LAMPS                        = true -- set to false to disable indicator lamps
ENABLE_CONCRETE                     = true -- set to false to disable all color-coding added concrete


--LIGHTING SETTINGS
LAMP_INTENSITY              = 0.5  -- How bright the lights appear to be. 0.0 = no glow, 4.0 = blinding. Default = 0.5
LAMP_SATURATION             = 0.2  -- How colorful the lights are. Keep low to avoid oversaturation. Default 0.2
LAMP_ALPHA                  = 0    -- Transparency of light "halos". 0 = transparent, 1 = opaque (looks weird). Default 0.
LAMP_FLOOD_DIAMETER         = 5    -- Diameter in tiles of the area lit by the lamps. Default 5, (stock lamps are 40).

-- Overrides color of black indicator lamp without messing up black concrete's color on the map
LAMP_BLACKLIGHT_COLOR       = {r=0.75, g=0.5, b=1.0, a=LAMP_ALPHA}


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
