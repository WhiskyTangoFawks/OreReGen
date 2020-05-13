scoreboard players set $block_set ore.vein 0
execute if score $type ore.generator = $coal ore.type run function oregen:blocks/set_coal
execute if score $type ore.generator = $iron ore.type run function oregen:blocks/set_iron
execute if score $type ore.generator = $gold ore.type run function oregen:blocks/set_gold
execute if score $type ore.generator = $redstone ore.type run function oregen:blocks/set_redstone
execute if score $type ore.generator = $diamond ore.type run function oregen:blocks/set_diamond
execute if score $type ore.generator = $emerald ore.type run function oregen:blocks/set_emerald
execute if score $type ore.generator = $lapis ore.type run function oregen:blocks/set_lapis
execute if score $type ore.generator = $obsidian ore.type run function oregen:blocks/set_obsidian
execute if score $type ore.generator = $cobble ore.type run function oregen:blocks/fill_cobble
execute if score $type ore.generator = $quartz ore.type run function oregen:blocks/set_quartz
execute if score $type ore.generator = $clay ore.type run function oregen:blocks/fill_clay