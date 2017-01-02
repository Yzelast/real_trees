minetest.register_abm {

    nodenames = "default:junglesapling",
    chance = 1,
    interval = 1,
    
    action = function(pos)
    
        if can_grow(pos,4,1) and (not minetest.get_node_timer(pos):is_started()) then
            minetest.get_node_timer(pos):start(5)
        end
    end

}

minetest.register_abm {

    nodenames = "real_trees:small_jungle_tree",
    chance = 1,
    interval = 4,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 4,z=pos.z})
            if node.name == "real_trees:slab_jungle_leaves" and can_grow(pos,4,2) and (not minetest.get_node_timer(pos):is_started()) then
                minetest.get_node_timer(pos):start(5)
            end       
    end

}

minetest.register_abm {

    nodenames = "real_trees:medium_jungle_tree",
    chance = 1,
    interval = 6,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 7,z=pos.z})
            if node.name == "default:jungleleaves" and can_grow(pos,4,3) and (not minetest.get_node_timer(pos):is_started()) then                            
                minetest.get_node_timer(pos):start(5)                                                          
            end
    end

}

minetest.register_abm {

    nodenames = "real_trees:large_jungle_tree",
    chance = 1,
    interval = 8,
    
    action = function(pos)
        
        local node = minetest.get_node({x=pos.x,y=pos.y + 10,z=pos.z})
        local up = minetest.get_node({x=pos.x,y=pos.y + 1,z=pos.z})
        local up2 = minetest.get_node({x=pos.x,y=pos.y + 2,z=pos.z})
        local up3 = minetest.get_node({x=pos.x,y=pos.y + 3,z=pos.z})
        
            if up.name == "air" and up2.name == "air" and up3.name == "air" then return false end            

            if node.name == "default:jungleleaves" and can_grow(pos,4,4) and (not minetest.get_node_timer(pos):is_started()) then
                minetest.get_node_timer(pos):start(5)                                                 
            end
    end

}
