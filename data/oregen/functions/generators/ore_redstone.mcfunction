scoreboard players set $rng_y ore.move 16
scoreboard players set $min_y ore.move 0
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 10

scoreboard players set $max_length ore.vein 1
scoreboard players set $max_height ore.vein 32
scoreboard players set $max_width ore.vein 1
scoreboard players set $per_chunk ore.generator 12
scoreboard players set $density ore.generator 100
scoreboard players set $density_factor ore.generator 0

#Desert, generates 1.5x more, veins are long and denser
execute if predicate du:location/biome_types/desert run scoreboard players set $rng_y ore.move 32
execute if predicate du:location/biome_types/desert run scoreboard players set $min_y ore.move 16
execute if predicate du:location/biome_types/desert run function oregen:util/per_chunk_x1.5

#Desert, generates 1.5x more, veins are long and denser
execute if predicate du:location/biome_types/savanna run function oregen:util/per_chunk_x1.5

#.66 in jungle
execute if predicate du:location/biome_types/jungle run function oregen:util/per_chunk_x0.6

#.66 in jungle
execute if predicate du:location/biome_types/forest run function oregen:util/per_chunk_x0.6

#.66 in Swamp
execute if predicate du:location/biome_types/swamp run function oregen:util/per_chunk_x0.6

#.66 in taiga
execute if predicate du:location/biome_types/taiga run scoreboard players set $density ore.generator 50
execute if predicate du:location/biome_types/taiga run scoreboard players set $rng_y ore.move 64
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_length ore.vein 2
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_width ore.vein 2
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_ry ore.move 45

function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $redstone ore.type
execute if predicate du:location/biome_types/taiga run scoreboard players operation $type ore.generator = $ice ore.type
function oregen:veins/check_counter_then_do_setup