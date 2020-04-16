#say Running Init_Generation
#say Setting random seed to 3553
scoreboard objectives add oreGenRandomLast dummy
scoreboard players set $oregen oreGenRandomLast 3553

scoreboard objectives add oreGenRandomA dummy
scoreboard players set $oregen oreGenRandomA 2175143

scoreboard objectives add oreGenRandomC dummy
scoreboard players set $oregen oreGenRandomC 10653

scoreboard objectives add oreGenRandomMod dummy
scoreboard players set $oregen oreGenRandomMod 1000000

scoreboard objectives add oreGenDensity dummy
scoreboard objectives add oreGen256 dummy
scoreboard players set $oregen oreGen256 256

scoreboard objectives add oreGenType dummy
scoreboard objectives add oreGenSpawnSum dummy
scoreboard objectives add oreGenSpawnMax dummy
scoreboard objectives add oreVeinLenMax dummy
scoreboard objectives add oreVeinLenSum dummy

#target density out of 256 above which it generates
scoreboard objectives add oreGenTargetDens dummy

#variables for incrementation during recursive movement
scoreboard objectives add oreGenStartX dummy
scoreboard objectives add oreGenStartY dummy
scoreboard objectives add oreGenStartZ dummy
scoreboard objectives add oreGenStartRX dummy
scoreboard objectives add oreGenStartRY dummy

#variables for setting with a random target
scoreboard objectives add oreGenTargetX dummy
scoreboard objectives add oreGenTargetY dummy
scoreboard objectives add oreGenTargetZ dummy
scoreboard objectives add oreGenTargetRX dummy
scoreboard objectives add oreGenTargetRY dummy

#variables for setting the range
scoreboard objectives add oreGenMinY dummy
scoreboard objectives add oreGenMaxY dummy
scoreboard objectives add oreGenMinRY dummy
scoreboard objectives add oreGenMaxRY dummy
scoreboard objectives add oreGenMaxRX dummy

scoreboard objectives add oreGenMaxX dummy
scoreboard objectives add oreGenMaxRY dummy
scoreboard objectives add oreGenMaxZ dummy

scoreboard objectives add oreTypeCoal dummy
scoreboard players set $oregen oreTypeCoal 1

scoreboard objectives add oreTypeIron dummy
scoreboard players set $oregen oreTypeIron 2

scoreboard objectives add oreTypeRedstone dummy
scoreboard players set $oregen oreTypeRedstone 3

scoreboard objectives add oreTypeDiamond dummy
scoreboard players set $oregen oreTypeDiamond 4

scoreboard objectives add oreTypeGold dummy
scoreboard players set $oregen oreTypeGold 5

scoreboard objectives add oreTypeLapis dummy
scoreboard players set $oregen oreTypeLapis 6

scoreboard objectives add oreTypeEmerald dummy
scoreboard players set $oregen oreTypeEmerald 7

scoreboard objectives add oreTypeObsidian dummy
scoreboard players set $oregen oreTypeObsidian 8

scoreboard objectives add oreTypeClay dummy
scoreboard players set $oregen oreTypeClay 9

scoreboard objectives add oreTypeCobble dummy
scoreboard players set $oregen oreTypeCobble 9

scoreboard objectives add const3 dummy
scoreboard players set $oregen const3 3

scoreboard objectives add const2 dummy
scoreboard players set $oregen const2 2

scoreboard objectives add const4 dummy
scoreboard players set $oregen const4 4

scoreboard objectives add const26 dummy
scoreboard players set $oregen const26 26

scoreboard objectives add const243 dummy
scoreboard players set $oregen const243 243

scoreboard objectives add const192 dummy
scoreboard players set $oregen const192 192

scoreboard objectives add gencount dummy
scoreboard players set $oregen gencount 0

scoreboard objectives add temp dummy
scoreboard players set $oregen temp 0

scoreboard objectives add genX dummy
scoreboard objectives add genZ dummy