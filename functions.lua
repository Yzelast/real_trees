-- This function returns a boolean indicating if a tree has enough light and if is located on a valid soil
-- tree 1 = apple
-- tree 2 = pine
-- tree 3 = aspen
-- tree 4 = acacia
-- tree 5 = jungle

can_grow = function(pos,tree,size)
    
    local light
    local node
    local node2
    local soil  = {"default:dirt","default:dirt_with_grass","default:dirt_with_dry_grass","default_dirt_with_snow"} 

-- Appe tree

            if tree == 1 and size == 1 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 1,z = pos.z})    
        
        elseif tree == 1 and size == 2 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 2,z = pos.z})
                

        elseif tree == 1 and size == 3 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 3,z = pos.z})

        elseif tree == 1 and size == 4 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 4,z = pos.z})

-- Pine tree

        elseif tree == 2 and size == 1 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 2,z = pos.z})      

        elseif tree == 2 and size == 2 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 4,z = pos.z})

        elseif tree == 2 and size == 3 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 6,z = pos.z})
 
        elseif tree == 2 and size == 4 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 10,z = pos.z})

-- Aspen tree
        
        elseif tree == 3 and size == 1 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 1,z = pos.z})      

        elseif tree == 3 and size == 2 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 4,z = pos.z})

        elseif tree == 3 and size == 3 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 6,z = pos.z})
 
        elseif tree == 3 and size == 4 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 9,z = pos.z})

-- Jungle tree

        elseif tree == 4 and size == 1 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 3,z = pos.z})      

        elseif tree == 4 and size == 2 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 6,z = pos.z})

        elseif tree == 4 and size == 3 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 9,z = pos.z})
 
        elseif tree == 4 and size == 4 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 12,z = pos.z})   

-- Acacia tree     
    
        elseif tree == 5 and size == 1 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 1,z = pos.z})      

        elseif tree == 5 and size == 2 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 2,z = pos.z})

        elseif tree == 5 and size == 3 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 3,z = pos.z})
 
        elseif tree == 5 and size == 4 then
                light = minetest.get_node_light({x = pos.x,y = pos.y + 4,z = pos.z}) 

        end   

    if light == 15 and node_exist(soil,minetest.get_node({x = pos.x,y = pos.y - 1,z = pos.z})) then
        return true
    else
        return false
    end
end


-- This function is used to check if a node name exists whithin a given table
-- currently is used to determine if a leaf node can be removed

node_exist = function(table,node)

    for key,value in pairs(table) do
        if value == node.name then
            return true
        end
    end  
    return false
end        


-- This function verifies if a leaft node can be removed during the tree growth
-- was created to avoid node destruction by tree's schematics

fix_around = function(pos,radius,tree)

    local nodes
    
    local apple = {"real_trees:small_leaves",
                   "real_trees:wide_leaves",
                   "default:leaves"}

    local pine = {"real_trees:m_wide_pine_needles",
                  "real_trees:wide_pine_needles"   ,
                  "real_trees:corner_pine_needles",
                  "real_trees:small_pine_needles" ,
                  "real_trees:b_small_pine_needles",
                  "real_trees:m_corner_pine_needles",
                  "default:pine_needles"}

    local aspen = {"real_trees:small_aspen_leaves",
                   "real_trees:u_small_aspen_leaves",
                   "real_trees:slab_aspen_leaves",
                   "real_trees:wide_aspen_leaves",
                   "real_trees:corner_aspen_leaves",
                   "default:aspen_leaves"}

    local acacia = {"real_trees:corner_acacia_trunk",
                    "real_trees:t_corner_acacia_trunk",
                    "real_trees:small_acacia_leaves",
                    "real_trees:slab_acacia_leaves",
                    "real_trees:wide_acacia_leaves",
                    "real_trees:corner_acacia_leaves",
                    "real_trees:t_corner_acacia_trunk",
                    "default:acacia_leaves"}

    local jungle = {"real_trees:large_jungle_tree",
                    "real_trees:medium_jungle_tree",
                    "real_trees:wide_jungle_leaves",
                    "real_trees:slab_jungle_leaves",
                    "real_trees:corner_jungle_leaves",
                    "default:jungleleaves"}

    if tree == 1 then nodes = apple  end    
    if tree == 2 then nodes = pine   end
    if tree == 3 then nodes = aspen  end
    if tree == 4 then nodes = jungle end
    if tree == 5 then nodes = acacia end

    if radius == 1 then
               
            if node_exist(nodes,minetest.get_node({x = pos.x - 1,y = pos.y,z = pos.z - 1})) then
                minetest.set_node({x = pos.x - 1,y = pos.y,z = pos.z - 1},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x - 1,y = pos.y,z = pos.z})) then
                minetest.set_node({x = pos.x - 1,y = pos.y,z = pos.z},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x - 1,y = pos.y,z = pos.z + 1})) then
                minetest.set_node({x = pos.x - 1,y = pos.y,z = pos.z + 1},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x,y = pos.y,z = pos.z - 1})) then
                minetest.set_node({x = pos.x,y = pos.y,z = pos.z - 1},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x,y = pos.y,z = pos.z + 1})) then
                minetest.set_node({x = pos.x,y = pos.y,z = pos.z + 1},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x + 1,y = pos.y,z = pos.z - 1})) then
                minetest.set_node({x = pos.x + 1,y = pos.y,z = pos.z - 1},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x + 1,y = pos.y,z = pos.z})) then
                minetest.set_node({x = pos.x + 1,y = pos.y,z = pos.z},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x + 1,y = pos.y,z = pos.z + 1})) then
                minetest.set_node({x = pos.x + 1,y = pos.y,z = pos.z + 1},{name = "air"})
            end
                    
    elseif radius == 2 then

            if node_exist(nodes,minetest.get_node({x = pos.x - 2,y = pos.y,z = pos.z - 2})) then
                minetest.set_node({x = pos.x - 2,y = pos.y,z = pos.z - 2},{name = "air"})
            end
        
            if node_exist(nodes,minetest.get_node({x = pos.x - 2,y = pos.y,z = pos.z - 1})) then
                minetest.set_node({x = pos.x - 2,y = pos.y,z = pos.z - 1},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x - 2,y = pos.y,z = pos.z})) then
                minetest.set_node({x = pos.x - 2,y = pos.y,z = pos.z},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x - 2,y = pos.y,z = pos.z + 1})) then
                minetest.set_node({x = pos.x - 2,y = pos.y,z = pos.z + 1},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x - 2,y = pos.y,z = pos.z + 2})) then
                minetest.set_node({x = pos.x - 2,y = pos.y,z = pos.z + 2},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x - 1,y = pos.y,z = pos.z - 2})) then
                minetest.set_node({x = pos.x - 1,y = pos.y,z = pos.z - 2},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x,y = pos.y,z = pos.z - 2})) then
                minetest.set_node({x = pos.x,y = pos.y,z = pos.z - 2},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x + 1,y = pos.y,z = pos.z - 2})) then
                minetest.set_node({x = pos.x + 1,y = pos.y,z = pos.z - 2},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x - 1,y = pos.y,z = pos.z + 2})) then
                minetest.set_node({x = pos.x - 1,y = pos.y,z = pos.z + 2},{name = "air"})
            end
        
            if node_exist(nodes,minetest.get_node({x = pos.x,y = pos.y,z = pos.z + 2})) then
                minetest.set_node({x = pos.x,y = pos.y,z = pos.z + 2},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x + 1,y = pos.y,z = pos.z + 2})) then
                minetest.set_node({x = pos.x + 1,y = pos.y,z = pos.z + 2},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x + 2,y = pos.y,z = pos.z - 2})) then
                minetest.set_node({x = pos.x + 2,y = pos.y,z = pos.z - 2},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x + 2,y = pos.y,z = pos.z - 1})) then
                minetest.set_node({x = pos.x + 2,y = pos.y,z = pos.z - 1},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x + 2,y = pos.y,z = pos.z})) then
                minetest.set_node({x = pos.x + 2,y = pos.y,z = pos.z},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x + 2,y = pos.y,z = pos.z + 1})) then
                minetest.set_node({x = pos.x + 2,y = pos.y,z = pos.z + 1},{name = "air"})
            end

            if node_exist(nodes,minetest.get_node({x = pos.x + 2,y = pos.y,z = pos.z + 2})) then
                minetest.set_node({x = pos.x + 2,y = pos.y,z = pos.z + 2},{name = "air"})
            end

    else
        return false
    end
end
