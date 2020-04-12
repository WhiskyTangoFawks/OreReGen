scoreboard players add $oregen oreGenStartRY 5
#execute if score $oregen oreGenStartRY >= $oregen oreGenTargetRY run say RotateY has been set
execute if score $oregen oreGenStartRY >= $oregen oreGenTargetRY run function oregen:switch_generate_vein
execute if score $oregen oreGenStartRY < $oregen oreGenTargetRY rotated ~ ~5 run function oregen:move/rotate_y 