#Summon minecart
summon minecraft:chest_minecart ~ ~-0.675 ~ {PersistenceRequired:1,Invulnerable:1b,Tags:["backpack_chest"],CustomName:"{\"translate\":\"item.backpacks.backpack\"}"}

#Sets ID of minecart and Inventory
scoreboard players add @e[tag=backpack_chest] minecart 0
execute as @e[tag=backpack_inventory] if score @p SelectedBackpack = @s Chests_ID at @e[scores={minecart=0},limit=1,sort=nearest] run data modify entity @e[distance=..0.75,type=chest_minecart,tag=backpack_chest,limit=1,sort=nearest] Items set from entity @s HandItems[0].tag.Items
execute as @e[scores={minecart=0},limit=1,sort=nearest] run scoreboard players operation @s minecart = @p SelectedBackpack