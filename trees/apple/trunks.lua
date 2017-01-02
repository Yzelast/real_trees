minetest.register_node("real_trees:small_tree", {
    description = "Small Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:small_tree",
    tiles = {
          "default_tree_top.png",
          "default_tree_top.png",
          "default_tree.png",
          "default_tree.png",
          "default_tree.png",
          "default_tree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos,elapsed)  
        local pos_fix = {x = pos.x - 1, y = pos.y + 1, z = pos.z - 1}
        minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/apple/schems/medium_tree_trunk.mts")      
        minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/apple/schems/medium_tree_leaves.mts","0",nil,false)
        return true
    end,
   
    node_box = {
       type = "fixed",
       fixed = { {-0.125,-0.5,0.125,0.125,0.5,-0.125}, }
        },

})

minetest.register_node("real_trees:medium_tree", {
    description = "Medium Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:medium_tree",
    tiles = {
          "default_tree_top.png",
          "default_tree_top.png",
          "default_tree.png",
          "default_tree.png",
          "default_tree.png",
          "default_tree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos,elapsed) 
        local pos_fix = {x = pos.x - 1, y = pos.y + 2, z = pos.z - 1}
        minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/apple/schems/large_tree_trunk.mts")              
        fix_around({x = pos.x,y = pos.y + 1,z = pos.z},1,1)
        fix_around({x = pos.x,y = pos.y + 2,z = pos.z},1,1)       
        minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/apple/schems/large_tree_leaves.mts","0",nil,false)
        return false
    end,
    
    node_box = {
       type = "fixed",
       fixed = { {-0.25,-0.5,0.25,0.25,0.5,-0.25}, }
        },
})

minetest.register_node("real_trees:large_tree", {
    description = "Large Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:large_tree",
    tiles = {
          "default_tree_top.png",
          "default_tree_top.png",
          "default_tree.png",
          "default_tree.png",
          "default_tree.png",
          "default_tree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos,elapsed) 
        local pos_fix = {x = pos.x - 2, y = pos.y + 3, z = pos.z - 2}        
        minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/apple/schems/tree_trunk.mts")        
        fix_around({x = pos.x,y = pos.y + 1,z = pos.z},1,1)
        fix_around({x = pos.x,y = pos.y + 2,z = pos.z},1,1)
        fix_around({x = pos.x,y = pos.y + 3,z = pos.z},1,1)
        minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/apple/schems/tree_leaves.mts","random",nil,false)
        return false
    end,
    
    node_box = {
       type = "fixed",
       fixed = { {-0.375,-0.5,0.375,0.375,0.5,-0.375}, }
        },
})
