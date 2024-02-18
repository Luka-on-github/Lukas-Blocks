MN = "lukasblocks:"
minetest.register_node(MN.. "smooth_stone_block", {
	description = "Smooth Stone Block",
	groups = {cracky = 2},
	tiles = {"smooth_stone.png"},
})

minetest.register_craft({
	type = "cooking",
	recipe = "default:stone_block",
	output =  MN.. "smooth_stone_block",
})