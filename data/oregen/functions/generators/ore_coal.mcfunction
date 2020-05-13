scoreboard players set $rng_y ore.move 64
scoreboard players set $min_y ore.move 16
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 30

scoreboard players set $max_length ore.vein 10
scoreboard players set $max_height ore.vein 2
scoreboard players set $max_width ore.vein 8
scoreboard players set $per_chunk ore.generator 90

scoreboard players set $density ore.generator 50
scoreboard players set $density_factor ore.generator 50

scoreboard players operation $type ore.generator = $coal ore.type
scoreboard players set $skipIsReplaceable ore.generator 0

scoreboard players set $density_secondary ore.generator 0
scoreboard players set $type_secondary ore.generator 0

#generate 1.5x in badlands
execute if predicate du:location/biome_types/badlands run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/badlands run scoreboard players set $max_height ore.vein 1


#generate 0.66x in desert
execute if predicate du:location/biome_types/desert run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/desert run scoreboard players set $max_length ore.vein 20
execute if predicate du:location/biome_types/desert run scoreboard players set $max_height ore.vein 1
execute if predicate du:location/biome_types/desert run scoreboard players set $max_width ore.vein 5

#Forest
execute if predicate du:location/biome_types/forest run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/forest run scoreboard players set $max_length ore.vein 3
execute if predicate du:location/biome_types/forest run scoreboard players set $max_height ore.vein 8
execute if predicate du:location/biome_types/forest run scoreboard players set $max_width ore.vein 3
execute if predicate du:location/biome_types/forest run scoreboard players set $density ore.generator 50
execute if predicate du:location/biome_types/forest run scoreboard players set $density_factor ore.generator 80
execute if predicate du:location/biome_types/forest run scoreboard players set $density_secondary ore.generator 75
execute if predicate du:location/biome_types/forest run scoreboard players operation $type_secondary ore.generator = $dirt ore.type

#generate 1.5x in jungle, in 3x3x3 rather than sheets
execute if predicate du:location/biome_types/jungle run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/jungle run scoreboard players set $density ore.generator 25
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_length ore.vein 4
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_width ore.vein 4
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_height ore.vein 2

#generate 0.66x in plains at a lower height
execute if predicate du:location/biome_types/plains run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/plains run scoreboard players set $min_y ore.move 0
execute if predicate du:location/biome_types/plains run scoreboard players set $max_length ore.vein 15
execute if predicate du:location/biome_types/plains run scoreboard players set $max_height ore.vein 1
execute if predicate du:location/biome_types/plains run scoreboard players set $max_width ore.vein 3

#generate 1.5x in swamps in huge diffuse veins
execute if predicate du:location/biome_types/swamp run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/swamp run scoreboard players set $max_length ore.vein 32
execute if predicate du:location/biome_types/swamp run scoreboard players set $max_width ore.vein 16
execute if predicate du:location/biome_types/swamp run scoreboard players set $max_height ore.vein 5
execute if predicate du:location/biome_types/swamp run scoreboard players set $density ore.generator 15
execute if predicate du:location/biome_types/swamp run scoreboard players set $density_factor ore.generator 25
execute if predicate du:location/biome_types/swamp run scoreboard players set $density_secondary ore.generator 35
execute if predicate du:location/biome_types/swamp run scoreboard players operation $type_secondary ore.generator = $dirt ore.type

#taiga

function oregen:generators/finalize_generator
function oregen:veins/check_counter_then_do_setup