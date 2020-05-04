execute unless block ~ ~ ~ #oregen:replaceable run scoreboard players set $block_set ore.vein 1
execute unless score $block_set ore.vein matches 1 if predicate du:random/0.1 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:nether_quartz_ore
execute unless score $block_set ore.vein matches 1 if predicate du:random/0.3 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:soul_sand
execute unless score $block_set ore.vein matches 1 if predicate du:random/0.5 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:magma_block
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:netherrack
