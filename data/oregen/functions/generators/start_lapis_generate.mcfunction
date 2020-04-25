scoreboard players set $max_y ore.move 42
scoreboard players set $min_ry ore.move 30
scoreboard players set $max_ry ore.move 60

scoreboard players set $max_length ore.vein 18
scoreboard players set $max_height ore.vein 1
scoreboard players set $max_width ore.vein1
scoreboard players set $per_chunk ore.generator 12
scoreboard players set $density ore.generator 64

#1.5x and Longer veins in jungles
execute if predicate du:location/biome_types/jungle run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/jungle run scoreboard players operation $per_chunk ore.generator /= $2 ore.const
execute if predicate du:location/biome_types/jungle run scoreboard players set $max_length ore.vein 18

#1.5x but lower density in plains
execute if predicate du:location/biome_types/plains run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/plains run scoreboard players operation $per_chunk ore.generator /= $2 ore.const
execute if predicate du:location/biome_types/plains run scoreboard players set $density ore.generator 96

#.66 in deserts
execute if predicate du:location/biome_types/desert run scoreboard players operation $per_chunk ore.generator *= $2 ore.const
execute if predicate du:location/biome_types/desert run scoreboard players operation $per_chunk ore.generator /= $3 ore.const

#.66 in Savannah
execute if predicate du:location/biome_types/savanna run scoreboard players operation $per_chunk ore.generator *= $2 ore.const
execute if predicate du:location/biome_types/savanna run scoreboard players operation $per_chunk ore.generator /= $3 ore.const


function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $lapis ore.type
function oregen:veins/check_counter_then_do_setup