minetest.register_node("real_trees:small_pine_needles", {
	description = "Small Pine Needles",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:pine_sapling"},rarity = 60},
				{items = {"real_trees:small_pine_needles"}}
				}
			},

	tiles = {"default_pine_needles.png"},
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{-0.25,-0.5,-0.25,0.25,0,0.25}}}
})

minetest.register_node("real_trees:corner_pine_needles", {
	description = "Corner Pine Needles",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:pine_sapling"},rarity = 40},
				{items = {"real_trees:corner_pine_needles"}}
				}
			},

	tiles = {"default_pine_needles.png"},
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{0,-0.5,0,0.5,0,0.5}}}
})

minetest.register_node("real_trees:m_corner_pine_needles", {
	description = "M Corner Pine Needles",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:pine_sapling"},rarity = 40},
				{items = {"real_trees:corner_pine_needles"}}
				}
			},

	tiles = {"default_pine_needles.png"},
	node_box = {type = "fixed",fixed = {{0,-0.25,0,0.5,0.25,0.5}}}
})

minetest.register_node("real_trees:wide_pine_needles", {
	description = "Wide Pine Needles",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:pine_sapling"},rarity = 40},
				{items = {"real_trees:wide_pine_needles"}}
				}
			},

	tiles = {"default_pine_needles.png"},
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{-0.5,-0.5,0,0.5,0,0.5}}},
})

minetest.register_node("real_trees:m_wide_pine_needles", {
	description = "M Wide Pine Needles",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:pine_sapling"},rarity = 40},
				{items = {"real_trees:wide_pine_needles"}}
				}
			},

	tiles = {"default_pine_needles.png"},
	node_box = {type = "fixed",fixed = {{-0.5,-0.25,0,0.5,0.25,0.5}}}
})

minetest.register_node("real_trees:pine_needle_slab", {
	description = "Pine Needle Slab",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:pine_sapling"},rarity = 60},
				{items = {"real_trees:pine_needle_slab"}}
				}
			},

	tiles = { "default_pine_needles.png" },
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{-0.5,-0.5,-0.5,0.5,0,0.5}}}
})

minetest.register_node("real_trees:b_pine_needle_slab", {
	description = " B Pine Needle Slab",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:pine_sapling"},rarity = 60},
				{items = {"real_trees:pine_needle_slab"}}
				}
			},

	tiles = { "default_pine_needles.png" },
	node_box = {type = "fixed",fixed = {{-0.5,-0.75,-0.5,0.5,-0.25,0.5}}}
})

minetest.register_node("real_trees:m_pine_needle_slab", {
	description = "M Pine Needle Slab",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_leaves_defaults(),
    drop =	{
		max_items = 1,
		items = {
				{items = {"default:pine_sapling"},rarity = 60},
				{items = {"real_trees:pine_needle_slab"}}
				}
			},

	tiles = { "default_pine_needles.png" },
	node_box = {type = "fixed",fixed = {{-0.5,-0.25,-0.5,0.5,0.25,0.5}}}
})
