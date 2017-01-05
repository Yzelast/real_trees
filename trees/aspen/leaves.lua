minetest.register_node("real_trees:small_aspen_leaves", {
	description = "Small Aspen Leaves",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:aspen_sapling"},rarity = 160},
				{items = {"real_trees:small_aspen_leaves"}}
				}
			},

	tiles = { "default_aspen_leaves.png" },
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{-0.25,-0.5,-0.25,0.25,0,0.25}}}
})

minetest.register_node("real_trees:corner_aspen_leaves", {
	description = "Corner Aspen Leaves",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:aspen_sapling"},rarity = 160},
				{items = {"real_trees:corner_aspen_leaves"}}
				}
			},

	tiles = { "default_aspen_leaves.png" },
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{0,-0.5,0,0.5,0,0.5}}}
})

minetest.register_node("real_trees:wide_aspen_leaves", {
	description = "Wide Aspen Leaves",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:aspen_sapling"},rarity = 80},
				{items = {"real_trees:wide_aspen_leaves"}}
				}
			},

	tiles = { "default_aspen_leaves.png" },
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{-0.5,-0.5,0,0.5,0,0.5}}}
})

minetest.register_node("real_trees:aspen_leaf_slab", {
	description = "Aspen Leaf Slab",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:aspen_sapling"},rarity = 40},
				{items = {"real_trees:aspen_leaf_slab"}}
				}
			},

	tiles = { "default_aspen_leaves.png" },
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{-0.5,-0.5,-0.5,0.5,0,0.5}}}
})
