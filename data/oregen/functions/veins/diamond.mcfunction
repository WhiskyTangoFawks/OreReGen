
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ~ ~ ~ run function oregen:veins/set_diamond
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ~ ~1 ~ run function oregen:veins/set_diamond
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ~1 ~ ~ run function oregen:veins/set_diamond
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ~ ~ ~1 run function oregen:veins/set_diamond
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ~ ~-1 ~ run function oregen:veins/set_diamond
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ~-1 ~ ~ run function oregen:veins/set_diamond
function oregen:veins/density
execute if score $oregen oreGenDensity > $oregen oreGenTargetDens positioned ~ ~ ~-1 run function oregen:veins/set_diamond