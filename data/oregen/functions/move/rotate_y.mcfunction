scoreboard players add $start_ry ore.move 6
execute if score $start_ry ore.move >= $target_ry ore.move run function oregen:veins/vein_x
execute if score $start_ry ore.move < $target_ry ore.move rotated ~ ~6 run function oregen:move/rotate_y 