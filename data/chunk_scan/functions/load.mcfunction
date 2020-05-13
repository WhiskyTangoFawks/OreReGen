
schedule function chunk_scan:main 2t replace
scoreboard players set chunk_scan load 3

scoreboard objectives add scan dummy
scoreboard players set $min_x scan -100000
scoreboard players set $max_x scan 100000
scoreboard players set $min_z scan -100000
scoreboard players set $max_z scan 100000