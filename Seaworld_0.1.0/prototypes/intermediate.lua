data:extend({
    {
        type = "item",
        name = "SW-ash",
        icon = "__Seaworld__/graphics/icons/ash.png",
        icon_size = 64,
        flags = {},
        subgroup = "seatorio-inter",
        order = "ash",
        stack_size = 1000
    },
})

if deadlock then
	deadlock.add_stack("SW-ash", nil, "deadlock-stacking-1")
end