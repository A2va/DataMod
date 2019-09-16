function jam:gen/move/find_ground

execute at @s if score @s biome matches 1 run setblock ~ ~ ~ rail[shape=east_west]
execute at @s if score @s biome matches 2 run setblock ~ ~ ~ magma_block
execute at @s if score @s biome matches 3 run setblock ~ ~ ~ rail
execute at @s if score @s biome matches 4 run setblock ~ ~ ~ snow
execute at @s if score @s biome matches 5 run setblock ~ ~ ~ melon
