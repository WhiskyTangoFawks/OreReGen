#execute if score $test ore.generator matches 1 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:emerald_ore replace minecraft:air


execute if score $test ore.generator matches 1 if predicate du:random/0.1 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:emerald_ore replace minecraft:air
execute if score $test ore.generator matches 1 if predicate du:random/0.3 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:mossy_cobblestone replace minecraft:air
execute if score $test ore.generator matches 1 if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:lapis_block replace minecraft:air
execute if score $test ore.generator matches 1 if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace minecraft:air

execute if predicate du:random/0.1 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:emerald_ore replace minecraft:stone
execute if predicate du:random/0.3 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:mossy_cobblestone replace minecraft:stone
execute if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:water replace minecraft:stone
execute if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace minecraft:stone

execute if predicate du:random/0.1 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:emerald_ore replace minecraft:granite
execute if predicate du:random/0.3 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:mossy_cobblestone replace minecraft:granite
execute if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:water replace minecraft:granite
execute if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace minecraft:granite

execute if predicate du:random/0.1 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:emerald_ore replace minecraft:andesite
execute if predicate du:random/0.3 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:mossy_cobblestone replace minecraft:andesite
execute if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:water replace minecraft:andesite
execute if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace minecraft:andesite

execute if predicate du:random/0.1 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:emerald_ore replace minecraft:diorite
execute if predicate du:random/0.3 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:mossy_cobblestone replace minecraft:diorite
execute if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:water replace minecraft:diorite
execute if predicate du:random/0.5 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace minecraft:diorite

execute unless predicate du:location/biome_types/taiga run