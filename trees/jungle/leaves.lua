minetest.register_node("real_trees:small_jungle_leaves", {
	description = "Small Jungle Leaves",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:jungle_sapling"},rarity = 160},
				{items = {"real_trees:small_leaves"}}
				}
			},

	tiles = { "default_jungleleaves.png" },
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{-0.25,-0.5,-0.25,0.25,0,0.25}}}
})

minetest.register_node("real_trees:corner_jungle_leaves", {
	description = "Corner Jungle Leaves",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:jungle_sapling"},rarity = 160},
				{items = {"real_trees:corner_jungle_leaves"}}
				}
			},

	tiles = { "default_jungleleaves.png" },
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{0,-0.5,0,0.5,0,0.5}}}
})

minetest.register_node("real_trees:wide_jungle_leaves", {
	description = "Wide Jungle Leaves",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:jungle_sapling"},rarity = 80},
				{items = {"real_trees:wide_jungle_leaves"}}
				}
			},

	tiles = { "default_jungleleaves.png" },
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{-0.5,-0.5,0,0.5,0,0.5}}}
})

minetest.register_node("real_trees:jungle_leaf_slab", {
	description = "Jungle Leaf Slab",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:jungle_sapling"},rarity = 40},
				{items = {"real_trees:jungle_leaf_slab"}}
				}
			},

	tiles = { "default_jungleleaves.png" },
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{-0.5,-0.5,-0.5,0.5,0,0.5}}}
})
