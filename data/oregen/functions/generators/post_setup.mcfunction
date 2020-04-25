#Mountains- *2 gen height, *1.5 ore generation
execute if predicate du:location/biome_types/mountains run scoreboard players add $min_y ore.move 32
execute if predicate du:location/biome_types/mountains run function oregen:util/per_chunk_x1.5

#calc the average blocks per vein
scoreboard players operation $vein_avg ore.generator = $max_length ore.vein
scoreboard players operation $vein_avg ore.generator *= $max_height ore.vein
scoreboard players operation $vein_avg ore.generator *= $max_width ore.vein
scoreboard players operation $vein_avg ore.generator *= $density ore.generator
#divide by 110 instead of 100 to shrink the average size slightly to account for loss to unset blocks and rotation overlap
scoreboard players operation $vein_avg ore.generator /= $110 ore.const

scoreboard players set $counter ore.generator 0