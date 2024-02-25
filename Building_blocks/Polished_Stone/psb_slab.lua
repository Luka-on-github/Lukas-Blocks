MN = "lukasblocks:"
minetest.register_node(MN.. "psb_slab", {
	description = "Polished Stone Brick Slab",
	tiles = {"polished_stone_brick.png"},
	groups = {cracky = 2},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {{-0.5, -0.5, -0.5, 0.5, 0, 0.5}},}})

minetest.register_craft({
	output = MN.. "psb_slab",
	recipe = {{MN.. "polished_stone_brick", MN.. "chisel"}},
	replacements = {{MN.. "chisel",MN.. "chisel"}}
})