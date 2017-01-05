minetest.register_node("real_trees:small_leaves", {
	description = "Small Leaves",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:sapling"},rarity = 160},
				{items = {'real_trees:small_leaves'}}
				}
			},

	tiles = {"default_leaves.png"},
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed", fixed = {{-0.25,-0.5,-0.25,0.25,0,0.25}}}
})

minetest.register_node("real_trees:corner_leaves", {
	description = "Corner Leaves",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:sapling"},rarity = 160},
				items = {"real_trees:corner_leaves"}
				}
			},

	tiles = {"default_leaves.png"},
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed", fixed = {{0,-0.5,0,0.5,0,0.5}}}
})

minetest.register_node("real_trees:wide_leaves", {
	description = "Wide Leaves",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:sapling"},rarity = 80},
				{items = {"real_trees:wide_leaves"}}
				}
			},

	tiles = {"default_leaves.png"},
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed", fixed = {{-0.5,-0.5,0,0.5,0,0.5}}}
})

minetest.register_node("real_trees:leaf_slab", {
	description = "Leaf Slab",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop =	{
		max_items = 1,
		items = {
				{items = {"default:sapling"},rarity = 40},
				{items = {"real_trees:pine_needle_slab"}}
				}
			},

	tiles = {"default_leaves.png"},
	after_place_node = default.after_place_leaves,
	node_box = {type = "fixed",fixed = {{-0.5,-0.5,-0.5,0.5,0,0.5}}}
})
