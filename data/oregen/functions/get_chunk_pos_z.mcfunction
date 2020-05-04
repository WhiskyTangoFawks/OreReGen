scoreboard players operation $tempz ore.temp = $world.z du_data
scoreboard players operation $tempz ore.temp %= $16 ore.const
execute if score $tempz ore.temp matches 0 positioned ~ ~ ~ run function oregen:generate_chunk
execute if score $tempz ore.temp matches 1 positioned ~ ~ ~-1 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 2 positioned ~ ~ ~-2 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 3 positioned ~ ~ ~-3 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 4 positioned ~ ~ ~-4 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 5 positioned ~ ~ ~-5 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 6 positioned ~ ~ ~-6 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 7 positioned ~ ~ ~-7 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 8 positioned ~ ~ ~-8 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 9 positioned ~ ~ ~-9 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 10 positioned ~ ~ ~-10 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 11 positioned ~ ~ ~-11 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 12 positioned ~ ~ ~-12 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 13 positioned ~ ~ ~-13 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 14 positioned ~ ~ ~-14 run function oregen:generate_chunk
execute if score $tempz ore.temp matches 15 positioned ~ ~ ~-15 run function oregen:generate_chunk