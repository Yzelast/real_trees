minetest.register_craft({
	type = "shapeless",
	output = "default:junglewood",
	recipe = {"real_trees:small_jungle_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:junglewood 2",
	recipe = {"real_trees:medium_jungle_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:junglewood 3",
	recipe = {"real_trees:large_jungle_tree"},
})

minetest.override_item("default:junglesapling",{

    on_timer = function(pos) 
        local pos_fix = {x = pos.x - 1, y = pos.y + 3, z = pos.z - 1}         
            minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/jungle/schems/small_jungle_trunk.mts")
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/jungle/schems/small_jungle_leaves.mts","0",nil,false)
        return false
    end,

	on_construct = function(pos)
        if can_grow(pos,4,1) then		
            minetest.get_node_timer(pos):start(480)
        end
	end,

})
