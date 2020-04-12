scoreboard players add $oregen oreGenStartZ 1
#execute if score $oregen oreGenStartZ >= $oregen oreGenTargetZ run say Z Has Been Set
execute if score $oregen oreGenStartZ >= $oregen oreGenTargetZ rotated -15 -15 run function oregen:move/rotate_x
execute if score $oregen oreGenStartZ < $oregen oreGenTargetZ positioned ~ ~ ~1 run function oregen:move/move_z