scoreboard players set $oregen oreGenMaxY 18
scoreboard players set $oregen oreGenMinRY 0
scoreboard players set $oregen oreGenMaxRY 1 

scoreboard players set $oregen oreVeinLenMax 0
scoreboard players set $oregen oreGenSpawnMax 4
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 64

#Taiga at 1.5
execute if predicate du:location/biome_types/taiga run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/taiga run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2

#Savannah at 0.66
execute if predicate du:location/biome_types/savanna run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const2
execute if predicate du:location/biome_types/savanna run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const3

#Badlands 0.66
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const2
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const3


function oregen:generators/post_setup
scoreboard players operation $oregen oreGenType = $oregen oreTypeDiamond
function oregen:setup_generic_vein