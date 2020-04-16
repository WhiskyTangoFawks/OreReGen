scoreboard players set $oregen oreGenMaxY 88
scoreboard players set $oregen oreGenMinRY 0
scoreboard players set $oregen oreGenMaxRY 95 

scoreboard players set $oregen oreVeinLenMax 12
scoreboard players set $oregen oreGenSpawnMax 300
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 32

#Mountains- *2 gen height, *1.5 ore generation
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenMaxY *= $oregen const2
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2

scoreboard players operation $oregen oreGenType = $oregen oreTypeCobble
function oregen:setup_generic_vein