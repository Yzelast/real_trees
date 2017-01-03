minetest.register_abm {

    nodenames = "default:aspen_sapling",
    chance = 1,
    interval = 1,
    
    action = function(pos)
    
        if can_grow(pos,3,1) and (not minetest.get_node_timer(pos):is_started()) then
            minetest.get_node_timer(pos):start(480)
        end
    end

}

minetest.register_abm {

    nodenames = "real_trees:small_aspen_tree",
    chance = 1,
    interval = 4,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 2,z=pos.z})
            if node.name == "real_trees:slab_aspen_leaves" and can_grow(pos,3,2) and (not minetest.get_node_timer(pos):is_started()) then
                minetest.get_node_timer(pos):start(480)
            end       
    end

}


minetest.register_abm {

    nodenames = "real_trees:medium_aspen_tree",
    chance = 1,
    interval = 6,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 5,z=pos.z})
            if node.name == "default:aspen_leaves" and can_grow(pos,3,3) and (not minetest.get_node_timer(pos):is_started()) then                            
                minetest.get_node_timer(pos):start(480)                                                          
            end
    end

}

minetest.register_abm {

    nodenames = "real_trees:large_aspen_tree",
    chance = 1,
    interval = 8,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 7,z=pos.z})
            if node.name == "default:aspen_leaves" and can_grow(pos,3,4) and (not minetest.get_node_timer(pos):is_started()) then
                minetest.get_node_timer(pos):start(480)                                                 
            end
    end

}
