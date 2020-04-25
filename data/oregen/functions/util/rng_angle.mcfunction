#returns a random number from -3 to 93
scoreboard players set $last ore.rng -3
execute if predicate du:random/0.5 run scoreboard players add $last ore.rng 6
execute if predicate du:random/0.5 run scoreboard players add $last ore.rng 12
execute if predicate du:random/0.5 run scoreboard players add $last ore.rng 24
execute if predicate du:random/0.5 run scoreboard players add $last ore.rng 48