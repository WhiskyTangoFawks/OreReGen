
#scoreboard players add $start_x ore.move 1
#execute if score $start_x ore.move >= $target_x ore.move run function oregen:move/move_y128
#execute if score $start_x ore.move < $target_x ore.move positioned ~1 ~ ~ run function oregen:move/move_x

execute if score $target_x ore.move matches 0 positioned ~ ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 1 positioned ~1 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 2 positioned ~2 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 3 positioned ~3 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 4 positioned ~4 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 5 positioned ~5 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 6 positioned ~6 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 7 positioned ~7 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 8 positioned ~8 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 9 positioned ~9 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 10 positioned ~10 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 11 positioned ~11 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 12 positioned ~12 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 13 positioned ~13 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 14 positioned ~14 ~ ~ run function oregen:move/move_y128
execute if score $target_x ore.move matches 15 positioned ~15 ~ ~ run function oregen:move/move_y128