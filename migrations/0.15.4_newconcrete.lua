for _,f in pairs(game.forces) do
    if f.technologies['colored-concrete'].researched then
        f.recipes['concrete-red-diagonal'].enabled=true
        f.recipes['concrete-orange-diagonal'].enabled=true
        f.recipes['concrete-yellow-diagonal'].enabled=true
        f.recipes['concrete-green-diagonal'].enabled=true
        f.recipes['concrete-cyan-diagonal'].enabled=true
        f.recipes['concrete-blue-diagonal'].enabled=true
        f.recipes['concrete-purple-diagonal'].enabled=true
        f.recipes['concrete-magenta-diagonal'].enabled=true
        f.recipes['concrete-white-diagonal'].enabled=true
        f.recipes['concrete-black-diagonal'].enabled=true
        f.recipes['concrete-fire-hazard-diagonal'].enabled=true

        f.recipes['concrete-red-stripe'].enabled=true
        f.recipes['concrete-orange-stripe'].enabled=true
        f.recipes['concrete-yellow-stripe'].enabled=true
        f.recipes['concrete-green-stripe'].enabled=true
        f.recipes['concrete-cyan-stripe'].enabled=true
        f.recipes['concrete-blue-stripe'].enabled=true
        f.recipes['concrete-purple-stripe'].enabled=true
        f.recipes['concrete-magenta-stripe'].enabled=true
        f.recipes['concrete-white-stripe'].enabled=true
        f.recipes['concrete-black-stripe'].enabled=true
        f.recipes['concrete-fire-hazard-stripe'].enabled=true
    end
end
