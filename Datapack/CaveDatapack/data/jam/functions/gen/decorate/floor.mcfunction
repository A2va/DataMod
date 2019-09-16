function jam:gen/move/find_ground


#execute at @s run setblock ~ ~ ~ orange_wool

execute at @s if score @s biome matches 1 run setblock ~ ~ ~ cobweb
execute at @s if score @s biome matches 2 run setblock ~ ~ ~ cobweb
execute at @s if score @s biome matches 3 run setblock ~ ~ ~ cobweb
execute at @s if score @s biome matches 4 run setblock ~ ~ ~ ice
execute at @s if score @s biome matches 5 positioned ~ ~-1 ~ if block ~1 ~ ~ #cave_stone if block ~1 ~ ~ #cave_stone if block ~-1 ~ ~ #cave_stone if block ~ ~ ~1 #cave_stone if block ~ ~ ~-1 #cave_stone if block ~ ~-1 ~ #cave_stone run setblock ~ ~ ~ water

