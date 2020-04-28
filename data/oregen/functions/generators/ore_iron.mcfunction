scoreboard players set $rng_y ore.move 64
scoreboard players set $min_y ore.move 0
scoreboard players set $min_ry ore.move 30
scoreboard players set $max_ry ore.move 60

scoreboard players set $max_length ore.vein 16
scoreboard players set $max_height ore.vein 3
scoreboard players set $max_width ore.vein 3
scoreboard players set $per_chunk ore.generator 180
scoreboard players set $density ore.generator 66
scoreboard players set $density_factor ore.generator 25

#Badlands, 1.5x and longer, but less dense
execute if predicate du:location/biome_types/badlands run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/badlands run scoreboard players operation $max_length ore.vein *= $3 ore.const
execute if predicate du:location/biome_types/badlands run scoreboard players operation $max_length ore.vein /= $2 ore.const
execute if predicate du:location/biome_types/badlands run scoreboard players set $density ore.generator 45

#Savanna, smaller veins, 1.5x but less dense
execute if predicate du:location/biome_types/savanna run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/savanna run scoreboard players set $density ore.generator 80
execute if predicate du:location/biome_types/savanna run scoreboard players set $max_height ore.vein 2
execute if predicate du:location/biome_types/savanna run scoreboard players set $max_width ore.vein 2

#Plains, smaller veinsand less dense, normal gen amount
execute if predicate du:location/biome_types/savanna run scoreboard players set $density ore.generator 80
execute if predicate du:location/biome_types/savanna run scoreboard players set $max_height ore.vein 2
execute if predicate du:location/biome_types/savanna run scoreboard players set $max_width ore.vein 2

#.66 in swamp, at lower average
execute if predicate du:location/biome_types/swamp run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/swamp run scoreboard players set $min_y ore.move 0

#1.5 in Deserts
execute if predicate du:location/biome_types/deserts run function oregen:util/per_chunk_x1.5

#.66 in jungles
execute if predicate du:location/biome_types/jungle run function oregen:util/per_chunk_x0.6

#.66 in Forests
execute if predicate du:location/biome_types/forest run function oregen:util/per_chunk_x0.6

function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $iron ore.type
function oregen:veins/check_counter_then_do_setup