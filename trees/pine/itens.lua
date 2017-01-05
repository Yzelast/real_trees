minetest.register_craft({
	type = "shapeless",
	output = "default:pine_wood 2",
	recipe = {"real_trees:small_pine_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:pine_wood 4",
	recipe = {"real_trees:medium_pine_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:pine_wood 6",
	recipe = {"real_trees:large_pine_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:pine_wood 8",
	recipe = {"default:pine_tree"},
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:small_pine_tree",
	burntime = 5.5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:medium_pine_tree",
	burntime = 13,
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:large_pine_tree",
	burntime = 19.5,
})

minetest.override_item("default:pine_sapling",{
	on_timer = function(pos) 
		pine_growth(pos,1,2)
end,

on_construct = function(pos)
	if pine_growth(pos,1,1) then
		minetest.get_node_timer(pos):start(growth_time["pine"] * 1)
	end
end,
})
