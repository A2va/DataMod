execute if block ~ ~-1 ~ #air run tp @s ~ ~-1 ~
execute store result score TEMP TEMP run data get entity @s Pos[1]
execute if score TEMP TEMP matches ..12 run kill @s
execute if block ~ ~-1 ~ #air at @s run function jam:gen/move/find_ground
