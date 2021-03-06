execute if score @s t_s_debug matches 10 run scoreboard players operation @s t_s_debug = @s t_smeltery_on
#data remove block ~ ~0.5 ~ Items[{id:"minecraft:barrier"}]
#data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:0b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
#data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:1b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
#data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:2b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
#data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:3b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
#data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:4b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
#data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:5b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
#data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:6b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
#data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:7b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
#data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:8b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}

execute unless score @s t_s_fuel matches 1.. run data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:9b,Count:1b,tag:{display:{Name:"{\"text\":\"Click to clear fuel time.\",\"italic\":false}"},MenuItem:1,CustomModelData:117}}
execute unless score @s t_s_fuel matches 1.. run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1003
execute if score @s t_s_fuel matches 1.. run data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:9b,Count:1b,tag:{display:{Name:"{\"text\":\"Click to clear fuel time.\",\"italic\":false}"},MenuItem:1,CustomModelData:118}}
execute if score @s t_s_fuel matches 1.. run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1004
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:10b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:11b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:12b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:13b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:14b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:15b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:16b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:17b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}

#data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:18b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:19b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:20b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:21b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
execute if score @s t_smeltery_on matches 0 run data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:22b,Count:1b,tag:{display:{Name:"{\"text\":\"Invalid Smeltery blocks\",\"italic\":false}"},MenuItem:1,CustomModelData:111}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:23b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:24b,Count:1b,tag:{display:{Name:"{\"text\":\"Previous Output\",\"italic\":false}"},MenuItem:1,CustomModelData:103}}
#data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:25b,Count:1b,tag:{display:{Name:"{\"text\":\"\"}"},MenuItem:1,CustomModelData:100}}
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:26b,Count:1b,tag:{display:{Name:"{\"text\":\"Next Output\",\"italic\":false}"},MenuItem:1,CustomModelData:104}}