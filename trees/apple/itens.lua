minetest.register_craft({
	type = "shapeless",
	output = "default:wood 2",
	recipe = {"real_trees:small_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:wood 4",
	recipe = {"real_trees:medium_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:wood 6",
	recipe = {"real_trees:large_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:wood 8",
	recipe = {"default:tree"},
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:small_tree",
	burntime = 7.5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:medium_tree",
	burntime = 15,
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:large_tree",
	burntime = 22.5,
})

minetest.override_item("default:sapling",{
	on_timer = function(pos)
		apple_growth(pos,1,2)
	end,

	on_construct = function(pos)
		if apple_growth(pos,1,1) then
			minetest.get_node_timer(pos):start(growth_time["apple"] * 1)
		end
	end
})
