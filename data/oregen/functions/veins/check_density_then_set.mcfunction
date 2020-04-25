
function oregen:util/rng_percent
scoreboard players operation $temp ore.temp = $last ore.rng

#modifier = target - range
scoreboard players operation $temp2 ore.temp = $rng_y ore.move
scoreboard players operation $temp2 ore.temp -= $min_y ore.move
scoreboard players operation $temp2 ore.temp /= $2 ore.const
scoreboard players operation $temp2 ore.temp -= $target_y ore.move

#factor = range * const_factor%
scoreboard players operation $temp2 ore.temp *= $density_factor ore.generator
scoreboard players operation $temp2 ore.temp /= $100 ore.const
#rng + modifier
scoreboard players operation $temp ore.temp -= $temp2 ore.temp

execute if score $temp ore.temp < $density ore.generator run function oregen:blocks/switch_type

#uncomment to disable density switch for testing
#function oregen:blocks/switch_type