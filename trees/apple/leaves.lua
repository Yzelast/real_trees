minetest.register_node("real_trees:small_leaves", {
    description = "Small Leaves",
    drawtype = "nodebox",
    paramtype = "light",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:sapling'},
				rarity = 60,
			},
			{				
				items = {'real_trees:small_leaves'},
			}
		}
	},
    tiles = { "default_leaves.png" },
   
    groups = {snappy = 3, flammable = 2},
    
node_box = {
       type = "fixed",
       fixed = { {-0.25,-0.5,-0.25,0.25,0,0.25},{} }
        },
})

minetest.register_node("real_trees:wide_leaves", {
    description = "Wide Leaves",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:wide_leaves'},
			}
		}
	},
    tiles = { "default_leaves.png" },
   
    groups = {snappy = 3, flammable = 2, leaves = 1, disposable = 1},
    
    node_box = {
       type = "fixed",
       fixed = {{-0.5,-0.5,0,0.5,0,0.5}}
        },
})
