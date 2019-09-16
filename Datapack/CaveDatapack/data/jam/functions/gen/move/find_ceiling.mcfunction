execute if block ~ ~1 ~ #air run tp @s ~ ~1 ~
execute store result score TEMP TEMP run data get entity @s Pos[1]
execute if score TEMP TEMP matches 60.. run kill @s
execute at @s if block ~ ~1 ~ #air run function jam:gen/move/find_ceiling
