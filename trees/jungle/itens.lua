minetest.register_craft({
	type = "shapeless",
	output = "default:junglewood 2",
	recipe = {"real_trees:small_jungle_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:junglewood 4",
	recipe = {"real_trees:medium_jungle_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:junglewood 6",
	recipe = {"real_trees:large_jungle_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:junglewood 8",
	recipe = {"default:jungletree"},
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:small_jungle_tree",
	burntime = 9.5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:medium_jungle_tree",
	burntime = 19,
})

minetest.register_craft({
	type = "fuel",
	recipe = "real_trees:large_jungle_tree",
	burntime = 28.5,
})

minetest.override_item("default:junglesapling",{
	on_timer = function(pos)
		jungle_growth(pos,1,2)
	end,

	on_construct = function(pos)
		if jungle_growth(pos,1,1) then
			minetest.get_node_timer(pos):start(growth_time["jungle"] * 1)
		end
	end,
})

minetest.override_item("default:jungletree",{
	tiles = {
			"real_trees_alt_jungle_tree_top.png",
			"real_trees_alt_jungle_tree_top.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			},
})
