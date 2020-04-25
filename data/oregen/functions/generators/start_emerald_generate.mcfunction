scoreboard players set $max_y ore.move 25
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 1 

scoreboard players set $max_length ore.vein 1
scoreboard players set $max_height ore.vein 1
scoreboard players set $max_width ore.vein1
scoreboard players set $per_chunk ore.generator 3
scoreboard players set $density ore.generator 0

#1.5x in savannah
execute if predicate du:location/biome_types/savanna run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/savanna run scoreboard players operation $per_chunk ore.generator /= $2 ore.const

#Swamp at 1.5
execute if predicate du:location/biome_types/swamp run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/swamp run scoreboard players operation $per_chunk ore.generator /= $2 ore.const

#Badlands at 0.66, lower density
execute if predicate du:location/biome_types/badlands run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/badlands run scoreboard players operation $per_chunk ore.generator /= $2 ore.const
execute if predicate du:location/biome_types/badlands run scoreboard players set $density ore.generator 128

function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $emerald ore.type
function oregen:veins/check_counter_then_do_setup