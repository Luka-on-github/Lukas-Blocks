MN = "lukasblocks:"
minetest.register_node(MN.."wooden_lamp", {
    description = "Wooden Lamp",
    groups = {choppy = 2},
    tiles = {"wooden_lamp.png"},
    light_source = 12,
})

minetest.register_craft({
	recipe = {{MN.."planks_block", "default:torch", MN.."saw"}},
	output =  MN.. "wooden_lamp",
})