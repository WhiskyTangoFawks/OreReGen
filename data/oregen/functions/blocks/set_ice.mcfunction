execute unless block ~ ~ ~ #oregen:replaceable run scoreboard players set $block_set ore.vein 1

execute unless score $block_set ore.vein matches 1 if predicate du:random/0.3 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:packed_ice
execute unless score $block_set ore.vein matches 1 if predicate du:random/0.3 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:blue_ice
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:ice