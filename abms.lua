minetest.register_abm {

    nodenames = {"real_trees:small_pine_needles",
		         "real_trees:b_small_pine_needles",
		         "real_trees:m_small_pine_needles",
		         "real_trees:wide_pine_needles", 
		         "real_trees:m_wide_pine_needles",
		         "real_trees:corner_pine_needles",
		         "real_trees:m_corner_pine_needles",
                 "default:pine_needles"},

    chance = 2,
    interval = 8,
    
    action = function(pos)

        if minetest.find_node_near(pos,3,{"real_trees:small_pine_tree",
			                              "real_trees:medium_pine_tree",
		                                  "real_trees:large_pine_tree",
		                                  "default:pine_tree"}) == nil then
           minetest.set_node(pos,{name = "air"})
        end    
    end

}

minetest.register_abm {

    nodenames = {"real_trees:small_leaves",
		         "real_trees:wide_leaves",
		         "default:leaves"},
    
    chance = 2,
    interval = 8,

    action = function(pos)

        if minetest.find_node_near(pos,3,{"real_trees:small_tree",
			                              "real_trees:medium_tree",
		                                  "real_trees:large_tree",
			                              "default:tree"}) == nil then
           minetest.set_node(pos,{name = "air"})
        end    
    end
}

minetest.register_abm {

    nodenames = {"real_trees:small_aspen_leaves",
                 "real_trees:u_small_aspen_leaves",
                 "real_trees:slab_aspen_leaves",
                 "real_trees:wide_aspen_leaves",
                 "real_trees:corner_aspen_leaves",
                 "default:aspen_leaves"},

    chance = 2,
    interval = 8,

    action = function(pos)

        if minetest.find_node_near(pos,3,{"real_trees:small_aspen_tree",
			                              "real_trees:medium_aspen_tree",
		                                  "real_trees:large_aspen_tree",
			                              "default:aspen_tree"}) == nil then
           minetest.set_node(pos,{name = "air"})
        end    
    end
}

minetest.register_abm {

    nodenames = {"real_trees:small_acacia_leaves",
                 "real_trees:slab_acacia_leaves",
                 "real_trees:wide_acacia_leaves",
                 "real_trees:corner_acacia_leaves",
                 "default:acacia_leaves"},

    chance = 2,
    interval = 8,

    action = function(pos)

        if minetest.find_node_near(pos,3,{"real_trees:small_acacia_tree",
			                              "real_trees:medium_acacia_tree",
		                                  "real_trees:large_acacia_tree",
                                          "real_trees:corner_acacia_trunk",
                                          "real_trees:t_corner_acacia_trunk",
                                          "real_trees:h_large_acacia_tree",
			                              "default:acacia_tree"}) == nil then
           minetest.set_node(pos,{name = "air"})
        end    
    end
}

minetest.register_abm {

    nodenames = {"real_trees:corner_jungle_leaves",
                 "real_trees:slab_jungle_leaves",
                 "real_trees:wide_jungle_leaves",
                 "default:jungleleaves"},

    chance = 2,
    interval = 8,

    action = function(pos)

        if minetest.find_node_near(pos,3,{"real_trees:small_jungle_tree",
			                              "real_trees:medium_jungle_tree",
		                                  "real_trees:large_jungle_tree",
			                              "default:jungletree"}) == nil then
           minetest.set_node(pos,{name = "air"})
        end    
    end
}   
