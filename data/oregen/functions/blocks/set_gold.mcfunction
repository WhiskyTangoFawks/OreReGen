execute if score $test ore.generator matches 1 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:gold_ore replace minecraft:air

execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:gold_ore replace minecraft:stone
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:gold_ore replace minecraft:andesite
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:gold_ore replace minecraft:diorite
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:gold_ore replace minecraft:granite
execute unless score $block_set ore.vein matches 1 run function oregen:blocks/qblocks/qcoalqgold