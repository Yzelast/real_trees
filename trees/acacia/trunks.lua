minetest.register_node("real_trees:corner_acacia_tree", {
	description = "Corner Acacia Trunk",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:small_acacia_tree",
	tiles = {
			"real_trees_corner_acacia_tree_top.png",
			"real_trees_corner_acacia_tree_top.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			},

	node_box = {type = "fixed",fixed = {{0,-0.5,0,0.5,0,0.5}}}
})

minetest.register_node("real_trees:t_corner_acacia_tree", {
	description = "T Corner Acacia Trunk",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:medium_acacia_tree",
	tiles = {
			"real_trees_corner_acacia_tree_top.png",
			"real_trees_corner_acacia_tree_top.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			},

	node_box = {type = "fixed",fixed = {{0,-0.5,0,0.5,0.5,0.5}}}
})

minetest.register_node("real_trees:small_acacia_tree", {
	description = "Small Acacia Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:small_acacia_tree",
	tiles = {
			"real_trees_small_acacia_tree_top.png",
			"real_trees_small_acacia_tree_top.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed",fixed = {{-0.125,-0.5,0.125,0.125,0.5,-0.125}}}
})

minetest.register_node("real_trees:medium_acacia_tree", {
	description = "Medium Acacia Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:medium_acacia_tree",
	tiles = {
			"real_trees_medium_acacia_tree_top.png",
			"real_trees_medium_acacia_tree_top.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed",fixed = {{-0.25,-0.5,0.25,0.25,0.5,-0.25}}}
})

minetest.register_node("real_trees:large_acacia_tree", {
	description = "Large Acacia Tree",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:large_acacia_tree",
	tiles = {
			"real_trees_large_acacia_tree_top.png",
			"real_trees_large_acacia_tree_top.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			},

	on_place = minetest.rotate_node,
	node_box = {type = "fixed",fixed = {{-0.375,-0.5,0.375,0.375,0.5,-0.375}}}
})

minetest.register_node("real_trees:h_large_acacia_tree", {
	description = "H Large Acacia Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:large_acacia_tree",
	tiles = {
			"default_acacia_tree_top.png",
			"real_trees_large_acacia_tree_top.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			},

	node_box =	{type = "fixed",fixed =	{
										{-0.375,-0.5,0.375,0.375,0.5,-0.375},
										{-0.5,0,-0.5,0.5,0.5,0.5}
										}
				}
})

minetest.register_node("real_trees:a_small_acacia_tree", {
	description = "A Small Acacia Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:small_acacia_tree",
	tiles = {
			"real_trees_small_acacia_tree_top.png",
			"real_trees_small_acacia_tree_top.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			},

	node_box = {type = "fixed",fixed = {{-0.125,-0.5,0.125,0.125,0.5,-0.125}}},
	on_timer = function(pos,elapsed)  
		acacia_growth(pos,2,2)
	end,
})

minetest.register_node("real_trees:a_medium_acacia_tree", {
	description = "A Medium Acacia Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:medium_acacia_tree",
	tiles = {
			"real_trees_medium_acacia_tree_top.png",
			"real_trees_medium_acacia_tree_top.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			},

	node_box = {type = "fixed",fixed = {{-0.25,-0.5,0.25,0.25,0.5,-0.25}}},
	on_timer = function(pos,elapsed) 
		acacia_growth(pos,3,2)
	end,
})

minetest.register_node("real_trees:a_large_acacia_tree", {
	description = "A Large Acacia Tree",
	drawtype = "nodebox",
	paramtype = "light",
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = "real_trees:large_jungle_tree",
	tiles = {
			"real_trees_large_acacia_tree_top.png",
			"real_trees_large_acacia_tree_top.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png",
			},

	node_box = {type = "fixed",fixed = {{-0.375,-0.5,0.375,0.375,0.5,-0.375}}},
	on_timer = function(pos,elapsed) 
		acacia_growth(pos,4,2)
	end,
})
