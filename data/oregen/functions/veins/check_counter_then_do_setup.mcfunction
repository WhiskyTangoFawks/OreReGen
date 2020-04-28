
#Execute if random chance %perVein < spawnSum
scoreboard players add $vein_count ore.generator 1

scoreboard players operation $remaining ore.generator = $per_chunk ore.generator
scoreboard players operation $remaining ore.generator -= $counter ore.generator

#If we have enough for another vein, generate it
execute if score $remaining ore.generator >= $vein_avg ore.generator run function oregen:veins/setup_generic_vein

#Else, check a random chance to generate
execute if score $remaining ore.generator < $vein_avg ore.generator run scoreboard players operation $gen_chance ore.generator = $remaining ore.generator
execute if score $remaining ore.generator < $vein_avg ore.generator run scoreboard players operation $gen_chance ore.generator *= $32 ore.const
execute if score $remaining ore.generator < $vein_avg ore.generator run scoreboard players operation $gen_chance ore.generator /= $vein_avg ore.generator
execute if score $remaining ore.generator < $vein_avg ore.generator run function oregen:util/rng32
execute if score $remaining ore.generator < $vein_avg ore.generator if score $gen_chance ore.generator > $last ore.rng run function oregen:veins/setup_generic_vein

#if we had enough for another vein, recurse loop
execute if score $vein_count ore.generator >= $256 ore.const run say ERROR: attempted to setup a vein more than 256 times
execute if score $remaining ore.generator >= $vein_avg ore.generator run function oregen:veins/check_counter_then_do_setup