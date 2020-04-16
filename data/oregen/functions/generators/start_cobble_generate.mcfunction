scoreboard players set $oregen oreGenMaxY 88
scoreboard players set $oregen oreGenMinRY 0
scoreboard players set $oregen oreGenMaxRY 95 

scoreboard players set $oregen oreVeinLenMax 12
scoreboard players set $oregen oreGenSpawnMax 300
scoreboard players set $oregen oreGenSpawnSum 0
scoreboard players set $oregen oreGenTargetDens 32

scoreboard players operation $oregen oreGenType = $oregen oreTypeCobble
function oregen:generators/post_setup
function oregen:setup_generic_vein