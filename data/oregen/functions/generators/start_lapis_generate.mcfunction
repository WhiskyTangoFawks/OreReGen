scoreboard players set $oregen oreGenMaxY 52
scoreboard players set $oregen oreGenMinRY -60
scoreboard players set $oregen oreGenMaxRY 45 

scoreboard players set $oregen oreVeinLenMax 12
scoreboard players set $oregen oreGenSpawnMax 8
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 64

execute if predicate du:location/biome_types/jungle run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/jungle run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
execute if predicate du:location/biome_types/jungle run scoreboard players set $oregen oreVeinLenMax 18

#Mountains- *2 gen height, *1.5 ore generation
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenMaxY *= $oregen const2
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2

scoreboard players operation $oregen oreGenType = $oregen oreTypeLapis
function oregen:setup_generic_vein