
function oregen:next_random
scoreboard players operation $oregen oreGenDensity = $oregen oreGenRandomLast
scoreboard players operation $oregen oreGenDensity %= $oregen oreGen256
scoreboard players operation $oregen oreGenDensity -= $oregen oreGenTargetY
execute if predicate du:location/biome_types/mountains run scoreboard players add $oregen oreGenDensity 48