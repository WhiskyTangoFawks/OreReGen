execute unless block ~ ~ ~ #oregen:replaceable run scoreboard players set $block_set ore.vein 1
execute unless score $block_set ore.vein matches 1 if predicate du:location/biome_types/forest if predicate du:random/0.5 run setblock ~ ~ ~ minecraft:dirt
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:coal_ore