scoreboard players set $max_y ore.move 18
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 1

scoreboard players set $max_length ore.vein 2
scoreboard players set $max_height ore.vein 2
scoreboard players set $max_width ore.vein2

scoreboard players set $per_chunk ore.generator 6
scoreboard players set $density ore.generator 64

#Taiga at 1.5
execute if predicate du:location/biome_types/taiga run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/taiga run scoreboard players operation $per_chunk ore.generator /= $2 ore.const

#Savannah at 0.66
execute if predicate du:location/biome_types/savanna run scoreboard players operation $per_chunk ore.generator *= $2 ore.const
execute if predicate du:location/biome_types/savanna run scoreboard players operation $per_chunk ore.generator /= $3 ore.const

#Badlands 0.66
execute if predicate du:location/biome_types/badlands run scoreboard players operation $per_chunk ore.generator *= $2 ore.const
execute if predicate du:location/biome_types/badlands run scoreboard players operation $per_chunk ore.generator /= $3 ore.const


function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $diamond ore.type
function oregen:veins/check_counter_then_do_setup