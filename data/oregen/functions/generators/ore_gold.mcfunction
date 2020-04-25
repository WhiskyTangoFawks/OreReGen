scoreboard players set $rng_y ore.move 32
scoreboard players set $min_y ore.move -6
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 90

scoreboard players set $max_length ore.vein 6
scoreboard players set $max_height ore.vein 6
scoreboard players set $max_width ore.vein 6
scoreboard players set $per_chunk ore.generator 6
scoreboard players set $density ore.generator 10
scoreboard players set $density_factor ore.generator 75

#taiga 1.5x
execute if predicate du:location/biome_types/taiga run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/taiga run scoreboard players set $min_y ore.move 16

#Plains 1.5x
execute if predicate du:location/biome_types/plains run function oregen:util/per_chunk_x1.5

#swamp 0.5x
execute if predicate du:location/biome_types/swamp run function oregen:util/per_chunk_x0.6

function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $gold ore.type
function oregen:veins/check_counter_then_do_setup