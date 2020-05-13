schedule function chunk_scan:main 2t replace
execute if entity @e[tag=!chunk_scan.disabled,type=minecraft:player] as @a[tag=!chunk_scan.disabled] at @s run function chunk_scan:player