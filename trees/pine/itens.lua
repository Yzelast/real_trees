minetest.register_craft({
	type = "shapeless",
	output = "default:pine_wood",
	recipe = {"real_trees:small_pine_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:pine_wood 2",
	recipe = {"real_trees:medium_pine_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:pine_wood 3",
	recipe = {"real_trees:large_pine_tree"},
})

minetest.override_item("default:pine_sapling",{

    on_timer = function(pos) 
        local pos_fix = {x = pos.x - 1, y = pos.y + 1, z = pos.z - 1}         
            minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/pine/schems/small_pine_trunk.mts")
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/pine/schems/small_pine_needles.mts","0",nil,false)
        return false
    end,

	on_construct = function(pos)
        if can_grow(pos,1,1) then		
            minetest.get_node_timer(pos):start(5)
        end
	end,

})

