#######
# Compiled from .//functions/create.mcscript
# to .//functions/create.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute align xyz run setblock ~ ~ ~ quartz_stairs[half=top,shape=inner_left]
execute if entity @s[y_rotation=-45..44.99] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [tpBreaker,tpNew,tpCableConnector,tpCableNoConnectN],Invisible:1,Marker:1,NoGravity:1}

execute if entity @s[y_rotation=45..134.99] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [tpBreaker,tpNew,tpCableConnector,tpCableNoConnectO],Invisible:1,Marker:1,NoGravity:1,Rotation:[90f,0f]}

execute if entity @s[y_rotation=135..-135.01] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [tpBreaker,tpNew,tpCableConnector,tpCableNoConnectS],Invisible:1,Marker:1,NoGravity:1,Rotation:[180f,0f]}

execute if entity @s[y_rotation=-135..-45] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [tpBreaker,tpNew,tpCableConnector,tpCableNoConnectW],Invisible:1,Marker:1,NoGravity:1,Rotation:[-9f,0f]}

execute as @e[tag=tpBreaker,tag=tpNew] at @s run scoreboard players set @s tpE 0
execute as @e[tag=tpBreaker,tag=tpNew] at @s run tp @s ~ ~0.1 ~
execute as @e[tag=tpBreaker,tag=tpNew] at @s as @e[tag=tpCable,distance=..1.1] at @s run function tpcables:update
execute as @e[tag=tpBreaker,tag=tpNew] at @s run replaceitem entity @s armor.head minecraft:firework_rocket{CustomModelData:3390009}
execute as @e[tag=tpBreaker,tag=tpNew] at @s run tag @s remove tpNew