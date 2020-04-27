execute unless block ~ ~ ~ #oregen:replaceable run scoreboard players set $block_set ore.vein 1
execute unless score $block_set ore.vein matches 1 if predicate du:random/0.7 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:obsidian
execute unless score $block_set ore.vein matches 1 unless predicate du:location/biome_types/taiga if predicate du:random/0.5 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:magma_block
execute unless score $block_set ore.vein matches 1 if predicate du:location/biome_types/taiga if predicate du:random/0.5 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:ice
execute unless score $block_set ore.vein matches 1 if predicate du:random/0.5 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:bedrock
execute unless score $block_set ore.vein matches 1 unless predicate du:location/biome_types/taiga store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:lava
execute unless score $block_set ore.vein matches 1 if predicate du:location/biome_types/taiga store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:packed_ice