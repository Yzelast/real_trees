minetest.register_node("real_trees:small_aspen_tree", {
	description = "Small Aspen Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:small_aspen_tree",
	tiles = {
			"real_trees_small_aspen_tree_top.png",
			"real_trees_small_aspen_tree_top.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed",fixed = {{-0.125,-0.5,0.125,0.125,0.5,-0.125}}}
})

minetest.register_node("real_trees:medium_aspen_tree", {
	description = "Medium Aspen Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:medium_aspen_tree",
	tiles = {
			"real_trees_medium_aspen_tree_top.png",
			"real_trees_medium_aspen_tree_top.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed",fixed = {{-0.25,-0.5,0.25,0.25,0.5,-0.25}}}
})

minetest.register_node("real_trees:large_aspen_tree", {
	description = "Large Aspen Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:large_aspen_tree",
	tiles = {
			"real_trees_large_aspen_tree_top.png",
			"real_trees_large_aspen_tree_top.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed",fixed = {{-0.375,-0.5,0.375,0.375,0.5,-0.375}}}
})

minetest.register_node("real_trees:a_small_aspen_tree", {
	description = "A Small Aspen Tree",
	drawtype = "nodebox",
	paramtype = "light",
	drop = "real_trees:small_aspen_tree",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	tiles = {
			"real_trees_small_aspen_tree_top.png",
			"real_trees_small_aspen_tree_top.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			},

	on_timer = function(pos,elapsed)
		aspen_growth(pos,2,2)
	end,

	node_box = {type = "fixed",fixed = {{-0.125,-0.5,0.125,0.125,0.5,-0.125}}}
})

minetest.register_node("real_trees:a_medium_aspen_tree", {
	description = "A Medium Aspen Tree",
	drawtype = "nodebox",
	paramtype = "light",
	drop = "real_trees:medium_aspen_tree",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	tiles = {
			"real_trees_medium_aspen_tree_top.png",
			"real_trees_medium_aspen_tree_top.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			},

	on_timer = function(pos,elapsed)
		aspen_growth(pos,3,2)
	end,

	node_box = {type = "fixed",fixed = {{-0.25,-0.5,0.25,0.25,0.5,-0.25}}}
})

minetest.register_node("real_trees:a_large_aspen_tree", {
	description = "A Large Aspen Tree",
	drawtype = "nodebox",
	paramtype = "light",
	drop = "real_trees:large_aspen_tree",
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	tiles = {
			"real_trees_large_aspen_tree_top.png",
			"real_trees_large_aspen_tree_top.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			"default_aspen_tree.png",
			},

	on_timer = function(pos,elapsed)
		aspen_growth(pos,4,2)
	end,

	node_box = {type = "fixed",fixed = { {-0.375,-0.5,0.375,0.375,0.5,-0.375}}}
})
