say OreGen Pack Loaded
function oregen:init_generation
execute unless score $du.ver load matches 2010400..9000000 run tellraw @a [{"text":"Error: OreReGen requires Datapack Utilities version +2.1.3. You can download that [here].","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]