function jam:rand/next
scoreboard players operation @s R %= 9 CONST

execute if score @s R matches 0 run tp ~-1 ~-2 ~
execute if score @s R matches 0 at @s run fill ~ ~ ~ ~ ~2 ~ minecraft:green_wool

execute if score @s R matches 1 run tp ~-1 ~-3 ~1
execute if score @s R matches 1 at @s run fill ~ ~ ~ ~ ~3 ~ minecraft:green_wool

execute if score @s R matches 2 run tp ~ ~-4 ~-1
execute if score @s R matches 2 at @s run fill ~ ~ ~ ~ ~4 ~ minecraft:green_wool

execute if score @s R matches 3 run tp ~-1 ~-2 ~-1
execute if score @s R matches 3 at @s run fill ~ ~ ~ ~ ~2 ~ minecraft:green_wool

execute if score @s R matches 4 run tp ~1 ~-3 ~
execute if score @s R matches 4 at @s run fill ~ ~ ~ ~ ~3 ~ minecraft:green_wool

execute if score @s R matches 8 run tp ~1 ~-1 ~1
execute if score @s R matches 8 at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:green_wool

execute if score @s biome matches 1 at @s run fill ~-1 ~ ~-1 ~1 ~4 ~1 stripped_dark_oak_log replace green_wool
execute if score @s biome matches 2 at @s run fill ~-1 ~ ~-1 ~1 ~4 ~1 stone replace green_wool
execute if score @s biome matches 3 at @s run fill ~-1 ~ ~-1 ~1 ~4 ~1 stripped_spruce_log replace green_wool
execute if score @s biome matches 4 at @s run fill ~-1 ~ ~-1 ~1 ~4 ~1 packed_ice replace green_wool
execute if score @s biome matches 5 at @s run fill ~-1 ~ ~-1 ~1 ~4 ~1 stripped_oak_log replace green_wool

execute if score @s R matches 5..7 run kill @s

function jam:rand/next
execute if score @s R matches ..100 at @s positioned ~ ~-1 ~ run function jam:marker/root
execute if score @s R matches ..100 at @s positioned ~ ~-1 ~ run scoreboard players operation @e[tag=to_init] biome = @s biome

tag @e remove to_init


#This may not work, but the entities should die at some point
execute positioned ~ 0 ~ if entity @s[dy=12] run kill @s
