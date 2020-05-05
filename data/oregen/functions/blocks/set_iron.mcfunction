execute unless score $block_set ore.vein matches 1 if predicate du:random/0.3 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:iron_ore
execute if predicate du:location/biome_types/jungle run function oregen:blocks/obsidian
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:granite