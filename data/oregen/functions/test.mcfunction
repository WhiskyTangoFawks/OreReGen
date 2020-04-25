#scoreboard players set $test ore.generator 1

scoreboard players set $counter ore.generator 0
#Re-initializing vein generationvariables to their start values

scoreboard players set $start_rx ore.move -5
scoreboard players set $start_ry ore.move -5
scoreboard players set $target_rx ore.move 45
scoreboard players set $target_ry ore.move 0
scoreboard players set $count_length ore.vein 0
scoreboard players set $count_height ore.vein 0
scoreboard players set $count_width ore.vein 0

scoreboard players set $max_length ore.vein 5
scoreboard players set $max_height ore.vein 1
scoreboard players set $max_width ore.vein 5
scoreboard players set $per_chunk ore.generator 14
scoreboard players set $density ore.generator 100
scoreboard players set $density_factor ore.generator 0

function oregen:generators/post_setup
function oregen:move/rotate_x
#function oregen:generators/start_coal_generate