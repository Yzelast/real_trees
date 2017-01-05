dofile(minetest.get_modpath("real_trees") .. "/config.lua")

-- Apple stuff

dofile(minetest.get_modpath("real_trees") .. "/trees/apple/abms.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/apple/functions.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/apple/itens.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/apple/leaves.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/apple/trunks.lua")

-- Pine stuff

dofile(minetest.get_modpath("real_trees") .. "/trees/pine/abms.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/pine/functions.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/pine/itens.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/pine/leaves.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/pine/trunks.lua")

-- Aspen stuff

dofile(minetest.get_modpath("real_trees") .. "/trees/aspen/abms.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/aspen/functions.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/aspen/itens.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/aspen/leaves.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/aspen/trunks.lua")

-- Acacia stuff

dofile(minetest.get_modpath("real_trees") .. "/trees/acacia/abms.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/acacia/functions.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/acacia/itens.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/acacia/leaves.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/acacia/trunks.lua")

-- Jungle stuff

dofile(minetest.get_modpath("real_trees") .. "/trees/jungle/abms.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/jungle/functions.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/jungle/itens.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/jungle/leaves.lua")
dofile(minetest.get_modpath("real_trees") .. "/trees/jungle/trunks.lua")

-- Used to fix the leaves that not fall after tree chop

minetest.register_abm {
	nodenames = {"group:leafdecay"},
	chance = 4,
	interval = 4,
	action = function(pos)
		if minetest.find_node_near(pos, 4, {"group:tree"}) == nil then
			minetest.set_node(pos,{name = "air"})
		end
	end
}
