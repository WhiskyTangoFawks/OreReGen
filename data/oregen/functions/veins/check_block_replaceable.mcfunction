scoreboard players add $counter ore.generator 1
execute unless score $skipIsReplaceable ore.generator matches 1 if block ~ ~ ~ #oregen:replaceable run function oregen:veins/check_density_then_set
execute if score $skipIsReplaceable ore.generator matches 1 run function oregen:veins/check_density_then_set