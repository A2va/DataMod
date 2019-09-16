scoreboard players set @s tick 0

function jam:rand/next
scoreboard players operation @s freq = @s R
execute if score @s freq matches ..250 run scoreboard players add @s freq 250

function jam:rand/next
scoreboard players operation TEMP TEMP = @s R
scoreboard players operation TEMP TEMP += MIN_LIFE CONST
execute store result entity @s Age int 1 run scoreboard players get TEMP TEMP
function jam:util/rotate_randomly

function jam:util/get_biome
scoreboard players operation @s biome = BIOME_TYPE TEMP

execute unless score @s biome matches 1..5 run kill @s

function jam:rand/next

scoreboard players operation R TEMP = @s R
execute if score R TEMP matches ..600 run scoreboard players set @s gtype 1
execute if score R TEMP matches 601..850 run scoreboard players set @s gtype 2
execute if score R TEMP matches 500..700 at @s run tag @s add filler
execute if score R TEMP matches 851.. at @s run function jam:gen/structure


tag @s remove to_init
