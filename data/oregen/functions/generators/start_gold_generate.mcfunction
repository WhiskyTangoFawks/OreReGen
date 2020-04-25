scoreboard players set $max_y ore.move 36
scoreboard players set $min_ry ore.move 0
scoreboard players set $max_ry ore.move 90

scoreboard players set $max_length ore.vein 4
scoreboard players set $max_height ore.vein 4
scoreboard players set $max_width ore.vein4
scoreboard players set $per_chunk ore.generator 16
scoreboard players set $density ore.generator 220

#taiga 1.5x
execute if predicate du:location/biome_types/taiga run scoreboard players operation $max_y ore.move /= $2 ore.const
execute if predicate du:location/biome_types/taiga run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/taiga run scoreboard players set $max_y ore.move 52

#Plains 1.5x
execute if predicate du:location/biome_types/plains run scoreboard players operation $max_y ore.move /= $2 ore.const
execute if predicate du:location/biome_types/plains run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/plains run scoreboard players set $max_y ore.move 44

#swamp 0.5x
execute if predicate du:location/biome_types/swamp run scoreboard players operation $max_y ore.move /= $2 ore.const

function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $gold ore.type
function oregen:veins/check_counter_then_do_setup