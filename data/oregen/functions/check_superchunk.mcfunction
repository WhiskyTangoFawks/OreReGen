scoreboard players set $chunks_ready ore.generator 0
execute if block ~ 0 ~ minecraft:barrier run scoreboard players add $chunks_ready ore.generator 1
execute if block ~-16 0 ~ minecraft:barrier run scoreboard players add $chunks_ready ore.generator 1
execute if block ~ 0 ~-16 minecraft:barrier run scoreboard players add $chunks_ready ore.generator 1
execute if block ~-16 0 ~-16 minecraft:barrier run scoreboard players add $chunks_ready ore.generator 1
execute if block ~16 0 ~ minecraft:barrier run scoreboard players add $chunks_ready ore.generator 1
execute if block ~ 0 ~16 minecraft:barrier run scoreboard players add $chunks_ready ore.generator 1
execute if block ~16 0 ~16 minecraft:barrier run scoreboard players add $chunks_ready ore.generator 1
execute if block ~16 0 ~-16 minecraft:barrier run scoreboard players add $chunks_ready ore.generator 1
execute if block ~-16 0 ~16 minecraft:barrier run scoreboard players add $chunks_ready ore.generator 1
execute if score $chunks_ready ore.generator matches 9 run function oregen:generate_chunk

