execute if score $target_y ore.move matches 16..32 run scoreboard players operation $target_y ore.move -= $16 ore.const 

execute if score $target_y ore.move matches 0..7 run function oregen:move/move_y4
execute if score $target_y ore.move matches 8..15 positioned ~ ~8 ~ run function oregen:move/move_y4