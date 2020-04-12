
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^ ^ ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^1 ^ ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^2 ^ ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^3 ^ ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^4 ^ ^ run function oregen:veins/set_gold

execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^ ^1 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^1 ^1 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^2 ^1 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^3 ^1 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^4 ^1 ^ run function oregen:veins/set_gold

execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^ ^2 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^1 ^2 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^2 ^2 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^3 ^2 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^4 ^2 ^ run function oregen:veins/set_gold

execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^ ^3 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^1 ^3 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^2 ^3 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^3 ^3 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^4 ^3 ^ run function oregen:veins/set_gold

execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^ ^4 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^1 ^4 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^2 ^4 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^3 ^4 ^ run function oregen:veins/set_gold
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^4 ^4 ^ run function oregen:veins/set_gold

scoreboard players add $oregen oreVeinLenSum 1
execute positioned ^ ^ ^1 if score $oregen oreVeinLenSum < $oregen oreVeinLenMax run function oregen:veins/gold