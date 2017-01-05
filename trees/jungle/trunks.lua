minetest.register_node("real_trees:small_jungle_tree", {
	description = "Small Jungle Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:small_jungle_tree",
	tiles = {
			"real_trees_small_jungle_tree_top.png",
			"real_trees_small_jungle_tree_top.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed",fixed = {{-0.125,-0.5,0.125,0.125,0.5,-0.125}}}
})

minetest.register_node("real_trees:medium_jungle_tree", {
	description = "Medium Jungle Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:medium_jungle_tree",
	tiles = {
			"real_trees_medium_jungle_tree_top.png",
			"real_trees_medium_jungle_tree_top.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed",fixed = {{-0.25,-0.5,0.25,0.25,0.5,-0.25}}}
})

minetest.register_node("real_trees:large_jungle_tree", {
	description = "Large Jungle Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:large_jungle_tree",
	tiles = {
			"real_trees_large_jungle_tree_top.png",
			"real_trees_large_jungle_tree_top.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed",fixed = {{-0.375,-0.5,0.375,0.375,0.5,-0.375}}}
})

minetest.register_node("real_trees:a_small_jungle_tree", {
	description = "A Small Jungle Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:small_jungle_tree",
	tiles = {
			"real_trees_small_jungle_tree_top.png",
			"real_trees_small_jungle_tree_top.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			},

	node_box = {type = "fixed",fixed = {{-0.125,-0.5,0.125,0.125,0.5,-0.125}}},
	on_timer = function(pos,elapsed)
		jungle_growth(pos,2,2)
	end
})

minetest.register_node("real_trees:a_medium_jungle_tree", {
	description = "A Medium Jungle Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:medium_jungle_tree",
	tiles = {
			"real_trees_medium_jungle_tree_top.png",
			"real_trees_medium_jungle_tree_top.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			},

	node_box = {type = "fixed",fixed = {{-0.25,-0.5,0.25,0.25,0.5,-0.25}}},
	on_timer = function(pos,elapsed)
		jungle_growth(pos,3,2)
	end,
})

minetest.register_node("real_trees:a_large_jungle_tree", {
	description = "A Large Jungle Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:large_jungle_tree",
	tiles = {
			"real_trees_large_jungle_tree_top.png",
			"real_trees_large_jungle_tree_top.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			"default_jungletree.png",
			},

	node_box = {type = "fixed",fixed = {{-0.375,-0.5,0.375,0.375,0.5,-0.375}}},
	on_timer = function(pos,elapsed)
		jungle_growth(pos,4,2)
	end
})
