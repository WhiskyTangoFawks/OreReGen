scoreboard players set $rng_y ore.move 32
scoreboard players set $min_y ore.move 10
scoreboard players set $min_ry ore.move 20
scoreboard players set $max_ry ore.move 70

scoreboard players set $max_length ore.vein 16
scoreboard players set $max_height ore.vein 2
scoreboard players set $max_width ore.vein 2
scoreboard players set $per_chunk ore.generator 3
scoreboard players set $density ore.generator 5
scoreboard players set $density_factor ore.generator 60

scoreboard players operation $type ore.generator = $emerald ore.type
scoreboard players set $skipIsReplaceable ore.generator 0

scoreboard players set $density_secondary ore.generator 80
scoreboard players operation $type_secondary ore.generator = $mossy_cobble ore.type

#Badlands as Netherrack
execute if predicate du:location/biome_types/badlands run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/badlands run scoreboard players operation $type ore.generator = $quartz ore.type
execute if predicate du:location/biome_types/badlands run scoreboard players operation $type_secondary ore.generator = $netherrack ore.type
execute if predicate du:location/biome_types/badlands run scoreboard players set $max_height ore.vein 4
execute if predicate du:location/biome_types/badlands run scoreboard players set $max_width ore.vein 4
#Desert as Netherrack
execute if predicate du:location/biome_types/desert run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/desert run scoreboard players operation $type ore.generator = $quartz ore.type
execute if predicate du:location/biome_types/desert run scoreboard players operation $type_secondary ore.generator = $netherrack ore.type
execute if predicate du:location/biome_types/desert run scoreboard players set $max_height ore.vein 4
execute if predicate du:location/biome_types/desert run scoreboard players set $max_width ore.vein 4

#1.5x in forest
execute if predicate du:location/biome_types/forest run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/forest run scoreboard players set $min_y ore.move 20
execute if predicate du:location/biome_types/forest run scoreboard players set $max_height ore.vein 3
execute if predicate du:location/biome_types/forest run scoreboard players set $max_width ore.vein 3

#jungle
execute if predicate du:location/biome_types/jungle run scoreboard players set $min_y ore.move 20
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_height ore.vein 3
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_width ore.vein 3

#plains
execute if predicate du:location/biome_types/plains run scoreboard players set $max_length ore.vein 28
execute if predicate du:location/biome_types/plains run scoreboard players operation $type_secondary ore.generator = $diorite ore.type

#1.5x in savannah
execute if predicate du:location/biome_types/savanna run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/savanna run scoreboard players operation $type_secondary ore.generator = $diorite ore.type

#Swamp at 1.5
execute if predicate du:location/biome_types/swamp run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/swamp run scoreboard players set $max_height ore.vein 3
execute if predicate du:location/biome_types/swamp run scoreboard players set $max_width ore.vein 3

#taiga

function oregen:generators/finalize_generator
function oregen:veins/check_counter_then_do_setup