MN = "lukasblocks:"
minetest.register_tool(MN.."saw", {
	description = "Saw",
	inventory_image = "saw.png"
})

minetest.register_craft({
	output = MN.. "saw",
	recipe = {{"", MN.."stone_nail", ""},
	{"default:steel_ingot", "default:stick", "dye:red"}},
})