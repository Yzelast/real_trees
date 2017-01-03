minetest.register_abm {

    nodenames = "default:pine_sapling",
    chance = 1,
    interval = 8,
    
    action = function(pos)
    
        if can_grow(pos,2,1) and (not minetest.get_node_timer(pos):is_started()) then
            minetest.get_node_timer(pos):start(480)
        end
    end

}

minetest.register_abm {

    nodenames = "real_trees:small_pine_tree",
    chance = 1,
    interval = 4,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 3,z=pos.z})
            if node.name == "real_trees:small_pine_needles" and can_grow(pos,2,2) and (not minetest.get_node_timer(pos):is_started()) then
                minetest.get_node_timer(pos):start(480)
            end       
    end

}


minetest.register_abm {

    nodenames = "real_trees:medium_pine_tree",
    chance = 1,
    interval = 6,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 5,z=pos.z})
            if node.name == "real_trees:small_pine_needles" and can_grow(pos,2,3) and (not minetest.get_node_timer(pos):is_started()) then                            
                minetest.get_node_timer(pos):start(480)                                                          
            end
    end

}

minetest.register_abm {

    nodenames = "real_trees:large_pine_tree",
    chance = 1,
    interval = 8,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 7,z=pos.z})
            if node.name == "real_trees:small_pine_needles" and can_grow(pos,2,4) and (not minetest.get_node_timer(pos):is_started()) then
                minetest.get_node_timer(pos):start(480)                                                 
            end
    end

}
