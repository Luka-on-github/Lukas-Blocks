MN = "lukasblocks:"
minetest.register_node(MN.. "carpenters_table", {
	description = "Carpenter's Table",
	groups = {cracky = 1},
	tiles = {"mason_top.png", "planks_block.png", "carpenters_table_side.png"},
	
	after_place_node = function(pos, placer)
        local meta = minetest.get_meta(pos)
        meta:set_string("formspec",
                "formspec_version[4]" ..
                "size[20,20]" ..
                "label[1,1;Carpenter's Table Recipes]" ..
                "button_exit[15,1;2,1;Exit;Exit]" ..
                "label[3,3; To craft something leftclick the table with the desired material]" ..
				"label[3,5; Wooden Plank ---> Planks Block]")
	end,

	on_punch = function(pos, node, puncher, pointed_thing)
		if not (puncher and puncher:is_player()) then
			return
		end

		local wielded_item = puncher:get_wielded_item():get_name()
		if wielded_item == MN.."plank" then
			local inv = puncher:get_inventory()
			inv:add_item("main", ItemStack(MN.. "planks_block"))
			inv:remove_item("main", ItemStack(MN.. "plank"..1))
		end
	end
})

minetest.register_craft({
	output = MN.. "carpenters_table",
	recipe = {{"", "default:steel_ingot", ""},
	{MN.."plank", "group:wood", MN.."plank"},
	{"", MN.."plank", ""}},
})