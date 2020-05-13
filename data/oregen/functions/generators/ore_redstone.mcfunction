scoreboard players set $rng_y ore.move 16
scoreboard players set $min_y ore.move 5
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 10

scoreboard players set $max_length ore.vein 1
scoreboard players set $max_height ore.vein 14
scoreboard players set $max_width ore.vein 1
scoreboard players set $per_chunk ore.generator 8
scoreboard players set $density ore.generator 75
scoreboard players set $density_factor ore.generator 80
scoreboard players operation $type ore.generator = $redstone ore.type
scoreboard players set $skipIsReplaceable ore.generator 0

scoreboard players set $density_secondary ore.generator 0
scoreboard players set $type_secondary ore.generator 0

#badlands
execute if predicate du:location/biome_types/badlands run scoreboard players set $density_secondary ore.generator 50
execute if predicate du:location/biome_types/badlands run scoreboard players operation $type_secondary ore.generator = $redsand ore.type
execute if predicate du:location/biome_types/badlands run scoreboard players set $density ore.generator 15
execute if predicate du:location/biome_types/badlands run scoreboard players set $max_length ore.vein 2
execute if predicate du:location/biome_types/badlands run scoreboard players set $max_height ore.vein 48
execute if predicate du:location/biome_types/badlands run scoreboard players set $max_width ore.vein 2

#Desert, generates 1.5x more, veins are long and start higher
execute if predicate du:location/biome_types/desert run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/desert run scoreboard players set $density_secondary ore.generator 80
execute if predicate du:location/biome_types/desert run scoreboard players set $density ore.generator 25
execute if predicate du:location/biome_types/desert run scoreboard players operation $type_secondary ore.generator = $redsand ore.type
execute if predicate du:location/biome_types/desert run scoreboard players set $max_length ore.vein 2
execute if predicate du:location/biome_types/desert run scoreboard players set $max_height ore.vein 60
execute if predicate du:location/biome_types/desert run scoreboard players set $max_width ore.vein 2

#.66 in forest
execute if predicate du:location/biome_types/forest run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/forest run scoreboard players set $max_height ore.vein 6
execute if predicate du:location/biome_types/forest run scoreboard players set $density_factor ore.generator 75

#.66 in jungle
execute if predicate du:location/biome_types/jungle run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_height ore.vein 6

#savanna 1.5x more
execute if predicate du:location/biome_types/savanna run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/savanna run scoreboard players set $max_width ore.vein 2
execute if predicate du:location/biome_types/savanna run scoreboard players set $max_length ore.vein 2
execute if predicate du:location/biome_types/savanna run scoreboard players set $density_factor ore.generator 25

#.66 in Swamp
execute if predicate du:location/biome_types/swamp run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/swamp run scoreboard players set $max_height ore.vein 6

#.66 in taiga No redstone in taiga, 
execute if predicate du:location/biome_types/taiga run scoreboard players set $density ore.generator 50
execute if predicate du:location/biome_types/taiga run scoreboard players set $rng_y ore.move 64
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_length ore.vein 2
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_width ore.vein 2
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_ry ore.move 45
execute if predicate du:location/biome_types/taiga run scoreboard players set $density_factor ore.generator -100
execute if predicate du:location/biome_types/taiga run scoreboard players operation $type ore.generator = $ice ore.type

function oregen:generators/finalize_generator
function oregen:veins/check_counter_then_do_setup