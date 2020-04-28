scoreboard players set $rng_y ore.move 64
scoreboard players set $min_y ore.move 32
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 90

scoreboard players set $max_length ore.vein 16
scoreboard players set $max_height ore.vein 1
scoreboard players set $max_width ore.vein 3
scoreboard players set $per_chunk ore.generator 300
scoreboard players set $density ore.generator 90
scoreboard players set $density_factor ore.generator 0

#generate 1.5x in Mountains at a higher density
execute if predicate du:location/biome_types/mountians run function oregen:util/per_chunk_x1.5


scoreboard players operation $type ore.generator = $cobble ore.type
function oregen:generators/post_setup
function oregen:veins/check_counter_then_do_setup