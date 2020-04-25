scoreboard players set $rng_y ore.move 16
scoreboard players set $min_y ore.move 0
scoreboard players set $min_ry ore.move 30
scoreboard players set $max_ry ore.move 60

scoreboard players set $max_length ore.vein 16
scoreboard players set $max_height ore.vein 2
scoreboard players set $max_width ore.vein 16
scoreboard players set $per_chunk ore.generator 2000
scoreboard players set $density ore.generator 80
scoreboard players set $density_factor ore.generator 0

function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $obsidian ore.type
function oregen:veins/check_counter_then_do_setup