scoreboard players add $count_width ore.vein 1
execute if score $count_width ore.vein < $half_width ore.vein positioned ^-1 ^0 ^0 run function oregen:move/move_reverse_x
execute if score $count_width ore.vein >= $half_width ore.vein run function oregen:veins/vein_x