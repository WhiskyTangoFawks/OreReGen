scoreboard players add $start_z ore.move 1
execute if score $start_z ore.move >= $target_z ore.move run function oregen:move/rotate_x
execute if score $start_z ore.move < $target_z ore.move positioned ~ ~ ~1 run function oregen:move/move_z