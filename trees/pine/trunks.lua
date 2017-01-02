minetest.register_node("real_trees:small_pine_tree", {
    description = "Small Pine Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:small_pine_tree",
    tiles = {
          "default_pine_tree_top.png",
          "default_pine_tree_top.png",
          "default_pine_tree.png",
          "default_pine_tree.png",
          "default_pine_tree.png",
          "default_pine_tree.png",
    },
    
    groups = {choppy = 2, flammable = 2},
  
    on_timer = function(pos)
        local pos_fix = {x = pos.x - 1,y = pos.y + 2,z = pos.z - 1}        
            minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/pine/schems/medium_pine_trunk.mts")
            fix_around({x = pos.x,y = pos.y + 1,z = pos.z},1,2)
            fix_around({x = pos.x,y = pos.y + 2,z = pos.z},1,2)
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/pine/schems/medium_pine_needles.mts","0",nil,false)
    end,

    node_box = {
       type = "fixed",
       fixed = { {-0.125,-0.5,0.125,0.125,0.5,-0.125}, }
        },

})

minetest.register_node("real_trees:medium_pine_tree", {
    description = "Medium Pine Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:medium_pine_tree",
    tiles = {
          "default_pine_tree_top.png",
          "default_pine_tree_top.png",
          "default_pine_tree.png",
          "default_pine_tree.png",
          "default_pine_tree.png",
          "default_pine_tree.png",
    },
   
    groups = {choppy = 2, flammable = 2},
    
    on_timer = function(pos)
        local pos_fix = {x = pos.x - 2,y = pos.y + 2,z = pos.z - 2}               
            minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/pine/schems/large_pine_trunk.mts")
            fix_around({x = pos.x,y = pos.y + 1,z = pos.z},1,2)
            fix_around({x = pos.x,y = pos.y + 2,z = pos.z},1,2)
            fix_around({x = pos.x,y = pos.y + 3,z = pos.z},1,2)
            fix_around({x = pos.x,y = pos.y + 4,z = pos.z},1,2)
            fix_around({x = pos.x,y = pos.y + 5,z = pos.z},1,2)
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/pine/schems/large_pine_needles.mts","0",nil,false)  
            
        
    end,    
    
    node_box = {
       type = "fixed",
       fixed = { {-0.25,-0.5,0.25,0.25,0.5,-0.25}, }
        },
})

minetest.register_node("real_trees:large_pine_tree", {
    description = "Large Pine Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:large_pine_tree",
    tiles = {
          "default_pine_tree_top.png",
          "default_pine_tree_top.png",
          "default_pine_tree.png",
          "default_pine_tree.png",
          "default_pine_tree.png",
          "default_pine_tree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos)
        local pos_fix = {x = pos.x - 2,y = pos.y + 4,z = pos.z - 2}
        minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/pine/schems/pine_trunk.mts")
        fix_around({x = pos.x,y = pos.y + 1,z = pos.z},1,2)
        fix_around({x = pos.x,y = pos.y + 2,z = pos.z},1,2)
        fix_around({x = pos.x,y = pos.y + 2,z = pos.z},2,2)
        fix_around({x = pos.x,y = pos.y + 3,z = pos.z},1,2)
        fix_around({x = pos.x,y = pos.y + 4,z = pos.z},1,2)
        fix_around({x = pos.x,y = pos.y + 5,z = pos.z},1,2)
        fix_around({x = pos.x,y = pos.y + 6,z = pos.z},1,2)
        minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/pine/schems/pine_needles.mts","0",nil,false)
    end,

    node_box = {
       type = "fixed",
       fixed = { {-0.375,-0.5,0.375,0.375,0.5,-0.375}, }
        },
})
