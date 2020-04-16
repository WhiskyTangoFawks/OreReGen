
scoreboard players set $oregen oreGenMaxY 96
scoreboard players set $oregen oreGenMinRY -45
scoreboard players set $oregen oreGenMaxRY 30 

scoreboard players set $oregen oreVeinLenMax 12
#oregenSpawnMax is artificially high, because maxY is at 96, almost half the ore in a normal biome will (not) generate in air
scoreboard players set $oregen oreGenSpawnMax 160
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 98

#generate 1.5x in swamps at a higher density
execute if predicate du:location/biome_types/swamp run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/swamp run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
execute if predicate du:location/biome_types/swamp run scoreboard players set $oregen oreGenTargetDens 64

#Mountains- *2 gen height, *1.5 ore generation
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenMaxY *= $oregen const2
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2

scoreboard players operation $oregen oreGenType = $oregen oreTypeCoal
function oregen:setup_generic_vein