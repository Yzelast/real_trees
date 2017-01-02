minetest.register_node("real_trees:small_aspen_tree", {
    description = "Small Aspen Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:small_aspen_tree",
    tiles = {
          "default_aspen_tree_top.png",
          "default_aspen_tree_top.png",
          "default_aspen_tree.png",
          "default_aspen_tree.png",
          "default_aspen_tree.png",
          "default_aspen_tree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos,elapsed)  
        local pos_fix = {x = pos.x - 1,y = pos.y + 3,z = pos.z - 1}        
            minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/aspen/schems/medium_aspen_trunk.mts")
            fix_around({x = pos.x,y = pos.y + 1,z = pos.z},1,3)
            fix_around({x = pos.x,y = pos.y + 2,z = pos.z},1,3)
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/aspen/schems/medium_aspen_leaves.mts","0",nil,false)     
    end,
   
    node_box = {
       type = "fixed",
       fixed = { {-0.125,-0.5,0.125,0.125,0.5,-0.125}, }
        },

})

minetest.register_node("real_trees:medium_aspen_tree", {
    description = "Medium Aspen Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:medium_aspen_tree",
    tiles = {
          "default_aspen_tree_top.png",
          "default_aspen_tree_top.png",
          "default_aspen_tree.png",
          "default_aspen_tree.png",
          "default_aspen_tree.png",
          "default_aspen_tree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos,elapsed) 
        local pos_fix = {x = pos.x - 1,y = pos.y + 3,z = pos.z - 1}        
            minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/aspen/schems/large_aspen_trunk.mts")
            fix_around({x = pos.x,y = pos.y + 3,z = pos.z},1,3)
            fix_around({x = pos.x,y = pos.y + 4,z = pos.z},1,3)
            fix_around({x = pos.x,y = pos.y + 5,z = pos.z},1,3)
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/aspen/schems/large_aspen_leaves.mts","0",nil,false)               
    end,
    
    node_box = {
       type = "fixed",
       fixed = { {-0.25,-0.5,0.25,0.25,0.5,-0.25}, }
        },
})

minetest.register_node("real_trees:large_aspen_tree", {
    description = "Large Aspen Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:large_aspen_tree",
    tiles = {
          "default_aspen_tree_top.png",
          "default_aspen_tree_top.png",
          "default_aspen_tree.png",
          "default_aspen_tree.png",
          "default_aspen_tree.png",
          "default_aspen_tree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos,elapsed) 
        local pos_fix = {x = pos.x - 2,y = pos.y + 6,z = pos.z - 2}        
            minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/aspen/schems/aspen_trunk.mts")
            fix_around({x = pos.x,y = pos.y + 3,z = pos.z},1,3)
            fix_around({x = pos.x,y = pos.y + 4,z = pos.z},1,3)
            fix_around({x = pos.x,y = pos.y + 5,z = pos.z},1,3)
            fix_around({x = pos.x,y = pos.y + 6,z = pos.z},1,3)
            fix_around({x = pos.x,y = pos.y + 7,z = pos.z},1,3)
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/aspen/schems/aspen_leaves.mts","0",nil,false)     
    end,
    
    node_box = {
       type = "fixed",
       fixed = { {-0.375,-0.5,0.375,0.375,0.5,-0.375}, }
        },
})
