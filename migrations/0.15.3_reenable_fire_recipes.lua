for _,f in pairs(game.forces) do
  if f.technologies['colored-concrete'].researched then
    f.recipes['fire-hazard-concrete'].enabled=true
  end
end
