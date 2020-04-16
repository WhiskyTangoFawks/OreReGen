scoreboard players set $oregen oreGenMaxY 68
scoreboard players set $oregen oreGenMinRY -45
scoreboard players set $oregen oreGenMaxRY 30 

scoreboard players set $oregen oreVeinLenMax 12
scoreboard players set $oregen oreGenSpawnMax 44
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 156

#Badlands, 1.5x and longer, but less dense
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreVeinLenMax *= $oregen const3
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreVeinLenMax /= $oregen const2
execute if predicate du:location/biome_types/badlands run scoreboard players set $oregen oreGenTargetDens 190

#.66 in swamp, at lower average
execute if predicate du:location/biome_types/swamp run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const2
execute if predicate du:location/biome_types/swamp run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const3
execute if predicate du:location/biome_types/swamp run scoreboard players set $oregen oreGenMaxY 52

#1.5 in Deserts
execute if predicate du:location/biome_types/plains run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
execute if predicate du:location/biome_types/plains run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3

#.66 in jungles
execute if predicate du:location/biome_types/jungle run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const2
execute if predicate du:location/biome_types/jungle run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const3


function oregen:generators/post_setup
scoreboard players operation $oregen oreGenType = $oregen oreTypeIron
function oregen:setup_generic_vein