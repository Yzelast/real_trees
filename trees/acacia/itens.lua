minetest.register_craft({
	type = "shapeless",
	output = "default:acacia_wood 2",
	recipe = {"real_trees:small_acacia_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:acacia_wood 4",
	recipe = {"real_trees:medium_acacia_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:acacia_wood 6",
	recipe = {"real_trees:large_acacia_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:acacia_wood 8",
	recipe = {"default:acacia_tree"},
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:small_acacia_tree",
	burntime = 8.5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:medium_acacia_tree",
	burntime = 17,
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:large_acacia_tree",
	burntime = 25.5,
})

minetest.override_item("default:acacia_sapling",{
	on_timer = function(pos)
		acacia_growth(pos,1,2)
	end,

	on_construct = function(pos)
		if acacia_growth(pos,1,1) then 
			minetest.get_node_timer(pos):start(growth_time["acacia"] * 1)
		end
	end
})

