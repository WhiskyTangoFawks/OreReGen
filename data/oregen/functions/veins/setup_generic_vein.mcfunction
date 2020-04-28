#All start variables need to start 1 increment down, so it catches up with the base value after the initial incremnt
#Re-initializing vein generationvariables to their start values

scoreboard players set $start_x ore.move -1
scoreboard players set $start_y ore.move -1
scoreboard players set $start_z ore.move -1
scoreboard players set $start_rx ore.move -5
scoreboard players set $start_ry ore.move -5
scoreboard players set $count_length ore.vein 0
scoreboard players set $count_height ore.vein 0
scoreboard players set $count_width ore.vein 0

#These are basically constants, but are done as variables to allow for optimisation changes
scoreboard players set $max_x ore.generator 15
scoreboard players set $max_z ore.generator 15
scoreboard players set $max_rx ore.generator 360

#Set startX 0 to 
function oregen:util/rng16
scoreboard players operation $target_x ore.move = $last ore.rng

#Error message if an unexpected rng_y value found
execute unless score $rng_y ore.move matches 16 unless score $rng_y ore.move matches 32 unless score $rng_y ore.move matches 64 unless score $rng_y ore.move matches 128 run say ERROR: Unaccepted rng_y value found
execute if score $rng_y ore.move matches 16 run function oregen:util/rng16
execute if score $rng_y ore.move matches 32 run function oregen:util/rng32
execute if score $rng_y ore.move matches 64 run function oregen:util/rng64
execute if score $rng_y ore.move matches 128 run function oregen:util/rng128
scoreboard players operation $target_y ore.move = $last ore.rng
scoreboard players operation $target_y ore.move += $min_y ore.move
scoreboard players operation $target_y ore.move *= $chunk_height ore.generator
scoreboard players operation $target_y ore.move /= $64 ore.const

#Set startZ 0 to 15
function oregen:util/rng16
scoreboard players operation $target_z ore.move = $last ore.rng

#Set startrotate X 0 to 360
function oregen:util/rng64
scoreboard players operation $target_rx ore.move = $last ore.rng
scoreboard players operation $target_rx ore.move *= $6 ore.const

#set startrotateY minRotateY to maxRotateY
function oregen:util/rng64
scoreboard players operation $temp ore.temp = $last ore.rng
scoreboard players operation $temp2 ore.temp = $max_ry ore.move
scoreboard players operation $temp2 ore.temp -= $min_ry ore.move
scoreboard players operation $temp ore.temp *= $temp2 ore.temp
scoreboard players operation $temp ore.temp /= $64 ore.const
scoreboard players operation $target_ry ore.move = $min_ry ore.move
scoreboard players operation $target_ry ore.move += $temp ore.temp

#in order to have ores slanted both ways, half the time we rotate it by 270
#execute if predicate du:random/0.5 run function oregen:veins/mirror_ry

#execute if score $target_y ore.move > $256 ore.const run say Error:target_y > 256 
#execute if score $target_ry ore.move > $360 ore.const run say Error:target_ry > 360 
#execute if score $target_rx ore.move > $360 ore.const run say Error:target_rx > 360 

function oregen:move/move_x