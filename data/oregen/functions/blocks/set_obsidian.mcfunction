#Testing mode to set air blocks
execute if score $test ore.generator matches 1 if predicate du:random/0.7 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:obsidian replace minecraft:air
execute if score $test ore.generator matches 1 if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:magma_block replace minecraft:air
execute if score $test ore.generator matches 1 if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:bedrock replace minecraft:air
execute if score $test ore.generator matches 1 if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:lava replace minecraft:air

execute if predicate du:random/0.7 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:obsidian replace minecraft:stone
execute if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:magma_block replace minecraft:stone
execute if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:bedrock replace minecraft:stone
execute if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:lava replace minecraft:stone