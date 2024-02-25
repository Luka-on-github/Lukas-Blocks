MN = "lukasblocks:"
minetest.register_craftitem(MN.."stone_nail", {
    description = "Stone Nail",
    inventory_image = "stone_nail.png"
})

minetest.register_craft({
	output = MN.. "stone_nail 16",
    recipe = {{MN.."chisel", MN.."smooth_stone_block"}}
})