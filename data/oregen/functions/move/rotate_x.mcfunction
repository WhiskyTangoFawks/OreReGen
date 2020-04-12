scoreboard players add $oregen oreGenStartRX 5
#execute if score $oregen oreGenStartRX >= $oregen oreGenTargetRX run say RotateX Has been set
execute if score $oregen oreGenStartRX >= $oregen oreGenTargetRX run function oregen:move/rotate_y
execute if score $oregen oreGenStartRX < $oregen oreGenTargetRX rotated ~5 ~0 run function oregen:move/rotate_x 