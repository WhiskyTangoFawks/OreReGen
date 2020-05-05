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
execute positioned ~ 0 ~ run function oregen:generators/ore_emerald
execute positioned ~ 0 ~ run function oregen:generators/ore_diamond
execute positioned ~ 0 ~ run function oregen:generators/ore_lapis
execute positioned ~ 0 ~ run function oregen:generators/ore_gold
execute positioned ~ 0 ~ run function oregen:generators/ore_redstone
execute positioned ~ 0 ~ run function oregen:generators/ore_iron
execute positioned ~ 0 ~ run function oregen:generators/ore_coal
execute positioned ~ 0 ~ run function oregen:generators/layer_cobble
execute positioned ~ 0 ~ run function oregen:generators/layer_obsidian

#testing, to remove the world once generation is done
#fill ~ 2 ~ ~16 64 ~16 air replace water
#fill ~ 2 ~ ~16 64 ~16 air replace lava
#fill ~ 2 ~ ~16 64 ~16 air replace gravel
#fill ~ 2 ~ ~16 64 ~16 air replace #oregen:replaceable