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

scoreboard players operation $type ore.generator = $gold ore.type
scoreboard players set $skipIsReplaceable ore.generator 0

scoreboard players set $density_secondary ore.generator 0
scoreboard players set $type_secondary ore.generator 0

#badlands
execute if predicate du:location/biome_types/badlands run scoreboard players set $max_length ore.vein 32
execute if predicate du:location/biome_types/badlands run scoreboard players set $max_height ore.vein 1
execute if predicate du:location/biome_types/badlands run scoreboard players set $max_width ore.vein 2
execute if predicate du:location/biome_types/badlands run scoreboard players set $density ore.generator 40
execute if predicate du:location/biome_types/badlands run scoreboard players set $min_y ore.move 6
execute if predicate du:location/biome_types/badlands run scoreboard players set $min_ry ore.move 15
execute if predicate du:location/biome_types/badlands run scoreboard players set $max_ry ore.move 45

#desert
execute if predicate du:location/biome_types/desert run scoreboard players set $max_length ore.vein 18
execute if predicate du:location/biome_types/desert run scoreboard players set $max_height ore.vein 1
execute if predicate du:location/biome_types/desert run scoreboard players set $max_width ore.vein 1
execute if predicate du:location/biome_types/desert run scoreboard players set $density ore.generator 66
execute if predicate du:location/biome_types/desert run scoreboard players set $min_y ore.move 6
execute if predicate du:location/biome_types/desert run scoreboard players set $min_ry ore.move 15
execute if predicate du:location/biome_types/desert run scoreboard players set $max_ry ore.move 45

#Forest
execute if predicate du:location/biome_types/forest run scoreboard players set $max_length ore.vein 16
execute if predicate du:location/biome_types/forest run scoreboard players set $max_height ore.vein 1
execute if predicate du:location/biome_types/forest run scoreboard players set $max_width ore.vein 3
execute if predicate du:location/biome_types/forest run scoreboard players set $density ore.generator 33
execute if predicate du:location/biome_types/forest run scoreboard players set $min_ry ore.move 15
execute if predicate du:location/biome_types/forest run scoreboard players set $max_ry ore.move 45

#Jungle
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_length ore.vein 12
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_height ore.vein 2
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_width ore.vein 2
execute if predicate du:location/biome_types/jungle run scoreboard players set $density ore.generator 33
execute if predicate du:location/biome_types/jungle run scoreboard players set $min_ry ore.move 45
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_ry ore.move 60

#Plains 1.5x
execute if predicate du:location/biome_types/plains run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/plains run scoreboard players set $max_length ore.vein 5
execute if predicate du:location/biome_types/plains run scoreboard players set $max_height ore.vein 5
execute if predicate du:location/biome_types/plains run scoreboard players set $max_width ore.vein 5
execute if predicate du:location/biome_types/plains run scoreboard players set $density_secondary ore.generator 75
execute if predicate du:location/biome_types/plains run scoreboard players operation $type_secondary ore.generator = $dirt ore.type

#savanna
execute if predicate du:location/biome_types/savanna run scoreboard players set $max_length ore.vein 4
execute if predicate du:location/biome_types/savanna run scoreboard players set $max_height ore.vein 4
execute if predicate du:location/biome_types/savanna run scoreboard players set $max_width ore.vein 4
execute if predicate du:location/biome_types/savanna run scoreboard players set $density_secondary ore.generator 75
execute if predicate du:location/biome_types/savanna run scoreboard players operation $type_secondary ore.generator = $dirt ore.type

#Swamp Turn sand to clay in swamps instead of generating gold
execute if predicate du:location/biome_types/swamp run scoreboard players set $per_chunk ore.generator 80
execute if predicate du:location/biome_types/swamp run scoreboard players set $min_y ore.move 40
execute if predicate du:location/biome_types/swamp run scoreboard players set $density ore.generator 25
execute if predicate du:location/biome_types/swamp run scoreboard players set $density_factor ore.generator -50
execute if predicate du:location/biome_types/swamp run scoreboard players operation $type ore.generator = $clay ore.type
execute if predicate du:location/biome_types/swamp run scoreboard players set $skipIsReplaceable ore.generator 1

#taiga 1.5x
execute if predicate du:location/biome_types/taiga run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/taiga run scoreboard players set $min_y ore.move 16
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_length ore.vein 16
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_height ore.vein 16
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_width ore.vein 16
execute if predicate du:location/biome_types/taiga run scoreboard players set $density ore.generator 5
execute if predicate du:location/biome_types/taiga run scoreboard players set $density_secondary ore.generator 25
execute if predicate du:location/biome_types/taiga run scoreboard players operation $type_secondary ore.generator = $dirt ore.type


function oregen:generators/finalize_generator
function oregen:veins/check_counter_then_do_setup