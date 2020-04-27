execute if score $test ore.generator matches 1 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:clay replace minecraft:air

execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:clay replace minecraft:sand
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:clay replace minecraft:dirt