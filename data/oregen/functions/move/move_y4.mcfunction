execute if score $target_y ore.move matches 8..16 run scoreboard players operation $target_y ore.move -= $8 ore.const 

execute if score $target_y ore.move matches 7 positioned ~ ~7 ~ run function oregen:move/move_z
execute if score $target_y ore.move matches 6 positioned ~ ~6 ~ run function oregen:move/move_z
execute if score $target_y ore.move matches 5 positioned ~ ~5 ~ run function oregen:move/move_z
execute if score $target_y ore.move matches 4 positioned ~ ~4 ~ run function oregen:move/move_z
execute if score $target_y ore.move matches 3 positioned ~ ~3 ~ run function oregen:move/move_z
execute if score $target_y ore.move matches 2 positioned ~ ~2 ~ run function oregen:move/move_z
execute if score $target_y ore.move matches 1 positioned ~ ~1 ~ run function oregen:move/move_z
execute if score $target_y ore.move matches 0 run function oregen:move/move_z