scoreboard players set $max_y ore.move 88
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 90

scoreboard players set $max_length ore.vein 10
scoreboard players set $max_height ore.vein 1
scoreboard players set $max_width ore.vein3
scoreboard players set $per_chunk ore.generator 300
scoreboard players set $density ore.generator 32

scoreboard players operation $type ore.generator = $cobble ore.type
function oregen:generators/post_setup
function oregen:veins/check_counter_then_do_setup