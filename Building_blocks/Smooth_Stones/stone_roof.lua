MN = "lukasblocks:"
minetest.register_node(MN.."stone_roof", {
    description = "Stone roof",
    groups = {choppy = 2},
    tiles = {"stone_roof.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
        fixed ={
            {0.2, -0.5, -0.5,  0.5, -0.2, 0.5},
            {0.0, -0.5, -0.5,  0.3, 0, 0.5},
            {-0.2, -0.5, -0.5,  0.1, 0.2, 0.5},
            {-0.4, -0.5, -0.5,  -0.1, 0.4, 0.5},
            {-0.5, -0.5, -0.5,  -0.3, 0.5, 0.5},
        }}
})