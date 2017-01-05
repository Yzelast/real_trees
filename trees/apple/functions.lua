local function node_exist(table,node)
	for key,value in pairs(table) do
		if value == node.name then
		return true
		end
	end
return false
end 

local function fix_trunks(pos,size)
	if size == 1 then
		for i = 0,1 do minetest.set_node({x = pos.x,y = pos.y + i,z = pos.z},{name = "air"}) end
	elseif size == 2 then
		for i = 0,4 do minetest.set_node({x = pos.x,y = pos.y + i,z = pos.z},{name = "air"}) end
	elseif size == 3 then
		for i = 0,4 do minetest.set_node({x = pos.x,y = pos.y + i,z = pos.z},{name = "air"}) end
	elseif size == 4 then
		for i = 0,4 do minetest.set_node({x = pos.x,y = pos.y + i,z = pos.z},{name = "air"}) end
	end
end

local function fix_leaves(pos)

local leaves =	{
				"real_trees:small_leaves",
				"real_trees:corner_leaves",
				"real_trees:wide_leaves",
				"real_trees:leaf_slab",
				"default:leaves",
				}

local positions =	{
					{x = pos.x - 1,y = pos.y,z = pos.z - 1},
					{x = pos.x - 1,y = pos.y,z = pos.z},
					{x = pos.x - 1,y = pos.y,z = pos.z + 1},
					{x = pos.x,y = pos.y,z = pos.z - 1},
					{x = pos.x,y = pos.y,z = pos.z + 1},
					{x = pos.x + 1,y = pos.y,z = pos.z - 1},
					{x = pos.x + 1,y = pos.y,z = pos.z},
					{x = pos.x + 1,y = pos.y,z = pos.z + 1}
					}

	for key,value in pairs(positions) do
						if node_exist(leaves,minetest.get_node(value)) then
							minetest.set_node(value,{name = "air"})
						end
					end
end

local function fix_everything(pos,size)
	if size == 1 then
		fix_trunks(pos,1)
	elseif size == 2 then
		fix_trunks(pos,2)
	elseif size == 3 then
		fix_trunks(pos,3)
		fix_leaves({x = pos.x,y = pos.y + 1,z = pos.z})
		fix_leaves({x = pos.x,y = pos.y + 2,z = pos.z})
	elseif size == 4 then
		fix_trunks(pos,4)
		fix_leaves({x = pos.x,y = pos.y + 3,z = pos.z})
		fix_leaves({x = pos.x,y = pos.y + 4,z = pos.z})
	end
end

local function can_grow(pos,size)

	local soil  = {"default:dirt","default:dirt_with_grass","default:dirt_with_dry_grass","default:dirt_with_snow"}
	local under = {x = pos.x,y = pos.y - 1,z = pos.z}

	if size == 1 then
		if minetest.get_node_light({x = pos.x,y = pos.y + 1,z = pos.z}) == 15 and node_exist(soil,minetest.get_node(under)) then
		return true
		else
		return false
	end
elseif size == 2 then
		if minetest.get_node_light({x = pos.x,y = pos.y + 3,z = pos.z}) == 15 and node_exist(soil,minetest.get_node(under)) then
		return true
		else
		return false
		end
elseif size == 3 then
		if minetest.get_node_light({x = pos.x,y = pos.y + 5,z = pos.z}) == 15 and node_exist(soil,minetest.get_node(under)) then
		return true
		else
		return false
		end
elseif size == 4 then
		if minetest.get_node_light({x = pos.x,y = pos.y + 8,z = pos.z}) == 15 and node_exist(soil,minetest.get_node(under)) then
		return true
		else
		return false
		end
	end
end

function apple_growth(pos,size,action)
	if action == 1 then
		if can_grow(pos,size) then return true else return false end
elseif action == 2 then
	if size == 1 then
		fix_everything(pos,1)
		minetest.place_schematic(pos,minetest.get_modpath("real_trees").."/trees/apple/schems/small_tree.mts","0",nil,false)
elseif size == 2 then
		fix_everything(pos,2)
		minetest.place_schematic({x = pos.x - 1,y = pos.y,z = pos.z - 1},minetest.get_modpath("real_trees").."/trees/apple/schems/medium_tree.mts","0",nil,false)
elseif size == 3 then
		fix_everything(pos,3)
		minetest.place_schematic({x = pos.x - 1,y = pos.y,z = pos.z - 1},minetest.get_modpath("real_trees").."/trees/apple/schems/large_tree.mts","0",nil,false)
elseif size == 4 then
		fix_everything(pos,4)
		minetest.place_schematic({x = pos.x - 2,y = pos.y,z = pos.z - 2},minetest.get_modpath("real_trees").."/trees/apple/schems/tree.mts","random",nil,false)
	end
	end
end
