minetest.register_abm {

    nodenames = "default:acacia_sapling",
    chance = 1,
    interval = 1,
    
    action = function(pos)
    
        if can_grow(pos,5,1) and (not minetest.get_node_timer(pos):is_started()) then
            minetest.get_node_timer(pos):start(480)
        end
    end

}

minetest.register_abm {

    nodenames = "real_trees:small_acacia_tree",
    chance = 1,
    interval = 4,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 1,z=pos.z})
            if node.name == "default:acacia_leaves" and can_grow(pos,5,2) and (not minetest.get_node_timer(pos):is_started()) then
                minetest.get_node_timer(pos):start(480)
            end       
    end

}

minetest.register_abm {

    nodenames = "real_trees:medium_acacia_tree",
    chance = 1,
    interval = 6,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 2,z=pos.z})
            if node.name == "real_trees:slab_acacia_leaves" and can_grow(pos,5,3) and (not minetest.get_node_timer(pos):is_started()) then                            
                minetest.get_node_timer(pos):start(480)                                                          
            end
    end

}

minetest.register_abm {

    nodenames = "real_trees:large_acacia_tree",
    chance = 1,
    interval = 8,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 2,z=pos.z})
            if node.name == "real_trees:h_large_acacia_tree" and can_grow(pos,5,4) and (not minetest.get_node_timer(pos):is_started()) then
                minetest.get_node_timer(pos):start(480)                                                 
            end
    end

}
