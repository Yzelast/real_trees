minetest.register_craft({
	type = "shapeless",
	output = "default:acacia_wood",
	recipe = {"real_trees:small_acacia_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:acacia_wood 2",
	recipe = {"real_trees:medium_acacia_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:acacia_wood 3",
	recipe = {"real_trees:large_acacia_tree"},
})

minetest.override_item("default:acacia_sapling",{

    on_timer = function(pos) 
        local pos_fix = {x = pos.x - 1, y = pos.y, z = pos.z - 1}         
            minetest.set_node(pos,{name = "air"})            
            minetest.place_schematic(pos_fix,minetest.get_modpath("real_trees").."/trees/acacia/schems/small_acacia_tree.mts","0",nil,"false")
        return false
    end,

	on_construct = function(pos)
        if can_grow(pos,5,1) then		
            minetest.get_node_timer(pos):start(5)
        end
	end,

})
