execute if score $target_y ore.move matches 0..127 run function oregen:move/move_y64
execute if score $target_y ore.move matches 128..256 positioned ~ ~128 ~ run function oregen:move/move_y64 
