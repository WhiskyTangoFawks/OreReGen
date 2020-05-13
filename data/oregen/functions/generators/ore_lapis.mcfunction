scoreboard players set $rng_y ore.move 32
scoreboard players set $min_y ore.move 10
scoreboard players set $min_ry ore.move 30
scoreboard players set $max_ry ore.move 60

scoreboard players set $max_length ore.vein 22
scoreboard players set $max_height ore.vein 1
scoreboard players set $max_width ore.vein 1
scoreboard players set $per_chunk ore.generator 5
scoreboard players set $density ore.generator 75
scoreboard players set $density_factor ore.generator 50
scoreboard players operation $type ore.generator = $lapis ore.type
scoreboard players set $skipIsReplaceable ore.generator 0

scoreboard players set $density_secondary ore.generator 0
scoreboard players set $type_secondary ore.generator 0

#badlands
execute if predicate du:location/biome_types/badlands run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/badlands run scoreboard players set $max_length ore.vein 6

#.66 in deserts
execute if predicate du:location/biome_types/desert run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/desert run scoreboard players set $max_length ore.vein 12

#1.5x in forest
execute if predicate du:location/biome_types/forest run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/forest run scoreboard players set $max_length ore.vein 16

#1.5x and Longer veins in jungles
execute if predicate du:location/biome_types/jungle run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_length ore.vein 36
execute if predicate du:location/biome_types/jungle run scoreboard players set $rng_y ore.move 64
execute if predicate du:location/biome_types/savanna run scoreboard players operation $type_secondary ore.generator = $diorite ore.type
execute if predicate du:location/biome_types/savanna run scoreboard players set $density_secondary ore.generator 75

#1.5x in plains
execute if predicate du:location/biome_types/plains run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/plains run scoreboard players set $max_length ore.vein 32
execute if predicate du:location/biome_types/plains run scoreboard players set $max_height ore.vein 2
execute if predicate du:location/biome_types/plains run scoreboard players set $max_width ore.vein 2
execute if predicate du:location/biome_types/plains run scoreboard players set $density ore.generator 25
execute if predicate du:location/biome_types/savanna run scoreboard players operation $type_secondary ore.generator = $diorite ore.type
execute if predicate du:location/biome_types/savanna run scoreboard players set $density_secondary ore.generator 75

#.66 in Savannah
execute if predicate du:location/biome_types/savanna run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/savanna run scoreboard players operation $type_secondary ore.generator = $diorite ore.type
execute if predicate du:location/biome_types/savanna run scoreboard players set $density_secondary ore.generator 75

#swamp


#1.5x in Taiga
execute if predicate du:location/biome_types/taiga run function oregen:util/per_chunk_x1.5


function oregen:generators/finalize_generator
function oregen:veins/check_counter_then_do_setup