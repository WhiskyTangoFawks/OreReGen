
scoreboard players add $oregen oreGenStartY 1
#execute if score $oregen oreGenStartY >= $oregen oreGenTargetY run say Y Has Been Set
execute if score $oregen oreGenStartY >= $oregen oreGenTargetY run function oregen:move/move_z
execute if score $oregen oreGenStartY < $oregen oreGenTargetY positioned ~ ~1 ~ run function oregen:move/move_y