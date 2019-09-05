#######
# Compiled from .//functions/furnmain.mcscript
# to .//functions/furnmain.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if score #t tpTimer matches 2.. run tag @s[tag=tpFirstPower] remove tpFirstPower
execute if score #t tpTimer matches 2.. if score @e[tag=tpCable,distance=..1.1,limit=1] tpE matches 1.. if score @s tpE matches ..9 run tag @s add tpAdd
execute if score #t tpTimer matches 2.. if entity @s[scores={tpE=2..},tag=!tpPowered,tag=!tpFurnBurning] if block ~ ~ ~ furnace{Items:[{id:"minecraft:iron_pickaxe",tag:{CustomModelData:3390001}}]} run tag @s add tpFurnReady

execute unless entity @a[distance=..4,nbt={Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3390001}}]}] unless block ~ ~ ~ furnace{Items:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3390001}}]} if entity @s[tag=tpFurnBurning] run replaceitem block ~ ~ ~ container.1 minecraft:iron_pickaxe{CustomModelData:3390001,HideFlags:6,display:{Name:"{\"text\":\"§aNo Energy!\"}"}}
execute unless entity @a[distance=..4,nbt={Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3390001}}]}] unless block ~ ~ ~ furnace{Items:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3390001}}]} if entity @s[tag=tpFurnBurning] run tag @s remove tpFurnBurning

execute unless block ~ ~ ~ furnace{Items:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3390001}}]} if entity @s[tag=tpFurnBurning] run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3390001}}}]
execute unless block ~ ~ ~ furnace{Items:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3390001}}]} if entity @s[tag=tpFurnBurning] run clear @a[distance=..4] minecraft:wooden_pickaxe{CustomModelData:3390001} 1
execute unless block ~ ~ ~ furnace{Items:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3390001}}]} if entity @s[tag=tpFurnBurning] run replaceitem block ~ ~ ~ container.1 minecraft:wooden_pickaxe{CustomModelData:3390001,HideFlags:6,display:{Name:"{\"text\":\"§aHas Energy!\"}"}}

execute if entity @a[distance=..4,nbt={Inventory:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:3390001}}]}] run clear @a[distance=..4] minecraft:wooden_pickaxe{CustomModelData:3390001} 1

execute unless block ~ ~ ~ furnace{Items:[{id:"minecraft:iron_pickaxe",tag:{CustomModelData:3390001}}]} if entity @s[tag=!tpFurnBurning] run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:iron_pickaxe",tag:{CustomModelData:3390001}}}]
execute unless block ~ ~ ~ furnace{Items:[{id:"minecraft:iron_pickaxe",tag:{CustomModelData:3390001}}]} if entity @s[tag=!tpFurnBurning] run clear @a[distance=..4] minecraft:iron_pickaxe{CustomModelData:3390001} 1
execute unless block ~ ~ ~ furnace{Items:[{id:"minecraft:iron_pickaxe",tag:{CustomModelData:3390001}}]} if entity @s[tag=!tpFurnBurning] run replaceitem block ~ ~ ~ container.1 minecraft:iron_pickaxe{CustomModelData:3390001,HideFlags:6,display:{Name:"{\"text\":\"§aNo Energy!\"}"}}

execute if entity @s[tag=tpAdd] run scoreboard players add @s tpE 1
execute if entity @s[tag=tpAdd] run particle minecraft:dust 0.2 1 0.2 0.8 ~ ~ ~ 0 0.1 0 10 10
execute if entity @s[tag=tpAdd] run scoreboard players reset @e[tag=tpCable,distance=..1.1,limit=1,scores={tpE=1}] tpE
execute if entity @s[tag=tpAdd] run scoreboard players remove @e[tag=tpCable,distance=..1.1,limit=1,scores={tpE=2..}] tpE 1
execute if entity @s[tag=tpAdd] run tag @s remove tpAdd

execute if entity @s[tag=tpFurnReady] run replaceitem block ~ ~ ~ container.1 minecraft:wooden_pickaxe{CustomModelData:3390001,HideFlags:6,display:{Name:"{\"text\":\"§aHas Energy!\"}"}}
execute if entity @s[tag=tpFurnReady] run scoreboard players remove @s tpE 2
execute if entity @s[tag=tpFurnReady] run tag @s add tpFurnBurning
execute if entity @s[tag=tpFurnReady] run tag @s remove tpFurnReady