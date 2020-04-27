# OreReGen
A DataPack to Regenerate ores in a minecraft world, written in MCFunction

Generates shaped veins of customizable sizes, specific to different biomes. Coal generates in large flat sheets, Diamonds in small cluters, Iron in large veins, always with granite, and more! Different biomes have not only different amounts of ore, but also have unique vein types.

Requires DataPack Utilities, available at https://github.com/ImCoolYeah105/Datapack-Utilities/releases

Customization
Each ore has a generator type, in the Generators folder, which sets teh following required variables

#the random function used to determine the range of heights
$rng_y ore.move 16

#minimum y value a vein will start generating at
$min_y ore.move 4

#min and max rotation away a horizontal line. zero is a flat vein, 90 is a vertical vein, max_ry should NEVER be zero, as this breaks the math
$min_ry ore.move 0
$max_ry ore.move 1

#Vein shape variables, determines size of individual veins. Vein sizes should not generally be set larger than 16 blocks in length, as this has the potential to result in the vein generating into un-prepared chunks. Setting it larger than 32 will break the vanilla minecraft generator, resulting in lag an an eventual crash.
$max_length ore.vein 2
$max_height ore.vein 2
$max_width ore.vein 2

#number of blocks of ores to attempt to generate per chunk, if there are fewer blocks than required for a vein, the has blocksRemaining/blocksPerVein chance to generate.
$per_chunk ore.generator 4

#vein density percentage, at 50 half the blocks in the shape will be ores, at 100 all, at 0 none
$density ore.generator 50

#deeper veins have a slightly higher density, shallower veins are less dense on a percentage basis (0 to 100). This controls how strong that effect is. Set to a negative number to invert the effect
$density_factor ore.generator 100

#The type of ore, this must have a corresponding scorebard initialized in init_generators.mcfunction, and a set_block function called in the blocks/switch_type.mcfunction
$type ore.generator = $diamond ore.type

The set_block function control which blocks generate in a given vein. For veins which generate different types of blocks in different biomes, the logic to do so happens in this class.