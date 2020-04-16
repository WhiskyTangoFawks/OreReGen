
scoreboard players set $oregen oreGenMaxY 96
scoreboard players set $oregen oreGenMinRY -45
scoreboard players set $oregen oreGenMaxRY 30 

scoreboard players set $oregen oreVeinLenMax 12
scoreboard players set $oregen oreGenSpawnMax 120

scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 98

#generate 1.5x in swamps at a higher density
execute if predicate du:location/biome_types/swamp run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/swamp run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
execute if predicate du:location/biome_types/swamp run scoreboard players set $oregen oreGenTargetDens 64

#generate 1.5x in badlands
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/badlands run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2

#generate 1.5x in jungle at a lower density
execute if predicate du:location/biome_types/jungle run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/jungle run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
execute if predicate du:location/biome_types/jungle run scoreboard players set $oregen oreGenTargetDens 128

#generate 0.66x in desert at a higher density
execute if predicate du:location/biome_types/desert run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const2
execute if predicate du:location/biome_types/desert run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const3
execute if predicate du:location/biome_types/desert run scoreboard players set $oregen oreGenTargetDens 48

#generate 0.66x in plains at a lower density
execute if predicate du:location/biome_types/plains run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const2
execute if predicate du:location/biome_types/plains run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const3
execute if predicate du:location/biome_types/plains run scoreboard players set $oregen oreGenTargetDens 128

scoreboard players operation $oregen oreGenType = $oregen oreTypeCoal
function oregen:generators/post_setup
function oregen:setup_generic_vein