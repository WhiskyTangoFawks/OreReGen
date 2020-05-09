
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace minecraft:stone

#replace sand with clay in river biomes
execute unless score $block_set ore.vein matches 1 if predicate du:location/biomes/river store result score $block_set ore.vein run fill ~ ~-1 ~ ~ ~1 ~ minecraft:clay replace minecraft:sand

#in non-desert biomes, run a sand replacement to break up large patches of sand
execute unless score $block_set ore.vein matches 1 unless predicate du:location/biome_types/desert if block ~ ~ ~ minecraft:sand run function oregen:blocks/replace_sand