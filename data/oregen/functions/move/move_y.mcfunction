scoreboard players add $start_y ore.move 1
execute if score $start_y ore.move >= $target_y ore.move run function oregen:move/move_z
execute if score $start_y ore.move < $target_y ore.move positioned ~ ~1 ~ run function oregen:move/move_y