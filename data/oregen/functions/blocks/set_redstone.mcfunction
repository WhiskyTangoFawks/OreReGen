execute unless block ~ ~ ~ #oregen:replaceable run scoreboard players set $block_set ore.vein 1

execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:redstone_ore

execute unless score $block_set ore.vein matches 1 if predicate du:location/biome_types/desert store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:red_sand replace minecraft:sand
execute unless score $block_set ore.vein matches 1 if predicate du:location/biome_types/badlands store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:red_sand replace minecraft:sand
execute unless score $block_set ore.vein matches 1 if predicate du:location/biome_types/badlands store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:red_sand replace minecraft:coarse_dirt