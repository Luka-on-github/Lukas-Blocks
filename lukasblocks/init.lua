minetest.register_node("lukasblocks:polished_stone_brick", {
	description = "Polished Stone Bricks",
	groups = {cracky = 1},
	tiles = {"polished_stone_brick.png"},
})

minetest.register_node("lukasblocks:masons_table", {
	description = "Mason's Table",
	groups = {cracky = 1},
	tiles = {"mason_top.png", "mason_bottom.png", "mason_side.png"},
	
	after_place_node = function(pos, placer)
        local meta = minetest.get_meta(pos)
        meta:set_string("formspec",
                "formspec_version[4]" ..
                "size[20,20]" ..
                "label[1,1;Mason's Table Recipes]" ..
                "button_exit[15,1;2,1;Exit;Exit]" ..
                "label[3,3; To craft something leftclick the table with the desired material]" ..
				"label[3,5; Stone Brick ---> Polished Stone Brick]"..
				"label[3,4; Stone ---> Column]")
	end,

	on_punch = function(pos, node, puncher, pointed_thing)
		if not (puncher and puncher:is_player()) then
			return
		end

		local wielded_item = puncher:get_wielded_item():get_name()
		if wielded_item == "default:stonebrick" then
			local inv = puncher:get_inventory()
			inv:add_item("main", ItemStack("lukasblocks:polished_stone_brick"))
			inv:remove_item("main", ItemStack("default:stonebrick".." "..1))
		elseif wielded_item == "default:stone" then
			local inv = puncher:get_inventory()
			inv:add_item("main", ItemStack("lukasblocks:stone_column"))
			inv:remove_item("main", ItemStack("default:stone".." "..1))
		end
	end
})

minetest.register_craft({
	output = "lukasblocks:masons_table",
	recipe = {{"", "default:steel_ingot", ""},
	{"", "default:wood", ""},
	{"", "default:steel_ingot", ""}},
})

minetest.register_node("lukasblocks:stone_column", {
	description = "Stone Column",
	groups = {cracky = 1},
	tiles = {"column_top.png", "column_top.png", "column_side.png"},
})

minetest.register_node("lukasblocks:chiseled_stone_column", {
	description = "Chiseled Stone Column",
	groups = {cracky = 1},
	tiles = {"column_top.png", "column_top.png", "chiseled_stone_column_side.png"},
})

minetest.register_tool("lukasblocks:chisel", {
	description = "Chisel",
	inventory_image = "chisel.png"
})

minetest.register_craft({
	output = "lukasblocks:chisel",
	recipe = {{"", "default:steel_ingot", ""},
	{"default:stick", "", ""}},
})

minetest.register_craft({
	output = "lukasblocks:chiseled_stone_column",
	recipe = {{"lukasblocks:stone_column", "lukasblocks:chisel"}},
	replacements = {{"lukasblocks:chisel","lukasblocks:chisel"}}
})