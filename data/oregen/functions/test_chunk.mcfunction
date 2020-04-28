scoreboard players set $rng_y ore.move 16
scoreboard players set $min_y ore.move 5
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 30

scoreboard players set $max_length ore.vein 4
scoreboard players set $max_height ore.vein 4
scoreboard players set $max_width ore.vein 4
scoreboard players set $per_chunk ore.generator 10

scoreboard players set $density ore.generator 75
scoreboard players set $density_factor ore.generator 50

#calc the average blocks per vein
scoreboard players operation $vein_avg ore.generator = $max_length ore.vein
scoreboard players operation $vein_avg ore.generator *= $max_height ore.vein
scoreboard players operation $vein_avg ore.generator *= $max_width ore.vein
scoreboard players operation $vein_avg ore.generator *= $density ore.generator
#divide by 110 instead of 100 to shrink the average size slightly to account for loss to unset blocks and rotation overlap
scoreboard players operation $vein_avg ore.generator /= $110 ore.const

scoreboard players set $counter ore.generator 0

scoreboard players set $start_x ore.move -1
scoreboard players set $start_y ore.move -1
scoreboard players set $start_z ore.move -1
scoreboard players set $start_rx ore.move -5
scoreboard players set $start_ry ore.move -5
scoreboard players set $count_length ore.vein 0
scoreboard players set $count_height ore.vein 0
scoreboard players set $count_width ore.vein 0

function oregen:veins/setup_generic_vein