scoreboard players set $oregen oreGenMaxY 36
scoreboard players set $oregen oreGenMinRY 0
scoreboard players set $oregen oreGenMaxRY 1 

scoreboard players set $oregen oreVeinLenMax 0
scoreboard players set $oregen oreGenSpawnMax 2
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 0

#1.5x in savannah
execute if predicate du:location/biome_types/savanna run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/savanna run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2

#Swamp at 1.5
execute if predicate du:location/biome_types/swamp run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/swamp run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2

#Badlands at 0.66, lower density
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
execute if predicate du:location/biome_types/badlands run scoreboard players set $oregen oreGenTargetDens 128

function oregen:generators/post_setup
scoreboard players operation $oregen oreGenType = $oregen oreTypeEmerald
function oregen:setup_generic_vein