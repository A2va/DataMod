#Removes the tag
tag @s remove ebackpack_crafting_on

#Removes 1 of every ingredients
scoreboard players operation @s ESlot0 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get @s ESlot0

scoreboard players operation @s ESlot1 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get @s ESlot1

scoreboard players operation @s ESlot2 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get @s ESlot2

scoreboard players operation @s ESlot3 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:9b}].Count byte 1 run scoreboard players get @s ESlot3

scoreboard players operation @s ESlot4 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get @s ESlot4

scoreboard players operation @s ESlot5 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get @s ESlot5

scoreboard players operation @s ESlot6 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:18b}].Count byte 1 run scoreboard players get @s ESlot6

scoreboard players operation @s ESlot7 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get @s ESlot7

scoreboard players operation @s ESlot8 -= - Operation
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get @s ESlot8