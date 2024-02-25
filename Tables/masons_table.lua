MN = "lukasblocks:"
minetest.register_node(MN.. "masons_table", {
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
				"label[3,6; Stone ---> Column]"..
				"label[3,7; Roof Slate ---> Stone Roof]")
	end,

	on_punch = function(pos, node, puncher, pointed_thing)
		if not (puncher and puncher:is_player()) then
			return
		end

		local wielded_item = puncher:get_wielded_item():get_name()
		if wielded_item == "default:stonebrick" then
			local inv = puncher:get_inventory()
			inv:add_item("main", ItemStack(MN.. "polished_stone_brick"))
			inv:remove_item("main", ItemStack("default:stonebrick".." "..1))
		elseif wielded_item == "default:stone" then
			local inv = puncher:get_inventory()
			inv:add_item("main", ItemStack(MN.. "stone_column"))
			inv:remove_item("main", ItemStack("default:stone".." "..1))
		elseif wielded_item == MN.."roof_slate" then
			local inv = puncher:get_inventory()
			inv:add_item("main", ItemStack(MN.. "stone_roof"))
			inv:remove_item("main", ItemStack(MN.."roof_slate".." "..1))
		end
	end
})

minetest.register_craft({
	output = MN.. "masons_table",
	recipe = {{"", "default:steel_ingot", ""},
	{"", "default:wood", ""},
	{"", "default:steel_ingot", ""}},
})