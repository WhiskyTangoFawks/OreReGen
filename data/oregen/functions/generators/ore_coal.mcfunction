scoreboard players set $rng_y ore.move 64
scoreboard players set $min_y ore.move 16
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 30

scoreboard players set $max_length ore.vein 10
scoreboard players set $max_height ore.vein 2
scoreboard players set $max_width ore.vein 8
scoreboard players set $per_chunk ore.generator 120

scoreboard players set $density ore.generator 75
scoreboard players set $density_factor ore.generator 50

#generate 1.5x in swamps at a higher density
execute if predicate du:location/biome_types/swamp run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/swamp run scoreboard players set $density ore.generator 65

#generate 1.5x in badlands
execute if predicate du:location/biome_types/badlands run function oregen:util/per_chunk_x1.5

#generate 1.5x in jungle at a lower density
execute if predicate du:location/biome_types/jungle run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/jungle run scoreboard players set $density ore.generator 25

#generate 0.66x in desert at a higher density
execute if predicate du:location/biome_types/desert run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/desert run scoreboard players set $density ore.generator 75


#generate 0.66x in plains at a lower density
execute if predicate du:location/biome_types/plains run function oregen:util/per_chunk_x0.6
execute if predicate du:location/biome_types/plains run scoreboard players set $density ore.generator 35
execute if predicate du:location/biome_types/plains run scoreboard players set $rng_y ore.move 32

scoreboard players operation $type ore.generator = $coal ore.type
function oregen:generators/post_setup
function oregen:veins/check_counter_then_do_setup