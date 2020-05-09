#width
#add to the count here, because we´re checking replaceable, and adding to count after tends to give errors
function oregen:veins/check_block_replaceable
scoreboard players add $count_width ore.vein 1
execute if score $count_width ore.vein < $max_width ore.vein positioned ^1 ^0 ^0 run function oregen:veins/vein_z
#Non-rotated version for easy testing
#execute if score $count_width ore.vein < $max_width ore.vein positioned ~0 ~0 ~1 run function oregen:veins/vein_z