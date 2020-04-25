execute if score $test ore.generator matches 1 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:lapis_ore replace minecraft:air

execute if predicate du:location/biome_types/taiga if predicate du:random/0.3 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:ice replace minecraft:stone
execute if predicate du:location/biome_types/taiga if predicate du:random/0.4 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:packed_ice replace minecraft:stone

execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:lapis_ore replace minecraft:stone
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:lapis_ore replace minecraft:andesite
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:lapis_ore replace minecraft:diorite
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:lapis_ore replace minecraft:granite
execute unless score $block_set ore.vein matches 1 run function oregen:blocks/qblocks/qlapis