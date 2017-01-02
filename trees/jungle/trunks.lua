minetest.register_node("real_trees:small_jungle_tree", {
    description = "Small Jungle Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:small_jungle_tree",
    tiles = {
          "default_jungletree_top.png",
          "default_jungletree_top.png",
          "default_jungletree.png",
          "default_jungletree.png",
          "default_jungletree.png",
          "default_jungletree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos,elapsed)  
        local pos_fix = {x = pos.x - 2,y = pos.y + 4,z = pos.z - 2}
            minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/jungle/schems/medium_jungle_trunk.mts")
            fix_around({x = pos.x,y = pos.y + 3,z = pos.z},1,4)
            fix_around({x = pos.x,y = pos.y + 4,z = pos.z},1,4)
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/jungle/schems/medium_jungle_leaves.mts","random",nil,false)         
    end,
   
    node_box = {
       type = "fixed",
       fixed = { {-0.125,-0.5,0.125,0.125,0.5,-0.125}, }
        },

})

minetest.register_node("real_trees:medium_jungle_tree", {
    description = "Medium Jungle Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:medium_jungle_tree",
    tiles = {
          "default_jungletree_top.png",
          "default_jungletree_top.png",
          "default_jungletree.png",
          "default_jungletree.png",
          "default_jungletree.png",
          "default_jungletree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos,elapsed) 
        local pos_fix = {x = pos.x - 2,y = pos.y + 7,z = pos.z - 2}        
            minetest.place_schematic(pos ,minetest.get_modpath("real_trees").."/trees/jungle/schems/large_jungle_trunk.mts")
            fix_around({x = pos.x,y = pos.y + 4,z = pos.z},1,4)
            fix_around({x = pos.x,y = pos.y + 4,z = pos.z},2,4)
            fix_around({x = pos.x,y = pos.y + 5,z = pos.z},1,4)
            fix_around({x = pos.x,y = pos.y + 5,z = pos.z},2,4)
            fix_around({x = pos.x,y = pos.y + 7,z = pos.z},1,4) 
            minetest.place_schematic({x = pos.x - 1,y = pos.y,z = pos.z - 1},minetest.get_modpath("real_trees").."/trees/jungle/schems/jungle_base.mts","random",nil,false)
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/jungle/schems/large_jungle_leaves.mts","random",nil,false) 
    end,
    
    node_box = {
       type = "fixed",
       fixed = { {-0.25,-0.5,0.25,0.25,0.5,-0.25}, }
        },
})

minetest.register_node("real_trees:large_jungle_tree", {
    description = "Large Jungle Tree",
    drawtype = "nodebox",
    paramtype = "light",
    drop = "real_trees:large_jungle_tree",
    tiles = {
          "default_jungletree_top.png",
          "default_jungletree_top.png",
          "default_jungletree.png",
          "default_jungletree.png",
          "default_jungletree.png",
          "default_jungletree.png",
    },
   
    groups = {choppy = 2, flammable = 2},

    on_timer = function(pos,elapsed) 
        local pos_fix = {x = pos.x - 2,y = pos.y + 7,z = pos.z - 2}        
            minetest.place_schematic(pos ,minetest.get_modpath("real_trees").."/trees/jungle/schems/jungle_trunk.mts")
            fix_around({x = pos.x,y = pos.y,z = pos.z},1,4)
            fix_around({x = pos.x,y = pos.y + 1,z = pos.z},1,4)
            fix_around({x = pos.x,y = pos.y + 7,z = pos.z},1,4)
            fix_around({x = pos.x,y = pos.y + 7,z = pos.z},2,4)
            fix_around({x = pos.x,y = pos.y + 8,z = pos.z},1,4)
            fix_around({x = pos.x,y = pos.y + 8,z = pos.z},2,4)
            fix_around({x = pos.x,y = pos.y + 10,z = pos.z},1,4)
            fix_around({x = pos.x,y = pos.y + 10,z = pos.z},2,4)
            fix_around({x = pos.x,y = pos.y + 11,z = pos.z},1,4)
            fix_around({x = pos.x,y = pos.y + 11,z = pos.z},2,4)
            minetest.place_schematic({x = pos.x - 1,y = pos.y,z = pos.z - 1},minetest.get_modpath("real_trees").."/trees/jungle/schems/jungle_base.mts","random",nil,false)
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/jungle/schems/jungle_leaves.mts","random",nil,false)         
    end,
    
    node_box = {
       type = "fixed",
       fixed = { {-0.375,-0.5,0.375,0.375,0.5,-0.375}, }
        },
})
