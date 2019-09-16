function jam:gen/move/center

execute as @s run function jam:rand/next
scoreboard players operation TEMP TEMP = @s R
scoreboard players operation TEMP TEMP %= 3 CONST
execute at @s if score TEMP TEMP matches 0 run function jam:gen/decorate/sphere1
execute at @s if score TEMP TEMP matches 1 run function jam:gen/decorate/sphere2
execute at @s if score TEMP TEMP matches 2 run function jam:gen/decorate/sphere3

execute if score @s biome matches 1 at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 cobblestone replace gray_wool

execute if score @s biome matches 2 at @s positioned ~ ~3 ~ run function jam:marker/temp
execute if score @s biome matches 2 at @s run scoreboard players set Y TEMP 0
execute if score @s biome matches 2 as @e[tag=temp] at @s run function jam:gen/decorate/layers
execute if score @s biome matches 2 at @s run kill @e[tag=temp]

execute if score @s biome matches 3 at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 oak_wood replace gray_wool
execute if score @s biome matches 4 at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 packed_ice replace gray_wool
execute if score @s biome matches 5 at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 mossy_cobblestone replace gray_wool
