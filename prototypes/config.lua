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
colors = {
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
},

--  Note that when adding to the table above, you will also need to create/update locale strings in ./locale/en/en.cfg to match.

-- Overrides color of black indicator lamp without messing up black concrete's color on the map
blacklight       = {r=0.75, g=0.5, b=1.0}
}