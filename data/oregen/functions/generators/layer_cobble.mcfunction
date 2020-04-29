scoreboard players set $rng_y ore.move 64
scoreboard players set $min_y ore.move 32
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 90

scoreboard players set $max_length ore.vein 20
scoreboard players set $max_height ore.vein 1
scoreboard players set $max_width ore.vein 3
scoreboard players set $per_chunk ore.generator 300
scoreboard players set $density ore.generator 90
scoreboard players set $density_factor ore.generator 0

scoreboard players operation $type ore.generator = $cobble ore.type

function oregen:generators/finalize_generator
function oregen:veins/check_counter_then_do_setup