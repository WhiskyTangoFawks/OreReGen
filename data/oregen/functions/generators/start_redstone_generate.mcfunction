scoreboard players set $max_y ore.move 18
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 15

scoreboard players set $max_length ore.vein 1
scoreboard players set $max_height ore.vein 20
scoreboard players set $max_width ore.vein1
scoreboard players set $per_chunk ore.generator 22
scoreboard players set $density ore.generator 64

#Desert, generates 1.5x more, veins start lower but are 2x as long and denser
execute if predicate du:location/biome_types/desert run scoreboard players operation $max_height ore.vein *= $2 ore.const
execute if predicate du:location/biome_types/desert run scoreboard players operation $max_y ore.move /= $2 ore.const
execute if predicate du:location/biome_types/desert run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/desert run scoreboard players operation $per_chunk ore.generator /= $2 ore.const

#.66 in jungle
execute if predicate du:location/biome_types/jungle run scoreboard players operation $per_chunk ore.generator *= $2 ore.const
execute if predicate du:location/biome_types/jungle run scoreboard players operation $per_chunk ore.generator /= $3 ore.const

#.66 in Swamp
execute if predicate du:location/biome_types/swamp run scoreboard players operation $per_chunk ore.generator *= $2 ore.const
execute if predicate du:location/biome_types/swamp run scoreboard players operation $per_chunk ore.generator /= $3 ore.const

function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $redstone ore.type
function oregen:veins/check_counter_then_do_setup