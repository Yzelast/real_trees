minetest.register_node("real_trees:corner_acacia_trunk", {
    description = "T Corner Acacia Trunk",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = { "default_acacia_tree.png" },
   
    groups = {snappy = 3, flammable = 2, leaves = 1},
    
    node_box = {
       type = "fixed",
       fixed = {{0,-0.5,0,0.5,0,0.5}}
        },
})

minetest.register_node("real_trees:t_corner_acacia_trunk", {
    description = "T Corner Acacia Trunk",
    drawtype = "nodebox",
    paramtype = "light",
    paramtype2 = "facedir",
    
    tiles = { "default_acacia_tree.png" },
   
    groups = {snappy = 3, flammable = 2, leaves = 1},
    
    node_box = {
       type = "fixed",
       fixed = {{0,-0.5,0,0.5,0.5,0.5}}
        },
})

minetest.register_node("real_trees:small_acacia_tree", {
    description = "Small Acacia Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:small_acacia_tree",
    tiles = {
          "default_acacia_tree_top.png",
          "default_acacia_tree_top.png",
          "default_acacia_tree.png",
          "default_acacia_tree.png",
          "default_acacia_tree.png",
          "default_acacia_tree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos,elapsed)  
        local pos_fix = {x = pos.x - 2,y = pos.y + 2,z = pos.z - 2}
            minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/acacia/schems/medium_acacia_trunk.mts")
            fix_around({x = pos.x,y = pos.y + 1,z = pos.z},1,5)
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/acacia/schems/medium_acacia_leaves.mts","0","nil",false)
                
 
    end,
   
    node_box = {
       type = "fixed",
       fixed = { {-0.125,-0.5,0.125,0.125,0.5,-0.125}, }
        },

})

minetest.register_node("real_trees:medium_acacia_tree", {
    description = "Medium Acacia Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:medium_acacia_tree",
    tiles = {
          "default_acacia_tree_top.png",
          "default_acacia_tree_top.png",
          "default_acacia_tree.png",
          "default_acacia_tree.png",
          "default_acacia_tree.png",
          "default_acacia_tree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos,elapsed) 
        local pos_fix = {x = pos.x - 3,y = pos.y + 2,z = pos.z - 3}
            minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/acacia/schems/large_acacia_trunk.mts")
            fix_around({x = pos.x,y = pos.y + 2,z = pos.z},1,5)
            fix_around({x = pos.x,y = pos.y + 2,z = pos.z},2,5)
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/acacia/schems/large_acacia_leaves.mts","0",nil,false)
    end,
    
    node_box = {
       type = "fixed",
       fixed = { {-0.25,-0.5,0.25,0.25,0.5,-0.25}, }
        },
})

minetest.register_node("real_trees:large_acacia_tree", {
    description = "Large Acacia Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:large_jungle_tree",
    tiles = {
          "default_acacia_tree_top.png",
          "default_acacia_tree_top.png",
          "default_acacia_tree.png",
          "default_acacia_tree.png",
          "default_acacia_tree.png",
          "default_acacia_tree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos,elapsed) 
        local pos_fix = {x = pos.x - 4,y = pos.y + 3,z = pos.z - 4}
        minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/acacia/schems/acacia_trunk.mts")
        fix_around({x = pos.x,y = pos.y + 2,z = pos.z},1,5)
        fix_around({x = pos.x,y = pos.y + 3,z = pos.z},1,5)
        fix_around({x = pos.x - 1,y = pos.y + 3,z = pos.z - 1},1,5)
        fix_around({x = pos.x - 2,y = pos.y + 3,z = pos.z - 2},1,5)
        fix_around({x = pos.x + 1,y = pos.y + 3,z = pos.z + 1},1,5)
        fix_around({x = pos.x + 2,y = pos.y + 3,z = pos.z + 2},1,5)
        fix_around({x = pos.x - 1,y = pos.y + 3,z = pos.z + 1},1,5)
        fix_around({x = pos.x - 2,y = pos.y + 3,z = pos.z + 2},1,5)
        fix_around({x = pos.x + 1,y = pos.y + 3,z = pos.z - 1},1,5)
        fix_around({x = pos.x + 2,y = pos.y + 3,z = pos.z - 2},1,5)
        
        fix_around({x = pos.x - 1,y = pos.y + 4,z = pos.z - 1},1,5)
        fix_around({x = pos.x - 2,y = pos.y + 4,z = pos.z - 2},1,5)
        fix_around({x = pos.x + 1,y = pos.y + 4,z = pos.z + 1},1,5)
        fix_around({x = pos.x + 2,y = pos.y + 4,z = pos.z + 2},1,5)
        fix_around({x = pos.x - 1,y = pos.y + 4,z = pos.z + 1},1,5)
        fix_around({x = pos.x - 2,y = pos.y + 4,z = pos.z + 2},1,5)
        fix_around({x = pos.x + 1,y = pos.y + 4,z = pos.z - 1},1,5)
        fix_around({x = pos.x + 2,y = pos.y + 4,z = pos.z - 2},1,5)
        minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/acacia/schems/acacia_leaves.mts","0",nil,false)         
    end,
    
    node_box = {
       type = "fixed",
       fixed = { {-0.375,-0.5,0.375,0.375,0.5,-0.375}, }
        },
})

minetest.register_node("real_trees:h_large_acacia_tree", {
    description = "H Large Acacia Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:large_jungle_tree",
    tiles = {
          "default_acacia_tree_top.png",
          "default_acacia_tree_top.png",
          "default_acacia_tree.png",
          "default_acacia_tree.png",
          "default_acacia_tree.png",
          "default_acacia_tree.png",
    },
   
    groups = {choppy = 2, flammable = 2},
    
    node_box = {
       type = "fixed",
       fixed = { {-0.375,-0.5,0.375,0.375,0.5,-0.375},{-0.5,0,-0.5,0.5,0.5,0.5} }
        },
})
