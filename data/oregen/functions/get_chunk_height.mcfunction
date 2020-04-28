scoreboard players set $temp ore.temp 0

execute if block ~3 ~8 ~3 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~3 ~8 ~8 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~3 ~8 ~13 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~8 ~8 ~3 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~8 ~8 ~8 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~8 ~8 ~13 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~13 ~8 ~3 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~13 ~8 ~8 #oregen:replaceable run scoreboard players add $temp ore.temp 1
execute if block ~13 ~8 ~13 #oregen:replaceable run scoreboard players add $temp ore.temp 1

execute if score $temp ore.temp > $3 ore.const run scoreboard players add $chunk_height ore.generator 4
execute if score $temp ore.temp > $6 ore.const run scoreboard players add $chunk_height ore.generator 4
execute if score $temp ore.temp > $5 ore.const if score $chunk_height ore.generator < $256 ore.const positioned ~ ~8 ~ run function oregen:get_chunk_height