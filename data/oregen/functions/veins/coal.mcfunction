
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^ ^ ^ run function oregen:veins/set_coal
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^1 ^ ^ run function oregen:veins/set_coal
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^2 ^ ^ run function oregen:veins/set_coal
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^3 ^ ^ run function oregen:veins/set_coal
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^4 ^ ^ run function oregen:veins/set_coal
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^5 ^ ^ run function oregen:veins/set_coal
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^6 ^ ^ run function oregen:veins/set_coal
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^7 ^ ^ run function oregen:veins/set_coal
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ^8 ^ ^ run function oregen:veins/set_coal


scoreboard players add $oregen oreVeinLenSum 1
execute positioned ^ ^ ^1 if score $oregen oreVeinLenSum < $oregen oreVeinLenMax run function oregen:veins/coal