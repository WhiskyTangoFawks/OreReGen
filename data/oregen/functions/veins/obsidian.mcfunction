execute positioned ^ ^ ^ run function oregen:veins/set_obsidian
execute positioned ^1 ^ ^ run function oregen:veins/set_obsidian
execute positioned ^2 ^ ^ run function oregen:veins/set_obsidian
execute positioned ^3 ^ ^ run function oregen:veins/set_obsidian
execute positioned ^4 ^ ^ run function oregen:veins/set_obsidian
execute positioned ^5 ^ ^ run function oregen:veins/set_obsidian
execute positioned ^6 ^ ^ run function oregen:veins/set_obsidian
execute positioned ^7 ^ ^ run function oregen:veins/set_obsidian

scoreboard players add $oregen oreVeinLenSum 1
execute positioned ^ ^ ^1 if score $oregen oreVeinLenSum < $oregen oreVeinLenMax run function oregen:veins/obsidian