scoreboard players set $rng_y ore.move 32
scoreboard players set $min_y ore.move 10
scoreboard players set $min_ry ore.move 30
scoreboard players set $max_ry ore.move 60

scoreboard players set $max_length ore.vein 16
scoreboard players set $max_height ore.vein 1
scoreboard players set $max_width ore.vein 1
scoreboard players set $per_chunk ore.generator 12
scoreboard players set $density ore.generator 75
scoreboard players set $density_factor ore.generator 50
scoreboard players operation $type ore.generator = $lapis ore.type
scoreboard players set $skipIsReplaceable ore.generator 0

#1.5x and Longer veins in jungles
execute if predicate du:location/biome_types/jungle run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_length ore.vein 22
execute if predicate du:location/biome_types/jungle run scoreboard players set $rng_y ore.move 64

#1.5x in plains
execute if predicate du:location/biome_types/plains run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/plains run scoreboard players set $max_length ore.vein 20
execute if predicate du:location/biome_types/plains run scoreboard players set $max_height ore.vein 2
execute if predicate du:location/biome_types/plains run scoreboard players set $max_width ore.vein 2
execute if predicate du:location/biome_types/plains run scoreboard players set $density ore.generator 45

#1.5x in forest
execute if predicate du:location/biome_types/forest run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/plains run scoreboard players set $max_length ore.vein 8
execute if predicate du:location/biome_types/plains run scoreboard players set $max_width ore.vein 2

#.66 in deserts
execute if predicate du:location/biome_types/desert run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/desert run scoreboard players set $max_length ore.vein 6

#.66 in Savannah
execute if predicate du:location/biome_types/savanna run function oregen:util/per_chunk_x0.6

#1.5x in Taiga, but half the blocks are ice (controlled in the set_lapis function)
execute if predicate du:location/biome_types/taiga run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_height ore.vein 2
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_width ore.vein 2

function oregen:generators/finalize_generator
function oregen:veins/check_counter_then_do_setup