#LCG random number generator
scoreboard players operation $last ore.rng *= $const_a ore.rng
scoreboard players operation $last ore.rng += $const_c ore.rng
#could potentially add the last X and Y chunk coords here, should give me a better random
scoreboard players operation $last ore.rng += $world.x du_data
scoreboard players operation $last ore.rng -= $world.x du_data

scoreboard players operation $last ore.rng %= $const_mod ore.rng