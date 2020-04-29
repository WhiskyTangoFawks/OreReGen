#say Generate Chunk
scoreboard players add $chunk_count ore.generator 1

scoreboard players set $chunk_height ore.generator 64
execute positioned ~ 64 ~ run function oregen:get_chunk_height
function oregen:generators/ore_emerald
function oregen:generators/ore_diamond
function oregen:generators/ore_lapis
function oregen:generators/ore_gold
function oregen:generators/ore_redstone
function oregen:generators/ore_iron
function oregen:generators/ore_coal
function oregen:generators/layer_cobble
function oregen:generators/layer_obsidian

#testing, to remove the world once generation is done
#fill ~ ~2 ~ ~16 ~64 ~16 air replace #oregen:replaceable
#fill ~ ~2 ~ ~16 ~64 ~16 air replace water
#fill ~ ~2 ~ ~16 ~64 ~16 air replace lava
#fill ~ ~2 ~ ~16 ~64 ~16 air replace gravel