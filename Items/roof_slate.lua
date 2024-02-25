MN = "lukasblocks:"
minetest.register_craftitem(MN.."roof_slate", {
    description = "Roof Slate",
    inventory_image = "roof_slate.png"
})

minetest.register_craft({
	output = MN.. "roof_slate 3",
	recipe = {{MN.."stone_nail", MN.."smooth_stone_block", MN.."stone_nail"}},
})