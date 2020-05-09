scoreboard players set $temp ore.temp 0

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

execute if score $temp ore.temp > $1 ore.const run scoreboard players add $chunk_height ore.generator 1
execute if score $temp ore.temp > $3 ore.const run scoreboard players add $chunk_height ore.generator 2
execute if score $temp ore.temp > $6 ore.const run scoreboard players add $chunk_height ore.generator 3
execute if score $temp ore.temp > $5 ore.const if score $chunk_height ore.generator < $256 ore.const positioned ~ ~8 ~ run function oregen:get_chunk_height