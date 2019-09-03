#Summon minecart
summon minecraft:chest_minecart ~ ~-0.675 ~ {PersistenceRequired:1,Invulnerable:1b,Tags:["ebackpack_chest"],CustomName:"{\"translate\":\"item.backpacks.ender_backpack\"}"}

#Sets ID of minecart and Inventory
scoreboard players add @e[tag=ebackpack_chest] en_minecart 0
execute as @e[tag=ender_backpack] if score @p Players_ID = @s EBChests_ID at @e[scores={en_minecart=0},limit=1,sort=nearest] run data modify entity @e[distance=..0.75,type=chest_minecart,tag=ebackpack_chest,limit=1,sort=nearest] Items set from entity @s HandItems[0].tag.Items
execute as @e[scores={en_minecart=0},limit=1,sort=nearest] run scoreboard players operation @s en_minecart = @p Players_ID