minetest.register_craft({
	type = "shapeless",
	output = "default:aspen_wood 2",
	recipe = {"real_trees:small_aspen_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:aspen_wood 4",
	recipe = {"real_trees:medium_aspen_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:aspen_wood 6",
	recipe = {"real_trees:large_aspen_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:aspen_wood 8",
	recipe = {"default:aspen_tree"},
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:small_aspen_tree",
	burntime = 5.5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:medium_aspen_tree",
	burntime = 11,
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:large_aspen_tree",
	burntime = 16.5,
})

minetest.override_item("default:aspen_sapling",{
	on_timer = function(pos)
		aspen_growth(pos,1,2)
	end,

	on_construct = function(pos)
		if aspen_growth(pos,1,1) then
			minetest.get_node_timer(pos):start(growth_time["aspen"] * 1)
		end
	end,
})

