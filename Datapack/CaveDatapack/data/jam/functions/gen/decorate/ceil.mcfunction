function jam:gen/move/find_ceiling
#execute at @s run setblock ~ ~ ~ yellow_wool


execute at @s if score @s biome matches 1 run setblock ~ ~ ~ andesite_wall
execute at @s if score @s biome matches 2 run setblock ~ ~ ~ smooth_sandstone
execute at @s if score @s biome matches 3 run setblock ~ ~ ~ oak_leaves[persistent=true]
execute at @s if score @s biome matches 4 run setblock ~ ~ ~ packed_ice

execute at @s if score @s biome matches 5 run setblock ~ ~ ~ vine[up=true,north=true,east=true,south=true]
execute at @s if score @s biome matches 5 run setblock ~ ~-1 ~ vine[north=true,east=true]
execute at @s if score @s biome matches 5 run setblock ~ ~-2 ~ vine[north=true]
