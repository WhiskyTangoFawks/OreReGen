execute if score $target_y ore.move matches 32..64 run scoreboard players operation $target_y ore.move -= $32 ore.const 

execute if score $target_y ore.move matches 0..15 run function oregen:move/move_y8
execute if score $target_y ore.move matches 16..31 positioned ~ ~16 ~ run function oregen:move/move_y8