scoreboard players set $oregen oreGenMaxY 32
scoreboard players set $oregen oreGenMinRY 0
scoreboard players set $oregen oreGenMaxRY 1

scoreboard players set $oregen oreVeinLenMax 4
scoreboard players set $oregen oreGenSpawnMax 5
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 220

#taiga 1.5x
execute if predicate du:location/biome_types/taiga run scoreboard players operation $oregen oreGenMaxY /= $oregen const2
execute if predicate du:location/biome_types/taiga run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/taiga run scoreboard players set $oregen oreGenMaxY 52

#Plains 1.5x
execute if predicate du:location/biome_types/plains run scoreboard players operation $oregen oreGenMaxY /= $oregen const2
execute if predicate du:location/biome_types/plains run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/plains run scoreboard players set $oregen oreGenMaxY 44

#swamp 0.5x
execute if predicate du:location/biome_types/swamp run scoreboard players operation $oregen oreGenMaxY /= $oregen const2

function oregen:generators/post_setup
scoreboard players operation $oregen oreGenType = $oregen oreTypeGold
function oregen:setup_generic_vein