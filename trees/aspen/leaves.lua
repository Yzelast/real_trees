minetest.register_node("real_trees:small_aspen_leaves", {
    description = "Small Aspen Leaves",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:aspen_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:small_aspen_leaves'},
			}
		}
	},
    tiles = { "default_aspen_leaves.png" },
   
    groups = {snappy = 3, flammable = 2},
    
    node_box = {
       type = "fixed",
       fixed = {{-0.25,-0.5,-0.25,0.25,0,0.25}}
        },
})

minetest.register_node("real_trees:u_small_aspen_leaves", {
    description = "Small Aspen Leaves",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:aspen_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:small_aspen_leaves'},
			}
		}
	},
    tiles = { "default_aspen_leaves.png" },
   
    groups = {snappy = 3, flammable = 2},
    
    node_box = {
       type = "fixed",
       fixed = {{-0.25,-0.5,-0.25,0.25,-1,0.25}}
        },
})

minetest.register_node("real_trees:slab_aspen_leaves", {
    description = "Slab Aspen Leaves",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:aspen_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:slab_aspen_leaves'},
			}
		}
	},
    tiles = { "default_aspen_leaves.png" },
   
    groups = {snappy = 3, flammable = 2},
    
    node_box = {
       type = "fixed",
       fixed = {{-0.5,-0.5,-0.5,0.5,0,0.5}}
        },
})

minetest.register_node("real_trees:wide_aspen_leaves", {
    description = "Wide Aspen Leaves",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:aspen_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:wide_aspen_leaves'},
			}
		}
	},
    tiles = { "default_aspen_leaves.png" },
   
    groups = {snappy = 3, flammable = 2},
    
    node_box = {
       type = "fixed",
       fixed = {{-0.5,-0.5,0,0.5,0,0.5}}
        },
})

minetest.register_node("real_trees:corner_aspen_leaves", {
    description = "Corner Aspen Needles",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:aspen_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:corner_aspen_leaves'},
			}
		}
	},
    tiles = { "default_aspen_leaves.png" },
   
    groups = {snappy = 3, flammable = 2, leaves = 1},
    
    node_box = {
       type = "fixed",
       fixed = {{0,-0.5,0,0.5,0,0.5}}
        },
})
