minetest.register_craft({
	type = "shapeless",
	output = "default:aspen_wood",
	recipe = {"real_trees:small_aspen_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:aspen_wood 2",
	recipe = {"real_trees:medium_aspen_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:aspen_wood 3",
	recipe = {"real_trees:large_aspen_tree"},
})

minetest.override_item("default:aspen_sapling",{

    on_timer = function(pos) 
        local pos_fix = {x = pos.x - 1, y = pos.y + 1, z = pos.z - 1}         
            minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/aspen/schems/small_aspen_trunk.mts")
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/aspen/schems/small_aspen_leaves.mts","0",nil,false)
        return false
    end,

	on_construct = function(pos)
        if can_grow(pos,3,1) then		
            minetest.get_node_timer(pos):start(480)
        end
	end,

})
