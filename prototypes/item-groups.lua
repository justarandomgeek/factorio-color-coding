data:extend({
    {
        -- create new inventory tab and set icon
        type = "item-group",
        name = "color-mod",
        order = "z",
        inventory_order = "z",
        icon = "__color-coding__/graphics/color-coding.png",
        icon_size = 64
    },
    {
        -- row for colored indicator lamps
        type = "item-subgroup",
        name = "color-lamps",
        group = "color-mod",
        order = "l",
    },
    {
        -- row for colored concretes
        type = "item-subgroup",
        name = "color-concrete",
        group = "color-mod",
        order = "x",
    }
})
