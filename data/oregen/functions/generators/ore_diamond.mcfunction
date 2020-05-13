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

scoreboard players set $density_secondary ore.generator 0
scoreboard players set $type_secondary ore.generator 0


#Badlands 0.66
execute if predicate du:location/biome_types/badlands run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/badlands run scoreboard players set $density ore.generator 33

#desert
execute if predicate du:location/biome_types/desert run scoreboard players set $max_length ore.vein 4
execute if predicate du:location/biome_types/desert run scoreboard players set $max_height ore.vein 1
execute if predicate du:location/biome_types/desert run scoreboard players set $max_width ore.vein 1

#forest
execute if predicate du:location/biome_types/forest run scoreboard players set $max_length ore.vein 4
execute if predicate du:location/biome_types/forest run scoreboard players set $max_height ore.vein 4
execute if predicate du:location/biome_types/forest run scoreboard players set $max_width ore.vein 4
execute if predicate du:location/biome_types/forest run scoreboard players set $density ore.generator 5

#jungle
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_length ore.vein 16
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_height ore.vein 16
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_width ore.vein 16
execute if predicate du:location/biome_types/forest run scoreboard players set $density ore.generator 3

#plains

#Savannah at 0.66
execute if predicate du:location/biome_types/savanna run function oregen:util/per_chunk_x0.6

#swamp

#Taiga at 1.5, in larger veins composed mostly of ice
execute if predicate du:location/biome_types/taiga run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_length ore.vein 5
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_height ore.vein 2
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_width ore.vein 5
execute if predicate du:location/biome_types/taiga run scoreboard players set $density ore.generator 10
execute if predicate du:location/biome_types/taiga run scoreboard players set $density_factor ore.generator 80
execute if predicate du:location/biome_types/taiga run scoreboard players set $density_secondary ore.generator 90
execute if predicate du:location/biome_types/taiga run scoreboard players operation $type_secondary ore.generator = $ice ore.type


function oregen:generators/finalize_generator
function oregen:veins/check_counter_then_do_setup