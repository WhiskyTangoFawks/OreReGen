#Iron sets the block to granite, then replaces some of the granite with iron ore
execute if score $test ore.generator matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:granite replace minecraft:air

execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:granite replace minecraft:stone
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:granite replace minecraft:andesite
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:granite replace minecraft:diorite

execute unless score $block_set ore.vein matches 1 run function oregen:blocks/qblocks/qcoalqiron

execute if predicate du:random/0.3 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:iron_ore replace minecraft:granite
