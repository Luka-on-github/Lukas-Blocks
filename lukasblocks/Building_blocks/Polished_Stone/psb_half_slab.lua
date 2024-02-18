MN = "lukasblocks:"
minetest.register_node(MN.. "psb_half_slab", {
	description = "Polished Stone Brick Half Slab",
	tiles = {"polished_stone_brick.png"},
	groups = {cracky = 2},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{-0.5, -0.5, -0.5, 0, 0, 0.5}},}})

minetest.register_craft({
	output = MN.. "psb_half_slab",
	recipe = {{MN.. "psb_slab", MN.. "chisel"}},
	replacements = {{MN.. "chisel",MN.. "chisel"}}
})