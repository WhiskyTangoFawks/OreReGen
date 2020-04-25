scoreboard players set $rng_y ore.move 32
scoreboard players set $min_y ore.move 10
scoreboard players set $min_ry ore.move 20
scoreboard players set $max_ry ore.move 70

scoreboard players set $max_length ore.vein 16
scoreboard players set $max_height ore.vein 2
scoreboard players set $max_width ore.vein 2
scoreboard players set $per_chunk ore.generator 10
scoreboard players set $density ore.generator 80
scoreboard players set $density_factor ore.generator 60

#1.5x in savannah
execute if predicate du:location/biome_types/savanna run function oregen:util/per_chunk_x1.5

#1.5x in forest
execute if predicate du:location/biome_types/forest run function oregen:util/per_chunk_x1.5
execute if predicate du:location/biome_types/forest run scoreboard players set $min_y ore.move 20

#Swamp at 1.5
execute if predicate du:location/biome_types/swamp run function oregen:util/per_chunk_x1.5
#Badlands at 0.66
execute if predicate du:location/biome_types/badlands run function oregen:util/per_chunk_x0.6

function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $emerald ore.type
function oregen:veins/check_counter_then_do_setup