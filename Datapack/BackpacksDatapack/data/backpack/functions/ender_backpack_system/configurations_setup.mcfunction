scoreboard players add #Max_ID_Value Players_ID 1
summon minecraft:armor_stand ~ 1 ~ {ShowArms:1b,HandItems:[{id:"minecraft:paper",Count:1b,tag:{Items:[{}]}},{}],Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,PersistenceRequired:1,Tags:["ender_backpack"],CustomName:"{\"translate\":\"item.backpacks.ender_backpack\"}"}
execute as @e[tag=ender_backpack] unless score @s EBChests_ID matches 1.. run scoreboard players operation @s EBChests_ID = #Max_ID_Value Players_ID
scoreboard players operation @s Players_ID = #Max_ID_Value Players_ID