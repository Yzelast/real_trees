minetest.register_node("real_trees:small_pine_tree", {
	description = "Small Pine Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:small_pine_tree",
	tiles = {
			"real_trees_small_pine_tree_top.png",
			"real_trees_small_pine_tree_top.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed",fixed = {{-0.125,-0.5,0.125,0.125,0.5,-0.125}}}
})

minetest.register_node("real_trees:medium_pine_tree", {
	description = "Medium Pine Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:medium_pine_tree",
	tiles = {
			"real_trees_medium_pine_tree_top.png",
			"real_trees_medium_pine_tree_top.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed",fixed = {{-0.25,-0.5,0.25,0.25,0.5,-0.25}}}
})

minetest.register_node("real_trees:large_pine_tree", {
	description = "Large Pine Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:large_pine_tree",
	tiles = {
			"real_trees_large_pine_tree_top.png",
			"real_trees_large_pine_tree_top.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed",fixed = {{-0.375,-0.5,0.375,0.375,0.5,-0.375}}}
})

minetest.register_node("real_trees:a_small_pine_tree", {
	description = "A Small Pine Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:small_pine_tree",
	tiles = {
			"real_trees_small_pine_tree_top.png",
			"real_trees_small_pine_tree_top.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			},

	node_box = {type = "fixed",fixed = {{-0.125,-0.5,0.125,0.125,0.5,-0.125}}},
	on_timer = function(pos)
		pine_growth(pos,2,2)
	end
})

minetest.register_node("real_trees:a_medium_pine_tree", {
	description = "A Medium Pine Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:medium_pine_tree",
	tiles = {
			"real_trees_medium_pine_tree_top.png",
			"real_trees_medium_pine_tree_top.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			},

	node_box = {type = "fixed",fixed = {{-0.25,-0.5,0.25,0.25,0.5,-0.25}}},
	on_timer = function(pos)
		pine_growth(pos,3,2)
	end
})

minetest.register_node("real_trees:a_large_pine_tree", {
	description = "A Large Pine Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:large_pine_tree",
	tiles = {
			"real_trees_large_pine_tree_top.png",
			"real_trees_large_pine_tree_top.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			"default_pine_tree.png",
			},

	node_box = {type = "fixed",fixed = {{-0.375,-0.5,0.375,0.375,0.5,-0.375}}},
	on_timer = function(pos)
		pine_growth(pos,4,2)
	end,
})
