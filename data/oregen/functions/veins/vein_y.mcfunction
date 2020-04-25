#height
scoreboard players set $count_width ore.vein 0
function oregen:veins/vein_z
scoreboard players add $count_height ore.vein 1
execute if score $count_height ore.vein < $max_height ore.vein positioned ^0 ^1 ^0 run function oregen:veins/vein_y
#Non-rotated version for easy testing
#execute if score $count_height ore.vein < $max_height ore.vein positioned ~0 ~1 ~0 run function oregen:veins/vein_y