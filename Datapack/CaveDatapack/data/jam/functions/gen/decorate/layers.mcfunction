
execute store result score TEMP TEMP run data get entity @s Pos[1]
scoreboard players operation TEMP TEMP %= 7 CONST
execute if score TEMP TEMP matches 0 run fill ~-3 ~ ~-3 ~3 ~ ~3 white_terracotta replace gray_wool
execute if score TEMP TEMP matches 1 run fill ~-3 ~ ~-3 ~3 ~ ~3 yellow_terracotta replace gray_wool
execute if score TEMP TEMP matches 2 run fill ~-3 ~ ~-3 ~3 ~ ~3 black_terracotta replace gray_wool
execute if score TEMP TEMP matches 3 run fill ~-3 ~ ~-3 ~3 ~ ~3 red_terracotta replace gray_wool
execute if score TEMP TEMP matches 4 run fill ~-3 ~ ~-3 ~3 ~ ~3 black_terracotta replace gray_wool
execute if score TEMP TEMP matches 5 run fill ~-3 ~ ~-3 ~3 ~ ~3 orange_terracotta replace gray_wool
execute if score TEMP TEMP matches 6 run fill ~-3 ~ ~-3 ~3 ~ ~3 blue_terracotta replace gray_wool


tp @s ~ ~-1 ~
scoreboard players add Y TEMP 1
execute if score Y TEMP matches ..7 at @s run function jam:gen/decorate/layers