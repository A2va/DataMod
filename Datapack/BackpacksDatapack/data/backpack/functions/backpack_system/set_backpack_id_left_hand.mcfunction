#Add 1 point to the ID scoreboard and saves the actual scoreboard amount on a tag inside the Backpack.
scoreboard players add #Max_ID_Value Chests_ID 1
execute store result entity @s Inventory[{Slot:-106b}].tag.backpack_tags.ID int 1 run scoreboard players get #Max_ID_Value Chests_ID

#Summon Armor Stand
function backpack:backpack_system/summon_backpack_inventory