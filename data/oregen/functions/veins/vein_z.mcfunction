#width
#add to the count here, because we´re checking replaceable, and adding to count after tends to give errors
scoreboard players add $counter ore.generator 1
execute if block ~ ~ ~ #oregen:replaceable run function oregen:veins/check_density_then_set
scoreboard players add $count_width ore.vein 1
execute if score $count_width ore.vein < $max_width ore.vein positioned ^1 ^0 ^0 run function oregen:veins/vein_z
#Non-rotated version for easy testing
#execute if score $count_width ore.vein < $max_width ore.vein positioned ~0 ~0 ~1 run function oregen:veins/vein_z