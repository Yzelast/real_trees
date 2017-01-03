minetest.register_abm {

    nodenames = "default:sapling",
    chance = 1,
    interval = 8,
    
    action = function(pos)
    
        if can_grow(pos,1,1) and (not minetest.get_node_timer(pos):is_started()) then
            minetest.get_node_timer(pos):start(480)
        end
    end

}

minetest.register_abm {

    nodenames = "real_trees:small_tree",
    chance = 1,
    interval = 4,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 1,z=pos.z})
            if node.name == "real_trees:small_leaves" and can_grow(pos,1,2) and (not minetest.get_node_timer(pos):is_started()) then
                minetest.get_node_timer(pos):start(480)
        end       
    end

}

minetest.register_abm {

    nodenames = "real_trees:medium_tree",
    chance = 1,
    interval = 6,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 2,z=pos.z})
            if node.name == "default:leaves" and can_grow(pos,1,3) and (not minetest.get_node_timer(pos):is_started()) then                             
                minetest.get_node_timer(pos):start(480)                                                 
            end
    end

}

minetest.register_abm {

    nodenames = "real_trees:large_tree",
    chance = 1,
    interval = 8,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 3,z=pos.z})
            if node.name == "default:leaves" and can_grow(pos,1,4) and (not minetest.get_node_timer(pos):is_started()) then                             
                minetest.get_node_timer(pos):start(480)                                                 
            end
    end

}

