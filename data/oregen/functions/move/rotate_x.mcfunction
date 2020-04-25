scoreboard players add $start_rx ore.move 6
execute if score $start_rx ore.move >= $target_rx ore.move run function oregen:move/rotate_y
execute if score $start_rx ore.move < $target_rx ore.move rotated ~6 ~ run function oregen:move/rotate_x 