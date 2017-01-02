minetest.register_node("real_trees:small_pine_needles", {
    description = "Small Pine Needles",
    drawtype = "nodebox",
    paramtype = "light",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:pine_sapling'},
				rarity = 60,
			},
			{				
				items = {'real_trees:small_pine_needles'},
			}
		}
	},
    tiles = { "default_pine_needles.png" },
   
    groups = {snappy = 3, flammable = 2},
    
node_box = {
       type = "fixed",
       fixed = { {-0.5,-0.5,-0.5,0.5,0,0.5},{} }
        },
})

minetest.register_node("real_trees:b_small_pine_needles", {
    description = " B Small Pine Needles",
    drawtype = "nodebox",
    paramtype = "light",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:pine_sapling'},
				rarity = 60,
			},
			{				
				items = {'real_trees:small_pine_needles'},
			}
		}
	},
    tiles = { "default_pine_needles.png" },
   
    groups = {snappy = 3, flammable = 2, not_in_creative_inventory = 1},
    
node_box = {
       type = "fixed",
       fixed = { {-0.5,-0.75,-0.5,0.5,-0.25,0.5},{} }
        },
})

minetest.register_node("real_trees:m_small_pine_needles", {
    description = "M Small Pine Needles",
    drawtype = "nodebox",
    paramtype = "light",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:pine_sapling'},
				rarity = 60,
			},
			{				
				items = {'real_trees:small_pine_needles'},
			}
		}
	},
    tiles = { "default_pine_needles.png" },
   
    groups = {snappy = 3, flammable = 2, not_in_creative_inventory = 1},
    
node_box = {
       type = "fixed",
       fixed = { {-0.5,-0.25,-0.5,0.5,0.25,0.5},{} }
        },
})

minetest.register_node("real_trees:wide_pine_needles", {
    description = "Wide Pine Needles",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:pine_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:wide_pine_needles'},
			}
		}
	},
    tiles = { "default_pine_needles.png" },
   
    groups = {snappy = 3, flammable = 2},
    
    node_box = {
       type = "fixed",
       fixed = {{-0.5,-0.5,0,0.5,0,0.5}}
        },
})

minetest.register_node("real_trees:m_wide_pine_needles", {
    description = "M Wide Pine Needles",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:pine_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:wide_pine_needles'},
			}
		}
	},
    tiles = { "default_pine_needles.png" },
   
    groups = {snappy = 3, flammable = 2, not_in_creative_inventory = 1},
    
    node_box = {
       type = "fixed",
       fixed = {{-0.5,-0.25,0,0.5,0.25,0.5}}
        },
})

minetest.register_node("real_trees:corner_pine_needles", {
    description = "Corner Pine Needles",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:pine_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:corner_pine_needles'},
			}
		}
	},
    tiles = { "default_pine_needles.png" },
   
    groups = {snappy = 3, flammable = 2, leaves = 1},
    
    node_box = {
       type = "fixed",
       fixed = {{0,-0.5,0,0.5,0,0.5}}
        },
})

minetest.register_node("real_trees:m_corner_pine_needles", {
    description = "M Corner Pine Needles",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    drop = {
		max_items = 1,
		items = {
			{
				items = {'default:pine_sapling'},
				rarity = 40,
			},
			{				
				items = {'real_trees:corner_pine_needles'},
			}
		}
	},
    tiles = { "default_pine_needles.png" },
   
    groups = {snappy = 3, flammable = 2, not_in_creative_inventory = 1},
    
    node_box = {
       type = "fixed",
       fixed = {{0,-0.25,0,0.5,0.25,0.5}}
        },
})
