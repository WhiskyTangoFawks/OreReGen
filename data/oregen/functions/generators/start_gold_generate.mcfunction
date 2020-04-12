scoreboard players set $oregen oreGenMaxY 38
scoreboard players set $oregen oreGenMinRY 0
scoreboard players set $oregen oreGenMaxRY 1

scoreboard players set $oregen oreVeinLenMax 4
scoreboard players set $oregen oreGenSpawnMax 8
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 220

#taiga
execute if predicate du:location/biome_types/taiga run scoreboard players operation $oregen oreGenMaxY *= $oregen const2
execute if predicate du:location/biome_types/taiga run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/taiga run scoreboard players set $oregen oreGenTargetDens 200

#Mountains- *2 gen height, *1.5 ore generation
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenMaxY *= $oregen const2
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2


scoreboard players operation $oregen oreGenType = $oregen oreTypeGold
function oregen:setup_generic_vein