minetest.register_node("real_trees:corner_jungle_leaves", {
    description = "Corner Jungle Needles",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:jungle_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:corner_jungle_leaves'},
			}
		}
	},
    tiles = { "default_jungleleaves.png" },
   
    groups = {snappy = 3, flammable = 2, leaves = 1},
    
    node_box = {
       type = "fixed",
       fixed = {{0,-0.5,0,0.5,0,0.5}}
        },
})

minetest.register_node("real_trees:slab_jungle_leaves", {
    description = "Slab Jungle Leaves",
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
    tiles = { "default_jungleleaves.png" },
   
    groups = {snappy = 3, flammable = 2},
    
    node_box = {
       type = "fixed",
       fixed = {{-0.5,-0.5,-0.5,0.5,0,0.5}}
        },
})

minetest.register_node("real_trees:wide_jungle_leaves", {
    description = "Wide Jungle Leaves",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:jungle_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:wide_jungle_leaves'},
			}
		}
	},
    tiles = { "default_jungleleaves.png" },
   
    groups = {snappy = 3, flammable = 2},
    
    node_box = {
       type = "fixed",
       fixed = {{-0.5,-0.5,0,0.5,0,0.5}}
        },
})
