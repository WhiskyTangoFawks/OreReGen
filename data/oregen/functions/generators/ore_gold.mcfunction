scoreboard players set $rng_y ore.move 32
scoreboard players set $min_y ore.move -6
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 90

scoreboard players set $max_length ore.vein 6
scoreboard players set $max_height ore.vein 6
scoreboard players set $max_width ore.vein 6
scoreboard players set $per_chunk ore.generator 8
scoreboard players set $density ore.generator 10
scoreboard players set $density_factor ore.generator 75

#taiga 1.5x
execute if predicate du:location/biome_types/taiga run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/taiga run scoreboard players set $min_y ore.move 16

#Plains 1.5x
execute if predicate du:location/biome_types/plains run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/plains run scoreboard players set $max_length ore.vein 6
execute if predicate du:location/biome_types/plains run scoreboard players set $max_height ore.vein 6
execute if predicate du:location/biome_types/plains run scoreboard players set $max_width ore.vein 6
execute if predicate du:location/biome_types/plains run scoreboard players set $density_factor ore.generator 66
execute if predicate du:location/biome_types/plains run scoreboard players set $per_chunk ore.generator 18

#savanna
execute if predicate du:location/biome_types/savanna run scoreboard players set $max_length ore.vein 16
execute if predicate du:location/biome_types/savanna run scoreboard players set $max_height ore.vein 3
execute if predicate du:location/biome_types/savanna run scoreboard players set $max_width ore.vein 3
execute if predicate du:location/biome_types/savanna run scoreboard players set $density ore.generator 66
execute if predicate du:location/biome_types/savanna run scoreboard players set $density_factor ore.generator 66
execute if predicate du:location/biome_types/savanna run scoreboard players set $per_chunk ore.generator 18

#Jungle
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_length ore.vein 12
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_height ore.vein 2
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_width ore.vein 2
execute if predicate du:location/biome_types/jungle run scoreboard players set $density ore.generator 33
#Forest
execute if predicate du:location/biome_types/forest run scoreboard players set $max_length ore.vein 12
execute if predicate du:location/biome_types/forest run scoreboard players set $max_height ore.vein 2
execute if predicate du:location/biome_types/forest run scoreboard players set $max_width ore.vein 2
execute if predicate du:location/biome_types/forest run scoreboard players set $density ore.generator 33

#swamp as clay not gold
execute if predicate du:location/biome_types/swamp run scoreboard players set $min_y ore.move 40
execute if predicate du:location/biome_types/swamp run scoreboard players set $density ore.generator 50
execute if predicate du:location/biome_types/swamp run scoreboard players set $density_factor ore.generator -100

function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $gold ore.type
execute if predicate du:location/biome_types/swamp run scoreboard players operation $type ore.generator = $clay ore.type
function oregen:veins/check_counter_then_do_setup