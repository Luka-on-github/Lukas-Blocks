MN = "lukasblocks:"
minetest.register_craftitem(MN.."plank", {
    description = "Wooden Plank",
    inventory_image = "plank.png"
})

minetest.register_craft({
	output = MN.. "plank 2",
    recipe = {{MN.."stone_nail", "group:wood", MN.."stone_nail"}}
})