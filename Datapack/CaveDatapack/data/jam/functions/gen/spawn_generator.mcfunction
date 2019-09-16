

function jam:rand/next
scoreboard players operation @s R %= 2 CONST
execute if score @s R matches 0 run scoreboard players set Y TEMP 12
execute if score @s R matches 0 run execute positioned ~ 12 ~ run function jam:gen/find_air
execute if score @s R matches 1 run scoreboard players set Y TEMP 50
execute if score @s R matches 1 run execute positioned ~ 50 ~ run function jam:gen/find_air2
#tellraw @a ["Found cave at level : ", {"nbt":"Pos[0]","entity":"@e[tag=temp,limit=1]"}, "  ", {"score":{"name":"Y","objective":"TEMP"}},"  " ,{"nbt":"Pos[2]","entity":"@e[tag=temp,limit=1]"}]
function jam:marker/pgen
function jam:util/align

execute at @s if block ~2 0 ~2 red_wool run kill @e[tag=to_init]
execute at @s if block ~3 0 ~3 red_wool run kill @e[tag=to_init]
#execute at @s if block ~2 0 ~2 red_wool run say kill by align

execute as @e[tag=to_init] at @s store result entity @s Pos[1] double 1 run scoreboard players get Y TEMP

#execute if entity @e[tag=to_init] run tellraw @a ["new  coord : ", {"nbt":"Pos[0]","entity":"@e[tag=to_init,limit=1]"}, "  ", {"nbt":"Pos[1]","entity":"@e[tag=to_init,limit=1]"},"  " ,{"nbt":"Pos[2]","entity":"@e[tag=temp,limit=1]"}]


execute if entity @e[tag=to_init] at @s run function jam:gen/setblock_marker2
execute as @e[tag=to_init] at @s run function jam:gen/init_generator
