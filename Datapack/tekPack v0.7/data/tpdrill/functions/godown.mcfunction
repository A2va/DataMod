#######
# Compiled from .//functions/godown.mcscript
# to .//functions/godown.mcfunction
#
# Generated by Minecraft Script for 1.13
######
tag @s remove tpDrillDigDown
tag @s remove tpDrillDigEnd
execute positioned ~ ~-1 ~ unless entity @e[tag=tpDrillPipe,distance=..0.8] if block ~ ~ ~ air run tag @s add tpDrillDigDown
execute unless block ~ ~-1 ~ air run tag @s add tpDrillDigEnd

execute if entity @s[tag=tpDrillDigDown] run tag @e[tag=tpDrillPipeEnd,distance=..8] remove tpDrillPipeEnd
execute if entity @s[tag=tpDrillDigDown] run summon armor_stand ~ ~-1 ~ {Tags: [tpDrillPipe,tpDrillPipeEnd],Invisible:1,NoGravity:1,Small:1b,Invulnerable:1}
execute if entity @s[tag=tpDrillDigDown] positioned ~ ~-1 ~ run replaceitem entity @e[tag=tpDrillPipe] armor.head lime_dye{CustomModelData:3390002}
execute unless entity @s[tag=tpDrillDigDown] if entity @s[tag=!tpDrillDigEnd] positioned ~ ~-1 ~ run function tpdrill:godown