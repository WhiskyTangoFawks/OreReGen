scoreboard players set $max_y ore.move 20
scoreboard players set $min_ry ore.move 10
scoreboard players set $max_ry ore.move 80

scoreboard players set $max_length ore.vein 8
scoreboard players set $max_height ore.vein 2
scoreboard players set $max_width ore.vein8
scoreboard players set $per_chunk ore.generator 1200
scoreboard players set $density ore.generator 10

#Mountains- *2 gen height, *1.5 ore generation
execute if predicate du:location/biome_types/mountains run scoreboard players operation $max_y ore.move *= $2 ore.const
execute if predicate du:location/biome_types/mountains run scoreboard players operation $per_chunk ore.generator *= $3 ore.const
execute if predicate du:location/biome_types/mountains run scoreboard players operation $per_chunk ore.generator /= $2 ore.const

function oregen:generators/post_setup
scoreboard players operation $type ore.generator = $obsidian ore.type
function oregen:veins/check_counter_then_do_setup