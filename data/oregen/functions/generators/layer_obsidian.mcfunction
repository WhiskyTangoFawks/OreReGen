scoreboard players set $rng_y ore.move 8
scoreboard players set $min_y ore.move 4
scoreboard players set $min_ry ore.move 15
scoreboard players set $max_ry ore.move 45

scoreboard players set $max_length ore.vein 16
scoreboard players set $max_height ore.vein 2
scoreboard players set $max_width ore.vein 16
scoreboard players set $per_chunk ore.generator 2000
scoreboard players set $density ore.generator 80
scoreboard players set $density_factor ore.generator 0

scoreboard players operation $type ore.generator = $obsidian ore.type

function oregen:generators/finalize_generator
scoreboard players set $per_chunk ore.generator 2000
function oregen:veins/check_counter_then_do_setup