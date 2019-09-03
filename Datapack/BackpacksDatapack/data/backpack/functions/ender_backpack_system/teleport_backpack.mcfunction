#Add and Remove Tags
tag @a[tag=holding_ebackpack] remove holding_ebackpack
tag @a[nbt={OnGround:1b,SelectedItem:{tag:{item_tags:["ender_backpack"]}}},x_rotation=73.0..90.0] add holding_ebackpack
tag @a[nbt={OnGround:1b,Inventory:[{Slot:-106b,tag:{item_tags:["ender_backpack"]}}]},x_rotation=73.0..90.0] add holding_ebackpack
tag @a[tag=found_echest] remove found_echest
tag @e[tag=found_eplayer] remove found_eplayer
tag @a[scores={SelectedBackpack=1..},tag=holding_ebackpack] remove holding_ebackpack

#Detect if player Holding backpack has already a chest minecart, and if it don't has one it will summon one
execute at @a[tag=holding_ebackpack] as @e[tag=ebackpack_chest] if score @p Players_ID = @s en_minecart run tag @p add found_echest
execute at @a[tag=!found_echest,tag=holding_ebackpack] run function backpack:ender_backpack_system/summon_minecart

#Teleport inventory to owner
execute at @a[tag=holding_ebackpack] as @e[tag=ebackpack_chest] if score @p Players_ID = @s en_minecart run tp @s ~ ~-0.675 ~

#Detect if player closed the backpack
execute at @a[tag=holding_ebackpack] as @e[tag=ebackpack_chest] if score @p Players_ID = @s en_minecart run tag @s add found_eplayer
execute at @e[tag=ebackpack_chest,tag=!found_eplayer] as @e[tag=ender_backpack] if score @e[distance=..0.75,type=chest_minecart,tag=ebackpack_chest,limit=1,sort=nearest] en_minecart = @s EBChests_ID run function backpack:ender_backpack_system/kill_minecart

#Fix sound bug
execute at @a[tag=holding_ebackpack] run stopsound @a[distance=..9] * minecraft:entity.minecart.riding