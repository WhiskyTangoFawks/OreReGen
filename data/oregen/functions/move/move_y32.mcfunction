execute if score $target_y ore.move matches 64..128 run scoreboard players operation $target_y ore.move -= $64 ore.const 

execute if score $target_y ore.move matches 0..31 run function oregen:move/move_y16
execute if score $target_y ore.move matches 32..63 positioned ~ ~32 ~ run function oregen:move/move_y16 
