data:extend({
    {
        -- create new inventory tab and set icon
        type = "item-group",
        name = "color-mod",
        order = "z",
        inventory_order = "z",
        icon = MOD_NAME.."/graphics/color-coding.png",
        icon_size = 64
    },
    {
        -- row for colored indicator lamps
        type = "item-subgroup",
        name = "color-lamps",
        group = "color-mod",
        order = "a",
    },
    {
        -- row for colored concretes
        type = "item-subgroup",
        name = "color-concrete-solid",
        group = "color-mod",
        order = "f",
    },
    {
        -- row for diagonal concretes
        type = "item-subgroup",
        name = "color-concrete-diagonal",
        group = "color-mod",
        order = "g",
    },
    {
        -- row for striped concretes
        type = "item-subgroup",
        name = "color-concrete-stripe",
        group = "color-mod",
        order = "h",
    },
    {
        -- row for specialty concretes
        type = "item-subgroup",
        name = "color-concrete-diagonal-specialty",
        group = "color-mod",
        order = "i",
    },
    {
        -- row for specialty concretes
        type = "item-subgroup",
        name = "color-concrete-stripe-specialty",
        group = "color-mod",
        order = "j",
    },
})
