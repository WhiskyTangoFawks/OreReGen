scoreboard players set $oregen oreGenMaxY 38
scoreboard players set $oregen oreGenMinRY 80
scoreboard players set $oregen oreGenMaxRY 20

scoreboard players set $oregen oreVeinLenMax 32
scoreboard players set $oregen oreGenSpawnMax 25
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 64

#Desert, generates 1.5x more, veins start lower but are 2x as long and denser
execute if predicate du:location/biome_types/desert run scoreboard players operation $oregen oreVeinLenMax *= $oregen const2
execute if predicate du:location/biome_types/desert run scoreboard players operation $oregen oreGenMaxY /= $oregen const2
execute if predicate du:location/biome_types/desert run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/desert run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
execute if predicate du:location/biome_types/desert run scoreboard players set $oregen oreGenTargetDens 64

#Mountains- *2 gen height, *1.5 ore generation
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenMaxY *= $oregen const2
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2


scoreboard players operation $oregen oreGenType = $oregen oreTypeRedstone
function oregen:setup_generic_vein