minetest.register_node("real_trees:small_acacia_leaves", {
    description = "Small Acacia Leaves",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:acacia_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:small_acacia_leaves'},
			}
		}
	},
    tiles = { "default_acacia_leaves.png" },
   
    groups = {snappy = 3, flammable = 2},
    
    node_box = {
       type = "fixed",
       fixed = {{-0.25,-0.5,-0.25,0.25,0,0.25}}
        },
})

minetest.register_node("real_trees:slab_acacia_leaves", {
    description = "Slab Acacia Leaves",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:acacia_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:slab_acacia_leaves'},
			}
		}
	},
    tiles = { "default_acacia_leaves.png" },
   
    groups = {snappy = 3, flammable = 2},
    
    node_box = {
       type = "fixed",
       fixed = {{-0.5,-0.5,-0.5,0.5,0,0.5}}
        },
})

minetest.register_node("real_trees:wide_acacia_leaves", {
    description = "Wide Acacia Leaves",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:acacia_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:wide_acacia_leaves'},
			}
		}
	},
    tiles = { "default_acacia_leaves.png" },
   
    groups = {snappy = 3, flammable = 2},
    
    node_box = {
       type = "fixed",
       fixed = {{-0.5,-0.5,0,0.5,0,0.5}}
        },
})

minetest.register_node("real_trees:corner_acacia_leaves", {
    description = "Corner Acacia Leaves",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:acacia_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:corner_acacia_leaves'},
			}
		}
	},
    tiles = { "default_acacia_leaves.png" },
   
    groups = {snappy = 3, flammable = 2, leaves = 1},
    
    node_box = {
       type = "fixed",
       fixed = {{0,-0.5,0,0.5,0,0.5}}
        },
})
