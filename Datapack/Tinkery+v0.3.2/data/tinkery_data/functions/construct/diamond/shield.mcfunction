#Set temporary output
scoreboard players set #tinkertest t_output 1
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:4b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:5b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:13b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:14b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:22b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
execute at @s if score #tinkertest t_output matches 1 unless data block ~ ~0.6 ~ Items[{Slot:23b,id:"minecraft:diamond"}] run scoreboard players set #tinkertest t_output 0
#title @p actionbar {"score":{"name":"#tinkertest","objective":"t_output"}}

execute at @s if score #tinkertest t_output matches 1 run data modify block ~ ~0.6 ~ Items append value {Slot:16b,Count:1b,id:"minecraft:shield",tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"mainhand",Amount:4,Operation:0,UUIDMost:57376,UUIDLeast:138033},{AttributeName:"generic.armor",Name:"generic.armor",Slot:"offhand",Amount:4,Operation:0,UUIDMost:88328,UUIDLeast:126291},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Slot:"offhand",Amount:1,Operation:0,UUIDMost:81962,UUIDLeast:136083},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Slot:"mainhand",Amount:1,Operation:0,UUIDMost:53305,UUIDLeast:170845},{AttributeName:"tinkery.maxDurability",Name:"Max Durability",Slot:"mainhand",Amount:1536,Operation:0,UUIDMost:36630,UUIDLeast:156724},{AttributeName:"tinkery.durability",Name:"Durability",Slot:"mainhand",Amount:1536,Operation:0,UUIDMost:36630,UUIDLeast:156724}],Tinkery:{Material:"diamond",Type:"shield",Addons:[],itemdur:334},BlockEntityTag:{Base:3},display:{Lore:['{"text":"Tinker\'s Enabled","color":"green"}'],Name:'{"text":"Diamond Shield","italic":false}'}}}

execute as @s if score #tinkertest t_output matches 1 run scoreboard players set @s t_output 1