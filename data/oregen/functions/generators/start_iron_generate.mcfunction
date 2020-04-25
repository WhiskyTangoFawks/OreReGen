scoreboard players set $max_y ore.move 68
scoreboard players set $min_ry ore.move 50
scoreboard players set $max_ry ore.move 80

scoreboard players set $max_length ore.vein 12
scoreboard players set $max_height ore.vein 2
scoreboard players set $max_width ore.vein2
scoreboard players set $per_chunk ore.generator 46
scoreboard players set $density ore.generator 156

#Badlands, 1.5x and longer, but less dense
execute if predicate du:location/biome_types/badlands run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/badlands run scoreboard players operation $per_chunk ore.generator /= $2 ore.const
execute if predicate du:location/biome_types/badlands run scoreboard players operation $max_length ore.vein *= $3 ore.const
execute if predicate du:location/biome_types/badlands run scoreboard players operation $max_length ore.vein /= $2 ore.const
execute if predicate du:location/biome_types/badlands run scoreboard players set $density ore.generator 190

#.66 in swamp, at lower average
execute if predicate du:location/biome_types/swamp run scoreboard players operation $per_chunk ore.generator *= $2 ore.const
execute if predicate du:location/biome_types/swamp run scoreboard players operation $per_chunk ore.generator /= $3 ore.const
execute if predicate du:location/biome_types/swamp run scoreboard players set $max_y ore.move 52

#1.5 in Deserts
execute if predicate du:location/biome_types/deserts run scoreboard players operation $per_chunk ore.generator /= $2 ore.const
execute if predicate du:location/biome_types/deserts run scoreboard players operation $per_chunk ore.generator *= $3 ore.const

#.66 in jungles
execute if predicate du:location/biome_types/jungle run scoreboard players operation $per_chunk ore.generator *= $2 ore.const
execute if predicate du:location/biome_types/jungle run scoreboard players operation $per_chunk ore.generator /= $3 ore.const

function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $iron ore.type
function oregen:veins/check_counter_then_do_setup