execute store result score TEMP TEMP run data get entity @s Pos[0]
function jam:util/align_value
execute store result entity @s Pos[0] double 1 run scoreboard players get TEMP TEMP

execute store result score TEMP TEMP run data get entity @s Pos[2]
function jam:util/align_value
execute store result entity @s Pos[2] double 1 run scoreboard players get TEMP TEMP
