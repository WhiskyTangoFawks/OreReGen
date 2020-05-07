#scoreboard players set $test ore.generator 1

execute rotated 0 0 positioned ~-8 0 ~-8 run function oregen:generate_chunk
#testing, to remove the world once generation is done
fill ~-8 2 ~-8 ~8 64 ~8 air replace water
fill ~-8 2 ~-8 ~8 64 ~8 air replace lava
fill ~-8 2 ~-8 ~8 64 ~8 air replace gravel
fill ~-8 2 ~-8 ~8 64 ~8 air replace #oregen:replaceable