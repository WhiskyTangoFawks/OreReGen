scoreboard players set $oregen oreGenMaxY 68
scoreboard players set $oregen oreGenMinRY -45
scoreboard players set $oregen oreGenMaxRY 30 

scoreboard players set $oregen oreVeinLenMax 12
scoreboard players set $oregen oreGenSpawnMax 64
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 156

#Badlands, 1.5x and longer, but less dense
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreVeinLenMax *= $oregen const3
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreVeinLenMax /= $oregen const2
execute if predicate du:location/biome_types/badlands run scoreboard players set $oregen oreGenTargetDens 190

#Mountains- *2 gen height, *1.5 ore generation
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenMaxY *= $oregen const2
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2

scoreboard players operation $oregen oreGenType = $oregen oreTypeIron
function oregen:setup_generic_vein