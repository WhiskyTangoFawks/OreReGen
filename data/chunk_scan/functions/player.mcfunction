execute store result score $world.x scan run data get entity @s Pos[0]
execute store result score $world.z scan run data get entity @s Pos[2]

#modified to only run in the overworld, if I want to add nether or end generation later, will need to re-enable

execute if predicate du:world/overworld if block ~ 0 ~ bedrock run function chunk_scan:chunk/init

#execute if predicate chunk_scan:in_the_end unless block ~ 255 ~ moving_piston run function chunk_scan:chunk/init

execute if predicate du:world/overworld if entity @e[distance=..256,type=area_effect_cloud,tag=chunk_scan.chunk] positioned ~-8 0 ~-8 as @e[distance=0..,type=area_effect_cloud,tag=chunk_scan.chunk,sort=nearest,limit=1] at @s if score $world.x scan > $min_x scan if score $world.x scan < $max_x scan if score $world.z scan > $min_z scan if score $world.z scan < $max_z scan run function chunk_scan:chunk/generate
#execute if predicate chunk_scan:in_the_end if entity @e[distance=..256,type=area_effect_cloud,tag=chunk_scan.chunk] positioned ~-8 0 ~-8 as @e[distance=0..,type=area_effect_cloud,tag=chunk_scan.chunk,sort=nearest,limit=1] at @s run function chunk_scan:chunk/generate_end
