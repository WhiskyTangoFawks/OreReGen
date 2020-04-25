scoreboard players set $oregen testMode 1
execute positioned ~ 0 ~ run function oregen:generate_chunk
execute positioned ~16 0 ~ run function oregen:generate_chunk
execute positioned ~ 0 ~16 run function oregen:generate_chunk
execute positioned ~16 0 ~16 run function oregen:generate_chunk
execute positioned ~-16 0 ~ run function oregen:generate_chunk
execute positioned ~ 0 ~-16 run function oregen:generate_chunk
execute positioned ~-16 0 ~ run function oregen:generate_chunk
execute positioned ~ 0 ~-16 run function oregen:generate_chunk
execute positioned ~-16 0 ~-16 run function oregen:generate_chunk