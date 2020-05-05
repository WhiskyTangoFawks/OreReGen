execute unless score $block_set ore.vein matches 1 if predicate du:location/biome_types/savanna if predicate du:random/0.4 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:dirt
execute unless score $block_set ore.vein matches 1 if predicate du:location/biome_types/savanna if predicate du:random/0.5 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:gravel
execute unless score $block_set ore.vein matches 1 if predicate du:location/biome_types/badlands if predicate du:random/0.4 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:dirt
execute unless score $block_set ore.vein matches 1 if predicate du:location/biome_types/badlands if predicate du:random/0.5 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:gravel
execute unless score $block_set ore.vein matches 1 if predicate du:location/biome_types/plains if predicate du:random/0.4 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:dirt
execute unless score $block_set ore.vein matches 1 if predicate du:location/biome_types/plains if predicate du:random/0.5 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:gravel

execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:gold_ore