minetest.register_abm {
	nodenames = "default:aspen_sapling",
	chance = 1,
	interval = 2,
	action = function(pos)
		if aspen_growth(pos,1,1) and (not minetest.get_node_timer(pos):is_started()) then
		minetest.get_node_timer(pos):start(growth_time["aspen"] * 1)
		end
	end
}

minetest.register_abm {
	nodenames = "real_trees:a_small_aspen_tree",
	chance = 1,
	interval = 4,
	action = function(pos)
		if aspen_growth(pos,2,1) and (not minetest.get_node_timer(pos):is_started()) then
			minetest.get_node_timer(pos):start(growth_time["aspen"] * 2)
		end
	end
}

minetest.register_abm {
	nodenames = "real_trees:a_medium_aspen_tree",
	chance = 1,
	interval = 6,
	action = function(pos)
		if aspen_growth(pos,3,1) and (not minetest.get_node_timer(pos):is_started()) then
			minetest.get_node_timer(pos):start(growth_time["aspen"] * 3)
		end
	end
}

minetest.register_abm {
	nodenames = "real_trees:a_large_aspen_tree",
	chance = 1,
	interval = 8,
	action = function(pos)
		if aspen_growth(pos,4,1) and (not minetest.get_node_timer(pos):is_started()) then
			minetest.get_node_timer(pos):start(growth_time["aspen"] * 4)
		end
	end
}


