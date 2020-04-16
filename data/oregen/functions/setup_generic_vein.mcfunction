#say Setting up a generic vein
#All start variables need to start 1 increment down, so it catches up with the base value after the initial incremnt

scoreboard players set $oregen oreGenStartX -1
scoreboard players set $oregen oreGenStartY -1
scoreboard players set $oregen oreGenStartZ -1
scoreboard players set $oregen oreGenStartRX -5
scoreboard players set $oregen oreGenStartRY -5

scoreboard players set $oregen oreGenMaxX 12
scoreboard players set $oregen oreGenMaxZ 12
scoreboard players set $oregen oreGenMaxRX 180
scoreboard players set $oregen oreVeinLenSum 0

#Set startX 0 to 15
function oregen:next_random
scoreboard players operation $oregen oreGenTargetX = $oregen oreGenRandomLast
scoreboard players operation $oregen oreGenTargetX %= $oregen oreGenMaxX

#Set startY 0 to yMax
function oregen:next_random
scoreboard players operation $oregen oreGenTargetY = $oregen oreGenRandomLast
scoreboard players operation $oregen oreGenTargetY %= $oregen oreGenMaxY
function oregen:next_random
scoreboard players operation $oregen temp = $oregen oreGenRandomLast
scoreboard players operation $oregen temp %= $oregen oreGenMaxY
scoreboard players operation $oregen oreGenTargetY += $oregen temp
scoreboard players operation $oregen oreGenTargetY /= $oregen const2


#Set startZ 0 to 15
function oregen:next_random
scoreboard players operation $oregen oreGenTargetZ = $oregen oreGenRandomLast
scoreboard players operation $oregen oreGenTargetZ %= $oregen oreGenMaxZ

#Set startrotate X 0 to 360
function oregen:next_random
scoreboard players operation $oregen oreGenTargetRX = $oregen oreGenRandomLast
scoreboard players operation $oregen oreGenTargetRX %= $oregen oreGenMaxRX

#set startrotateY minRotateY to maxRotateY
function oregen:next_random
scoreboard players operation $oregen oreGenTargetRY = $oregen oreGenRandomLast
scoreboard players operation $oregen oreGenTargetRY %= $oregen oreGenMaxRY
scoreboard players operation $oregen oreGenTargetRY += $oregen oreGenMinRY

function oregen:move/move_x

execute if score $oregen oreGenSpawnSum < $oregen oreGenSpawnMax run function oregen:setup_generic_vein