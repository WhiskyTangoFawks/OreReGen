
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^ ^ ^ run function oregen:veins/set_lapis

scoreboard players add $oregen oreVeinLenSum 1
execute positioned ^ ^ ^1 if score $oregen oreVeinLenSum < $oregen oreVeinLenMax run function oregen:veins/lapis