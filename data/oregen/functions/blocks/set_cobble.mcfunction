#execute if score $test ore.generator matches 1 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace minecraft:air

execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace minecraft:stone
#execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:lapis_ore replace minecraft:andesite
#execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:lapis_ore replace minecraft:diorite
#execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:lapis_ore replace minecraft:granite