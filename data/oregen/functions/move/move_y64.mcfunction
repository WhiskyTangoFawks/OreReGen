execute if score $target_y ore.move matches 129..256 run scoreboard players operation $target_y ore.move -= $128 ore.const 

execute if score $target_y ore.move matches 0..63 run function oregen:move/move_y32
execute if score $target_y ore.move matches 64..128 positioned ~ ~64 ~ run function oregen:move/move_y32