
execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

execute store result score $cloud_x scan run data get entity @s Pos[0]
execute store result score $cloud_z scan run data get entity @s Pos[2]
execute store result score $player_x scan run data get entity @p Pos[0]
execute store result score $player_z scan run data get entity @p Pos[2]

execute at @s run fill ~ 0 ~ ~15 0 ~15 barrier replace bedrock
execute at @s run kill @e[type=area_effect_cloud,distance=..1,tag=chunk_scan.chunk]

#Generator works by just going out until infinity
#It at least doesn´t spawn entities in alreayd generated chunks

execute at @s positioned ~16 ~ ~ if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[chunk_scan.chunk],Duration:2147483647}
execute at @s positioned ~-16 ~ ~ if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[chunk_scan.chunk],Duration:2147483647}
execute at @s positioned ~ ~ ~16 if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[chunk_scan.chunk],Duration:2147483647}
execute at @s positioned ~ ~ ~-16 if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[chunk_scan.chunk],Duration:2147483647}

execute at @s run function #chunk_scan:generate
