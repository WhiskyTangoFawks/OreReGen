
scoreboard players set $temp ore.temp 0
fill ~ ~-8 ~ ~16 ~ ~16 minecraft:stone replace #oregen:ores

execute if block ~3 ~6 ~3 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~3 ~6 ~8 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~3 ~6 ~13 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~8 ~6 ~3 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~8 ~6 ~8 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~8 ~6 ~13 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~13 ~6 ~3 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~13 ~6 ~8 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~13 ~6 ~13 #oregen:replaceable run scoreboard players add $temp ore.temp 1

execute if block ~3 ~12 ~3 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~3 ~12 ~8 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~3 ~12 ~13 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~8 ~12 ~3 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~8 ~12 ~8 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~8 ~12 ~13 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~13 ~12 ~3 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~13 ~12 ~8 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~13 ~12 ~13 #oregen:replaceable run scoreboard players add $temp ore.temp 1

execute if score $temp ore.temp > $6 ore.const positioned ~ ~6 ~ run function oregen:remove_ores_above_56
