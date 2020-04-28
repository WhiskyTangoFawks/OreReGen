#say Running Init_Generation

#Utility variables for random generation
scoreboard objectives add ore.rng dummy

#Ore generation type properties
scoreboard objectives add ore.generator dummy

#constants
scoreboard objectives add ore.const dummy
scoreboard players set $256 ore.const 256
scoreboard players set $1 ore.const 1
scoreboard players set $3 ore.const 3
scoreboard players set $2 ore.const 2
scoreboard players set $4 ore.const 4
scoreboard players set $5 ore.const 5
scoreboard players set $6 ore.const 6
scoreboard players set $8 ore.const 8
scoreboard players set $16 ore.const 16
scoreboard players set $32 ore.const 32
scoreboard players set $64 ore.const 64
scoreboard players set $128 ore.const 128
scoreboard players set $360 ore.const 360

scoreboard players set $26 ore.const 26

scoreboard players set $100 ore.const 100
scoreboard players set $110 ore.const 110

#variables for incrementation during recursive movement

scoreboard objectives add ore.move dummy
scoreboard objectives add ore.vein dummy

#Ore switch types
scoreboard objectives add ore.type dummy
scoreboard players set $coal ore.type 1
scoreboard players set $iron ore.type 2
scoreboard players set $redstone ore.type 3
scoreboard players set $diamond ore.type 4
scoreboard players set $gold ore.type 5
scoreboard players set $lapis ore.type 6
scoreboard players set $emerald ore.type 7
scoreboard players set $obsidian ore.type 8
scoreboard players set $cobble ore.type 9
scoreboard players set $netherrack ore.type 10
scoreboard players set $clay ore.type 11
scoreboard players set $ice ore.type 12

execute unless score $chunk_count ore.generator > $1 ore.const run scoreboard players set $chunk_count ore.generator 0

scoreboard objectives add ore.temp dummy