
scoreboard players set $temp ore.temp 0
fill ~ ~-8 ~ ~16 ~ ~16 minecraft:stone replace #oregen:ores

execute if block ~3 ~8 ~3 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~3 ~8 ~8 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~3 ~8 ~13 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~8 ~8 ~3 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~8 ~8 ~8 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~8 ~8 ~13 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~13 ~8 ~3 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~13 ~8 ~8 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~13 ~8 ~13 #oregen:replaceable run scoreboard players add $temp ore.temp 1

execute if score $temp ore.temp > $6 ore.const positioned ~ ~8 ~ run function oregen:remove_ores_above_56
