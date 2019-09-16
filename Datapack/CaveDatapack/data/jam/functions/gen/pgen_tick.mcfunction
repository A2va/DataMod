
#tellraw @a ["pgen_tick : ", {"score":{"name":"@s","objective":"tick"}}]

function jam:gen/erate
execute anchored eyes facing entity @e[tag=temp] feet run teleport @s ~ ~ ~ ~ ~

execute unless entity @e[tag=temp,limit=1] run kill @s
#execute unless entity @e[tag=temp,limit=1] run say dead end
execute at @e[tag=temp,limit=1] run teleport @s ~ ~ ~
kill @e[tag=temp]

scoreboard players add @s tick 1

execute at @s if score @s gtype matches 1 run function jam:gen/decorate
execute at @s if score @s gtype matches 2 run function jam:gen/decorate/fill

scoreboard players operation TEMP TEMP = @s tick
scoreboard players operation TEMP TEMP %= CONST 17

#execute if score TEMP TEMP matches 7 at @s run function jam:gen/move/kill_stuck
execute if score TEMP TEMP matches 10 at @s run function jam:gen/move/kill_oob
execute if score TEMP TEMP matches 10 at @s run function jam:gen/setblock_marker2

execute if score TEMP TEMP matches 3 at @s if entity @s[tag=filler] at @s run function jam:gen/decorate/filler

execute if score @s tick matches 500.. run kill @s

execute store result score TEMP TEMP run data get entity @s Pos[1]
execute if score TEMP TEMP matches 60.. run kill @s