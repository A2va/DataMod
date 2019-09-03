#######
# Compiled from /tpsolar/functions/main.mcscript
# to .//tpsolar/functions/main.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute as @e[tag=tpSolar] at @s run scoreboard players add @s tpTimer 1
execute as @e[tag=tpSolar] at @s if entity @p[distance=..4] if block ~ ~ ~ air run tag @s remove tpCableConnector
execute as @e[tag=tpSolar] at @s if entity @p[distance=..4] if block ~ ~ ~ air positioned ~ ~-1 ~ as @e[tag=tpCable,distance=..0.8] at @s run function tpcables:update
execute as @e[tag=tpSolar] at @s if entity @p[distance=..4] if block ~ ~ ~ air run summon minecraft:item ~ ~0.1 ~ {Item:{id:"minecraft:firework_rocket",Count:1,tag:{CustomModelData:3390005,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Solar Panel\",\"italic\":false,\"color\":\"green\"}"},Fireworks:{}}}}
execute as @e[tag=tpSolar] at @s if entity @p[distance=..4] if block ~ ~ ~ air run kill @e[type=item,distance=..0.8,nbt={Item:{id:"minecraft:daylight_detector"}}]
execute as @e[tag=tpSolar] at @s if entity @p[distance=..4] if block ~ ~ ~ air run kill @s
execute as @e[tag=tpSolar] at @s if score @s tpTimer matches 200.. run function tpsolar:solarmain
execute as @e[tag=tpSolar] at @s if score @s tpTimer matches 200.. run scoreboard players reset @s tpTimer