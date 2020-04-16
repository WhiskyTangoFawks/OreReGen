scoreboard players set $oregen oreGenMaxY 28
scoreboard players set $oregen oreGenMinRY 80
scoreboard players set $oregen oreGenMaxRY 20

scoreboard players set $oregen oreVeinLenMax 20
scoreboard players set $oregen oreGenSpawnMax 14
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 64

#Desert, generates 1.5x more, veins start lower but are 2x as long and denser
execute if predicate du:location/biome_types/desert run scoreboard players operation $oregen oreVeinLenMax *= $oregen const2
execute if predicate du:location/biome_types/desert run scoreboard players operation $oregen oreGenMaxY /= $oregen const2
execute if predicate du:location/biome_types/desert run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/desert run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
execute if predicate du:location/biome_types/desert run scoreboard players set $oregen oreGenTargetDens 64

#.66 in jungle
execute if predicate du:location/biome_types/jungle run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const2
execute if predicate du:location/biome_types/jungle run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const3

#.66 in Swamp
execute if predicate du:location/biome_types/swamp run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const2
execute if predicate du:location/biome_types/swamp run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const3


function oregen:generators/post_setup
scoreboard players operation $oregen oreGenType = $oregen oreTypeRedstone
function oregen:setup_generic_vein