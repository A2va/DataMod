#Removes the tag
tag @s remove backpack_crafting_on

#Removes 1 of every ingredients
scoreboard players operation @s Slot0 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get @s Slot0

scoreboard players operation @s Slot1 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get @s Slot1

scoreboard players operation @s Slot2 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get @s Slot2

scoreboard players operation @s Slot3 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:9b}].Count byte 1 run scoreboard players get @s Slot3

scoreboard players operation @s Slot4 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get @s Slot4

scoreboard players operation @s Slot5 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get @s Slot5

scoreboard players operation @s Slot6 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:18b}].Count byte 1 run scoreboard players get @s Slot6

scoreboard players operation @s Slot7 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get @s Slot7

scoreboard players operation @s Slot8 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get @s Slot8