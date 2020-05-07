#say PrepChunk called
fill ~ 0 ~ ~15 56 ~15 minecraft:stone replace #oregen:ores
setblock ~ 1 ~ minecraft:barrier
execute positioned ~ 64 ~ run function oregen:remove_ores_above_56