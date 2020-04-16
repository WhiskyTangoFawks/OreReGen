function oregen:veins/density
execute if score $oregen oreGenDensity <= $oregen const26 run fill ~ ~ ~ ~ ~ ~ minecraft:bedrock replace minecraft:stone
execute if score $oregen oreGenDensity >= $oregen const243 run fill ~ ~ ~ ~ ~ ~ minecraft:lava replace minecraft:stone
execute if score $oregen oreGenDensity >= $oregen const192 run fill ~ ~ ~ ~ ~ ~ minecraft:magma_block replace minecraft:stone
execute if score $oregen oreGenDensity > $oregen const26 run fill ~ ~ ~ ~ ~ ~ minecraft:obsidian replace minecraft:stone

execute if score $oregen testMode matches 1 if score $oregen oreGenDensity <= $oregen const26 run fill ~ ~ ~ ~ ~ ~ minecraft:bedrock replace minecraft:air
execute if score $oregen testMode matches 1 if score $oregen oreGenDensity >= $oregen const243 run fill ~ ~ ~ ~ ~ ~ minecraft:lava replace minecraft:air
execute if score $oregen testMode matches 1 if score $oregen oreGenDensity >= $oregen const192 run fill ~ ~ ~ ~ ~ ~ minecraft:magma_block replace minecraft:air
execute if score $oregen testMode matches 1 if score $oregen oreGenDensity > $oregen const26 run fill ~ ~ ~ ~ ~ ~ minecraft:obsidian replace minecraft:air



scoreboard players add $oregen oreGenSpawnSum 1