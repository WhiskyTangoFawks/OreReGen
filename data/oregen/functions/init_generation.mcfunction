#say Running Init_Generation
#say Setting random seed to 3553

#Utility variables for random generation
scoreboard objectives add ore.rng dummy
scoreboard players set $last ore.rng 3553
scoreboard players set $const_a ore.rng 2175143
scoreboard players set $const_c ore.rng 10653
scoreboard players set $const_mod ore.rng 1000000

#Ore generation type properties
scoreboard objectives add ore.generator dummy

#constants
scoreboard objectives add ore.const dummy
scoreboard players set $256 ore.const 256
scoreboard players set $222 ore.const 222
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

scoreboard players set $26 ore.const 26

scoreboard players set $243 ore.const 243
scoreboard players set $192 ore.const 192
scoreboard players set $100 ore.const 100
scoreboard players set $110 ore.const 110
scoreboard players set $50 ore.const 50
scoreboard players set $20 ore.const 20
scoreboard players set $10 ore.const 10

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

scoreboard objectives add ore.chunk.count dummy
execute unless score $chunk_count ore.generator > $1 ore.const run scoreboard players set $chunk_count ore.generator 0

scoreboard objectives add ore.temp dummy

#These are the chunk X and Y- not sure I am using them anywhere
scoreboard objectives add genX dummy
scoreboard objectives add genZ dummy

#Test mode- this will allow ores to be generated in air. Use a flatworld to observe gen patterns
execute unless score $test ore.generator matches 1 run scoreboard players set $test ore.generator 0