#######
# Compiled from data/tpcables/functions/place.mcscript
# to data/tpcables/functions/mcscript/raycast1.mcfunction
#
# Generated by Minecraft Script for 1.13
######
particle flame ~ ~ ~
scoreboard players add raycast1 mcscript_raycast 1
execute positioned ^ ^ ^1 unless block ~ ~ ~ air run tag @s add mcscriptStop
execute positioned ^ ^ ^1 if entity @s[tag=!mcscriptStop] if block ~ ~ ~ air if score raycast1 mcscript_raycast matches ..5 run function tpcables:mcscript/raycast1
execute if score raycast1 mcscript_raycast matches ..5 if entity @s[tag=mcscriptStop] positioned ^ ^ ^1 run execute if block ^ ^ ^-0.8 air run say hey
execute if score raycast1 mcscript_raycast matches ..5 if entity @s[tag=mcscriptStop] positioned ^ ^ ^1 run execute if block ^ ^ ^-0.8 air run setblock ^ ^ ^-0.8 stone
tag @s[tag=mcscriptStop] remove mcscriptStop
