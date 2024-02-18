MN = "lukasblocks:"
minetest.register_node(MN.. "chiseled_stone_column", {
	description = "Chiseled Stone Column",
	groups = {cracky = 2},
	tiles = {"column_top.png", "column_top.png", "chiseled_stone_column_side.png"},
})

minetest.register_craft({
	output = MN.. "chiseled_stone_column",
	recipe = {{MN.. "stone_column", MN.. "chisel"}},
	replacements = {{MN.. "chisel",MN.. "chisel"}}
})