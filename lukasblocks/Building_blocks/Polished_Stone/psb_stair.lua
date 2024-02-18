MN = "lukasblocks:"
minetest.register_node(MN.. "psb_stair", {
	description = "Polished Stone Brick Stair",
	tiles = {"polished_stone_brick.png"},
	groups = {cracky = 2},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		{-0.5, 0, 0, 0.5, 0.5, 0.5}}}})

minetest.register_craft({
	output = MN.. "psb_stair",
	recipe = {{MN.. "psb_slab", MN.. "psb_half_slab"}},
})