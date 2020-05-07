scoreboard players add $chunk_count ore.generator 1
execute positioned ~ 1 ~ unless block ~ 1 ~ minecraft:barrier run function oregen:prep_chunk
execute positioned ~-16 1 ~ unless block ~ 1 ~ minecraft:barrier run function oregen:prep_chunk
execute positioned ~ 1 ~-16 unless block ~ 1 ~ minecraft:barrier run function oregen:prep_chunk
execute positioned ~-16 1 ~-16 unless block ~ 1 ~ minecraft:barrier run function oregen:prep_chunk
execute positioned ~16 1 ~ unless block ~ 1 ~ minecraft:barrier run function oregen:prep_chunk
execute positioned ~ 1 ~16 unless block ~ 1 ~ minecraft:barrier run function oregen:prep_chunk
execute positioned ~16 1 ~16 unless block ~ 1 ~ minecraft:barrier run function oregen:prep_chunk
execute positioned ~16 1 ~-16 unless block ~ 1 ~ minecraft:barrier run function oregen:prep_chunk
execute positioned ~-16 1 ~16 unless block ~ 1 ~ minecraft:barrier run function oregen:prep_chunk

scoreboard players set $chunk_height ore.generator 64
execute positioned ~ 64 ~ run function oregen:get_chunk_height
execute positioned ~ 0 ~ run function #oregen:generate
fill ~-8 2 ~-8 ~8 64 ~8 air replace water
fill ~-8 2 ~-8 ~8 64 ~8 air replace lava
fill ~-8 2 ~-8 ~8 64 ~8 air replace gravel
fill ~-8 2 ~-8 ~8 64 ~8 air replace #oregen:replaceable