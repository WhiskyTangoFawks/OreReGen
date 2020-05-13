#scoreboard players set $test ore.generator 1

fill ~-24 1 ~-24 ~24 8 ~24 stone replace #oregen:test_clear
fill ~-24 9 ~-24 ~24 16 ~24 stone replace #oregen:test_clear
fill ~-24 17 ~-24 ~24 24 ~24 stone replace #oregen:test_clear
fill ~-24 25 ~-24 ~24 32 ~24 stone replace #oregen:test_clear
fill ~-24 33 ~-24 ~24 40 ~24 stone replace #oregen:test_clear
fill ~-24 41 ~-24 ~24 48 ~24 stone replace #oregen:test_clear
fill ~-24 49 ~-24 ~24 56 ~24 stone replace #oregen:test_clear
fill ~-24 57 ~-24 ~24 64 ~24 stone replace #oregen:test_clear

#execute rotated 0 0 positioned ~-8 0 ~-8 run function oregen:generate_chunk
execute rotated 0 0 run function oregen:get_chunk_pos_x

#testing, to remove the world once generation is done

fill ~-24 2 ~-24 ~24 8 ~24 air replace stone
fill ~-24 9 ~-24 ~24 16 ~24 air replace stone
fill ~-24 17 ~-24 ~24 24 ~24 air replace stone
fill ~-24 25 ~-24 ~24 32 ~24 air replace stone
fill ~-24 33 ~-24 ~24 40 ~24 air replace stone
fill ~-24 41 ~-24 ~24 48 ~24 air replace stone
fill ~-24 49 ~-24 ~24 56 ~24 air replace stone
fill ~-24 57 ~-24 ~24 64 ~24 air replace stone