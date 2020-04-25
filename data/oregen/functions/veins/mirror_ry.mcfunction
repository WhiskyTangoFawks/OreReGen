#function used to rotate the angle around to it mirror to get veins slanting both up and down
#target_ry += 360(-2 * target y)
scoreboard players set $temp ore.temp 360
scoreboard players operation $temp ore.temp -= $target_ry ore.move
scoreboard players operation $temp ore.temp -= $target_ry ore.move
scoreboard players operation $target_ry ore.move += $temp ore.temp