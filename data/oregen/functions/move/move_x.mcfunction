
scoreboard players add $oregen oreGenStartX 1
#execute if score $oregen oreGenStartX >= $oregen oreGenTargetX run say X Has Been Set
execute if score $oregen oreGenStartX >= $oregen oreGenTargetX run function oregen:move/move_y
execute if score $oregen oreGenStartX < $oregen oreGenTargetX positioned ~1 ~ ~ run function oregen:move/move_x
