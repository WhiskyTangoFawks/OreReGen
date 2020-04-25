
scoreboard players add $start_x ore.move 1
execute if score $start_x ore.move >= $target_x ore.move run function oregen:move/move_y
execute if score $start_x ore.move < $target_x ore.move positioned ~1 ~ ~ run function oregen:move/move_x
