minetest.register_craft({
	type = "shapeless",
	output = "default:wood",
	recipe = {"real_trees:small_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:wood 2",
	recipe = {"real_trees:medium_tree"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:wood 3",
	recipe = {"real_trees:large_tree"},
})

minetest.override_item("default:sapling",{

    on_timer = function(pos) 
        minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/apple/schems/small_tree.mts")
        return false
    end,

	on_construct = function(pos)
        if can_grow(pos,1,1) then		
            minetest.get_node_timer(pos):start(5)
        end
	end,

})
