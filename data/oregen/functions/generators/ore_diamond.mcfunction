scoreboard players set $rng_y ore.move 16
scoreboard players set $min_y ore.move 4
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 90

scoreboard players set $max_length ore.vein 2
scoreboard players set $max_height ore.vein 2
scoreboard players set $max_width ore.vein 2

scoreboard players set $per_chunk ore.generator 5
scoreboard players set $density ore.generator 50
scoreboard players set $density_factor ore.generator 0

scoreboard players operation $type ore.generator = $diamond ore.type
scoreboard players set $skipIsReplaceable ore.generator 0

#Taiga at 1.5, in larger veins composed mostly of ice
execute if predicate du:location/biome_types/taiga run scoreboard players set $per_chunk ore.generator 16
execute if predicate du:location/biome_types/taiga run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_length ore.vein 3
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_height ore.vein 3
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_width ore.vein 3

#Savannah at 0.66
execute if predicate du:location/biome_types/savanna run function oregen:util/per_chunk_x0.6

#Badlands 0.66
execute if predicate du:location/biome_types/badlands run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/badlands run scoreboard players set $density ore.generator 33

function oregen:generators/finalize_generator
function oregen:veins/check_counter_then_do_setup