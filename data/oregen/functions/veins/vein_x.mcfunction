#length
scoreboard players set $count_height ore.vein 0
function oregen:veins/vein_y
scoreboard players add $count_length ore.vein 1
execute if score $count_length ore.vein < $max_length ore.vein positioned ^0 ^0 ^1 run function oregen:veins/vein_x
#Non-rotated version for easy testing
#execute if score $count_length ore.vein < $max_length ore.vein positioned ~1 ~0 ~0 run function oregen:veins/vein_x