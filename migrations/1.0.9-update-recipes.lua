COLORS = {"red","orange","yellow","green","cyan","blue","purple","magenta","white","black"}
CONCRETE = {"fire-hazard"}

for index, force in pairs(game.forces) do
    local technologies = force.technologies;
    local recipes = force.recipes;

    force.reset_recipes()
    force.reset_technologies()

    enable_concrete = false
    enable_lamps = false

    if technologies["colored-concrete"] ~= nil and technologies["colored-concrete"].researched then
        enable_concrete = true
    end
    if technologies["colored-lamps"] ~= nil and technologies["colored-lamps"].researched then
        enable_lamps = true
    end
    
    for i,color in ipairs(COLORS) do
        recipes["concrete-"..color].enabled          = enable_concrete
        recipes["small-lamp-"..color].enabled        = enable_lamps
        recipes["concrete-"..color].reload()
        recipes["small-lamp-"..color].reload()
    end

    for i,color in ipairs(CONCRETE) do
        recipes[color.."-concrete"].enabled          = enable_concrete
        recipes[color.."-concrete"].reload()
    end
end

