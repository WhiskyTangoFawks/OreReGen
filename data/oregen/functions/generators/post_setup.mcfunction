function oregen:next_random
scoreboard players operation $oregen temp = $oregen oreGenRandomLast
scoreboard players operation $oregen temp %= $oregen oreGenSpawnMax
function oregen:next_random
scoreboard players operation $oregen temp2 = $oregen oreGenRandomLast
scoreboard players operation $oregen temp2 %= $oregen oreGenSpawnMax
scoreboard players operation $oregen oreGenSpawnMax = $oregen temp
scoreboard players operation $oregen oreGenSpawnMax += $oregen temp2

#Mountains- *2 gen height, *1.5 ore generation
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenMaxY *= $oregen const2
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax *= $oregen const3
execute if predicate du:location/biome_types/mountains run scoreboard players operation $oregen oreGenSpawnMax /= $oregen const2
