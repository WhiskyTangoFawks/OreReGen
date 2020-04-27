#execute if score $test ore.generator matches 1 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:emerald_ore replace minecraft:air


execute if score $test ore.generator matches 1 if predicate du:random/0.1 unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run fill ~ ~ ~ ~ ~ ~ minecraft:emerald_ore replace minecraft:air
execute unless block ~ ~ ~ #oregen:replaceable run scoreboard players set $block_set ore.vein 1
execute unless score $block_set ore.vein matches 1 if predicate du:random/0.1 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:emerald_ore
execute unless score $block_set ore.vein matches 1 if predicate du:random/0.3 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:mossy_cobblestone
execute unless score $block_set ore.vein matches 1 if predicate du:random/0.5 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:water
execute unless score $block_set ore.vein matches 1 store result score $block_set ore.vein run setblock ~ ~ ~ minecraft:cobblestone