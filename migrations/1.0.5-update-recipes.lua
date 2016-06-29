COLORS = {"red","orange","yellow","green","cyan","blue","purple","magenta","white","black"}
TEXTURES = {"hazard-left","hazard-right","fire-left","fire-right"}

for index, force in pairs(game.forces) do
    local technologies = force.technologies;
    local recipes = force.recipes;

    force.reset_recipes()
    force.reset_technologies()

    enable_concrete = false
    enable_trains = false
    enable_lamps = false

    if technologies["colored-concrete"] ~= nil and technologies["colored-concrete"].researched then
        enable_concrete = true
    end
    if technologies["colored-lamps"] ~= nil and technologies["colored-lamps"].researched then
        enable_lamps = true
    end
    if technologies["colored-trains"] ~= nil and technologies["colored-trains"].researched then
        enable_trains = true
    end

    for i,color in ipairs(COLORS) do
        recipes["concrete-"..color].enabled          = enable_concrete
        recipes["small-lamp-"..color].enabled        = enable_lamps
        recipes["diesel-locomotive-"..color].enabled = enable_trains
        recipes["concrete-"..color].reload()
        recipes["small-lamp-"..color].reload()
        recipes["diesel-locomotive-"..color].reload()
    end

    for i,color in ipairs(TEXTURES) do
        recipes["concrete-"..color].enabled          = enable_concrete
        recipes["concrete-"..color].reload()
    end
end

