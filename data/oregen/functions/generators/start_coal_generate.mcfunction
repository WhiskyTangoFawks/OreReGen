
scoreboard players set $max_y ore.move 96
scoreboard players set $min_ry ore.move 50
scoreboard players set $max_ry ore.move 80

scoreboard players set $vein_length ore.genenerator 10
scoreboard players set $vein_height ore.genenerator 1
scoreboard players set $vein_width ore.genenerator 8
scoreboard players set $per_chunk ore.generator 120

scoreboard players set $density ore.generator 64

#generate 1.5x in swamps at a higher density
execute if predicate du:location/biome_types/swamp run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/swamp run scoreboard players operation $per_chunk ore.generator /= $2 ore.const
execute if predicate du:location/biome_types/swamp run scoreboard players set $density ore.generator 64

#generate 1.5x in badlands
execute if predicate du:location/biome_types/badlands run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/badlands run scoreboard players operation $per_chunk ore.generator /= $2 ore.const

#generate 1.5x in jungle at a lower density
execute if predicate du:location/biome_types/jungle run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/jungle run scoreboard players operation $per_chunk ore.generator /= $2 ore.const
execute if predicate du:location/biome_types/jungle run scoreboard players set $density ore.generator 128

#generate 0.66x in desert at a higher density
execute if predicate du:location/biome_types/desert run scoreboard players operation $per_chunk ore.generator *= $2 ore.const
execute if predicate du:location/biome_types/desert run scoreboard players operation $per_chunk ore.generator /= $3 ore.const
execute if predicate du:location/biome_types/desert run scoreboard players set $density ore.generator 48

#generate 0.66x in plains at a lower density
execute if predicate du:location/biome_types/plains run scoreboard players operation $per_chunk ore.generator *= $2 ore.const
execute if predicate du:location/biome_types/plains run scoreboard players operation $per_chunk ore.generator /= $3 ore.const
execute if predicate du:location/biome_types/plains run scoreboard players set $density ore.generator 128

scoreboard players operation $type ore.generator = $coal ore.type
function oregen:generators/post_setup
function oregen:veins/check_counter_then_do_setup