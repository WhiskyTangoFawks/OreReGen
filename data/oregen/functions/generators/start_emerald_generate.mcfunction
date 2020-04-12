scoreboard players set $oregen oreGenMaxY 42
scoreboard players set $oregen oreGenMinRY 0
scoreboard players set $oregen oreGenMaxRY 1 

scoreboard players set $oregen oreVeinLenMax 0
scoreboard players set $oregen oreGenSpawnMax 4
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 0



#Mountains- *2 gen height, *1.5 ore generation
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenMaxY *= $oregen const2
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2

scoreboard players operation $oregen oreGenType = $oregen oreTypeEmerald
function oregen:setup_generic_vein