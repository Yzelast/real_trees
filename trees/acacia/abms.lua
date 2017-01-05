minetest.register_abm {
	nodenames = "default:acacia_sapling",
	chance = 1,
	interval = 2,
	action = function(pos)
		if acacia_growth(pos,1,1) and (not minetest.get_node_timer(pos):is_started()) then
			minetest.get_node_timer(pos):start(growth_time["acacia"] * 1)
		end
	end
}

minetest.register_abm {
	nodenames = "real_trees:a_small_acacia_tree",
	chance = 1,
	interval = 4,
	
	action = function(pos)
		if acacia_growth(pos,2,1) and (not minetest.get_node_timer(pos):is_started()) then
			minetest.get_node_timer(pos):start(growth_time["acacia"] * 2)
		end
	end
}

minetest.register_abm {
	nodenames = "real_trees:a_medium_acacia_tree",
	chance = 1,
	interval = 6,
	action = function(pos)
		if acacia_growth(pos,3,1) and (not minetest.get_node_timer(pos):is_started()) then
			minetest.get_node_timer(pos):start(growth_time["acacia"] * 3)
		end
	end
}

minetest.register_abm {
	nodenames = "real_trees:a_large_acacia_tree",
	chance = 1,
	interval = 8,
	action = function(pos)
		if acacia_growth(pos,4,1) and (not minetest.get_node_timer(pos):is_started()) then
			minetest.get_node_timer(pos):start(growth_time["acacia"] * 4)
		end
	end
}

