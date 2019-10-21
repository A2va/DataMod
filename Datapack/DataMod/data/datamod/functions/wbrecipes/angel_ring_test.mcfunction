scoreboard players set #system WorkbenchCount 1
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:0b,id:"minecraft:phantom_membrane"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:1b,id:"minecraft:phantom_membrane"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:2b,id:"minecraft:phantom_membrane"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:3b,id:"minecraft:phantom_membrane"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:4b,id:"minecraft:elytra"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:5b,id:"minecraft:phantom_membrane"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:6b,id:"minecraft:phantom_membrane"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:7b,id:"minecraft:diamond"}]} run scoreboard players set #system WorkbenchCount 0
execute at @s if score #system WorkbenchCount matches 1 run execute unless data block ~ ~0.5 ~ {Items:[{Slot:8b,id:"minecraft:phantom_membrane"}]} run scoreboard players set #system WorkbenchCount 0

#craft
execute at @s if score #system WorkbenchCount matches 1 run function datamod:wbrecipes/angel_ring_craft