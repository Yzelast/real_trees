minetest.register_node("real_trees:small_tree", {
	description = "Small Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:small_tree",
	tiles = {
			"real_trees_small_tree_top.png",
			"real_trees_small_tree_top.png",
			"default_tree.png",
			"default_tree.png",
			"default_tree.png",
			"default_tree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed", fixed = {{-0.125,-0.5,0.125,0.125,0.5,-0.125}}}
})

minetest.register_node("real_trees:medium_tree", {
	description = "Medium Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:medium_tree",
	tiles = {
			"real_trees_medium_tree_top.png",
			"real_trees_medium_tree_top.png",
			"default_tree.png",
			"default_tree.png",
			"default_tree.png",
			"default_tree.png",
			},

on_place = minetest.rotate_node,
	node_box = {type = "fixed", fixed = {{-0.25,-0.5,0.25,0.25,0.5,-0.25}}}
})

minetest.register_node("real_trees:large_tree", {
	description = "Large Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:large_tree",
	tiles = {
			"real_trees_large_tree_top.png",
			"real_trees_large_tree_top.png",
			"default_tree.png",
			"default_tree.png",
			"default_tree.png",
			"default_tree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed", fixed = {{-0.375,-0.5,0.375,0.375,0.5,-0.375}}}
})

minetest.register_node("real_trees:a_small_tree", {
	description = "A Small Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:small_tree",
	tiles = {
			"real_trees_small_tree_top.png",
			"real_trees_small_tree_top.png",
			"default_tree.png",
			"default_tree.png",
			"default_tree.png",
			"default_tree.png",
			},

	node_box = {type = "fixed", fixed = {{-0.125,-0.5,0.125,0.125,0.5,-0.125}}},
	on_timer = function(pos,elapsed)
		apple_growth(pos,2,2)
	end
})

minetest.register_node("real_trees:a_medium_tree", {
	description = "A Medium Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:medium_tree",
	tiles = {
			"real_trees_medium_tree_top.png",
			"real_trees_medium_tree_top.png",
			"default_tree.png",
			"default_tree.png",
			"default_tree.png",
			"default_tree.png",
			},

	node_box = {type = "fixed", fixed = {{-0.25,-0.5,0.25,0.25,0.5,-0.25}}},
	on_timer = function(pos,elapsed) 
		apple_growth(pos,3,2)
	end
})

minetest.register_node("real_trees:a_large_tree", {
	description = "A Large Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:large_tree",
	tiles = {
			"real_trees_large_tree_top.png",
			"real_trees_large_tree_top.png",
			"default_tree.png",
			"default_tree.png",
			"default_tree.png",
			"default_tree.png",
			},

	node_box = {type = "fixed", fixed = {{-0.375,-0.5,0.375,0.375,0.5,-0.375}}},
	on_timer = function(pos,elapsed)
		apple_growth(pos,4,2)
	end
})
