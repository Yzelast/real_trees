minetest.register_abm {
	nodenames = "default:sapling",
	chance = 1,
	interval = 2,
	action = function(pos)
		if apple_growth(pos,1,1) and (not minetest.get_node_timer(pos):is_started()) then
			minetest.get_node_timer(pos):start(growth_time["apple"] * 1)
		end
	end
}

minetest.register_abm {
	nodenames = "real_trees:a_small_tree",
	chance = 1,
	interval = 4,
	action = function(pos)
		if apple_growth(pos,2,1) and (not minetest.get_node_timer(pos):is_started()) then
			minetest.get_node_timer(pos):start(growth_time["apple"] * 2)
		end
	end
}

minetest.register_abm {
	nodenames = "real_trees:a_medium_tree",
	chance = 1,
	interval = 6,
	action = function(pos)
		if apple_growth(pos,3,1) and (not minetest.get_node_timer(pos):is_started()) then
			minetest.get_node_timer(pos):start(growth_time["apple"] * 3)
		end
	end
}

minetest.register_abm {
	nodenames = "real_trees:a_large_tree",
	chance = 1,
	interval = 8,
	action = function(pos)
		if apple_growth(pos,4,1) and (not minetest.get_node_timer(pos):is_started()) then
			minetest.get_node_timer(pos):start(growth_time["apple"] * 4)
		end
	end
}
