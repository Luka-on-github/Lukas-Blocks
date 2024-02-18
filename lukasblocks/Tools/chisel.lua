MN = "lukasblocks:"
minetest.register_tool(MN.. "chisel", {
	description = "Chisel",
	inventory_image = "chisel.png"
})

minetest.register_craft({
	output = MN.. "chisel",
	recipe = {{"", "default:steel_ingot", ""},
	{"default:stick", "", ""}},
})