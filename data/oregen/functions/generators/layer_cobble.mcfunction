scoreboard players set $rng_y ore.move 64
scoreboard players set $min_y ore.move 32
scoreboard players set $min_ry ore.move 15
scoreboard players set $max_ry ore.move 55

scoreboard players set $max_length ore.vein 22
scoreboard players set $max_height ore.vein 1
scoreboard players set $max_width ore.vein 2
scoreboard players set $per_chunk ore.generator 300
scoreboard players set $density ore.generator 50
scoreboard players set $density_factor ore.generator 50

scoreboard players operation $type ore.generator = $cobble ore.type
scoreboard players set $skipIsReplaceable ore.generator 1

function oregen:generators/finalize_generator
function oregen:veins/check_counter_then_do_setup