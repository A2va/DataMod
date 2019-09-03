#Add and Remove Tags
tag @a[tag=holding_backpack] remove holding_backpack
tag @a[scores={SelectedBackpack=1..}] add holding_backpack
tag @a[tag=found_chest] remove found_chest
tag @e[tag=found_player] remove found_player

#Detect if player Holding backpack has already a chest minecart, and if it don't has one it will summon one
execute at @a[tag=holding_backpack] as @e[tag=backpack_chest] if score @p SelectedBackpack = @s minecart run tag @p add found_chest
execute at @a[tag=!found_chest,tag=holding_backpack] run function backpack:backpack_system/summon_minecart

#Teleport inventory to owner
execute at @a[tag=holding_backpack] as @e[tag=backpack_chest] if score @p SelectedBackpack = @s minecart run tp @s ~ ~-0.675 ~

#Detect if player closed the backpack
execute at @a[tag=holding_backpack] as @e[tag=backpack_chest] if score @p SelectedBackpack = @s minecart run tag @s add found_player
execute at @e[tag=backpack_chest,tag=!found_player] as @e[tag=backpack_inventory] if score @e[distance=..0.75,type=chest_minecart,tag=backpack_chest,limit=1,sort=nearest] minecart = @s Chests_ID run function backpack:backpack_system/kill_minecart

#Fix sound bug
execute at @a[tag=holding_backpack] run stopsound @a[distance=..9] * minecraft:entity.minecart.riding