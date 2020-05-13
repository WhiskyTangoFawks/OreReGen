scoreboard players set $block_set ore.vein 0

execute if score $type_secondary ore.generator = $granite ore.type run function oregen:blocks/set_granite
execute if score $type_secondary ore.generator = $andesite ore.type run function oregen:blocks/set_andesite
execute if score $type_secondary ore.generator = $diorite ore.type run function oregen:blocks/set_diorite
execute if score $type_secondary ore.generator = $obsidian ore.type run function oregen:blocks/set_obsidian
execute if score $type_secondary ore.generator = $ice ore.type run function oregen:blocks/set_ice
execute if score $type_secondary ore.generator = $dirt ore.type run function oregen:blocks/set_dirt
execute if score $type_secondary ore.generator = $mossy_cobble ore.type run function oregen:blocks/set_mossy_cobble
execute if score $type_secondary ore.generator = $netherrack ore.type run function oregen:blocks/set_netherrack
execute if score $type_secondary ore.generator = $redsand ore.type run function oregen:blocks/set_redsand
execute if score $type_secondary ore.generator = $clay ore.type run function oregen:blocks/fill_clay

#execute if score $type_secondary ore.generator = $coal ore.type run function oregen:blocks/set_coal
#execute if score $type_secondary ore.generator = $iron ore.type run function oregen:blocks/set_iron
#execute if score $type_secondary ore.generator = $gold ore.type run function oregen:blocks/set_gold
#execute if score $type_secondary ore.generator = $redstone ore.type run function oregen:blocks/set_redstone
#execute if score $type_secondary ore.generator = $diamond ore.type run function oregen:blocks/set_diamond
#execute if score $type_secondary ore.generator = $emerald ore.type run function oregen:blocks/set_emerald
#execute if score $type_secondary ore.generator = $lapis ore.type run function oregen:blocks/set_lapis
#execute if score $type_secondary ore.generator = $cobble ore.type run function oregen:blocks/fill_cobble
#execute if score $type_secondary ore.generator = $netherrack ore.type run function oregen:blocks/set_netherrack
#execute if score $type_secondary ore.generator = $clay ore.type run function oregen:blocks/fill_clay