scoreboard players set $rng_y ore.move 8
scoreboard players set $min_y ore.move 3
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 15

scoreboard players set $max_length ore.vein 36
scoreboard players set $max_height ore.vein 5
scoreboard players set $max_width ore.vein 5
scoreboard players set $per_chunk ore.generator 500
scoreboard players set $density ore.generator 60
scoreboard players set $density_factor ore.generator 0

scoreboard players operation $type ore.generator = $obsidian ore.type
scoreboard players set $skipIsReplaceable ore.generator 0
scoreboard players set $density_secondary ore.generator 0
scoreboard players set $type_secondary ore.generator 0

function oregen:generators/finalize_generator
function oregen:veins/check_counter_then_do_setup