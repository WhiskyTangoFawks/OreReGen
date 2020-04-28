#TODO - make per chunk variable
#TODO - add jackpot chunks

#Sets ore per chunk to a normal distribution centered around the set per_chunk value
function oregen:util/rng128
scoreboard players operation $temp ore.temp = $last ore.rng
scoreboard players operation $temp ore.temp *= $per_chunk ore.generator
scoreboard players operation $temp ore.temp /= $128 ore.const
function oregen:util/rng128
scoreboard players operation $temp2 ore.temp = $last ore.rng
scoreboard players operation $temp2 ore.temp *= $per_chunk ore.generator
scoreboard players operation $temp2 ore.temp /= $128 ore.const
scoreboard players operation $per_chunk ore.generator = $temp ore.temp
scoreboard players operation $per_chunk ore.generator += $temp2 ore.temp

#1 in 100 chance to triple the amount of ore per chunk
execute if score $per_chunk ore.generator < $256 ore.const if predicate du:random/0.1 if predicate du:random/0.1 run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
#1 in 100 chance to generate at rng_y = 64, will occasionally pop ore veins in a chunk up into the visible range
execute if score $rng_y ore.generator < $64 ore.const if score $per_chunk ore.generator < $128 ore.const if predicate du:random/0.1 if predicate du:random/0.1 run scoreboard players operation $rng_y ore.generator = $64 ore.const


#mountians- *2 gen height, *1.5 ore generation
execute if predicate du:location/biome_types/mountians run scoreboard players add $min_y ore.move 8
execute if predicate du:location/biome_types/mountians run function oregen:util/per_chunk_x1.5

#calc the average blocks per vein
scoreboard players operation $vein_avg ore.generator = $max_length ore.vein
scoreboard players operation $vein_avg ore.generator *= $max_height ore.vein
scoreboard players operation $vein_avg ore.generator *= $max_width ore.vein
scoreboard players operation $vein_avg ore.generator *= $density ore.generator
#divide by 110 instead of 100 to shrink the average size slightly to account for loss to unset blocks and rotation overlap
scoreboard players operation $vein_avg ore.generator /= $110 ore.const

scoreboard players set $counter ore.generator 0
scoreboard players set $vein_count ore.generator 0