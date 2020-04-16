scoreboard players set $oregen oreGenMaxY 44
scoreboard players set $oregen oreGenMinRY -60
scoreboard players set $oregen oreGenMaxRY 45 

scoreboard players set $oregen oreVeinLenMax 12
scoreboard players set $oregen oreGenSpawnMax 8
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 64

#1.5x and Longer veins in jungles
execute if predicate du:location/biome_types/jungle run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/jungle run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
execute if predicate du:location/biome_types/jungle run scoreboard players set $oregen oreVeinLenMax 18

#1.5x but lower density in plains
execute if predicate du:location/biome_types/plains run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/plains run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
execute if predicate du:location/biome_types/plains run scoreboard players set $oregen oreGenTargetDens 96

#.66 in deserts
execute if predicate du:location/biome_types/desert run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const2
execute if predicate du:location/biome_types/desert run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const3

#.66 in Savannah
execute if predicate du:location/biome_types/savanna run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const2
execute if predicate du:location/biome_types/savanna run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const3


function oregen:generators/post_setup
scoreboard players operation $oregen oreGenType = $oregen oreTypeLapis
function oregen:setup_generic_vein