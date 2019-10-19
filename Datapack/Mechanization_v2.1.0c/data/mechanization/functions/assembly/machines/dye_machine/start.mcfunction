
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[1].Count
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[7].Count



execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:white_dye"}]} run function mechanization:assembly/machines/dye_machine/white
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:orange_dye"}]} run function mechanization:assembly/machines/dye_machine/orange
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:magenta_dye"}]} run function mechanization:assembly/machines/dye_machine/magenta
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:light_blue_dye"}]} run function mechanization:assembly/machines/dye_machine/light_blue
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:yellow_dye"}]} run function mechanization:assembly/machines/dye_machine/yellow
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:lime_dye"}]} run function mechanization:assembly/machines/dye_machine/lime
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:pink_dye"}]} run function mechanization:assembly/machines/dye_machine/pink
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:gray_dye"}]} run function mechanization:assembly/machines/dye_machine/gray
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:light_gray_dye"}]} run function mechanization:assembly/machines/dye_machine/light_gray
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:cyan_dye"}]} run function mechanization:assembly/machines/dye_machine/cyan
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:purple_dye"}]} run function mechanization:assembly/machines/dye_machine/purple
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:blue_dye"}]} run function mechanization:assembly/machines/dye_machine/blue
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:brown_dye"}]} run function mechanization:assembly/machines/dye_machine/brown
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:green_dye"}]} run function mechanization:assembly/machines/dye_machine/green
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:red_dye"}]} run function mechanization:assembly/machines/dye_machine/red
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:black_dye"}]} run function mechanization:assembly/machines/dye_machine/black



scoreboard players remove temp_0 mech_data 1
scoreboard players remove temp_1 mech_data 8
execute if entity @e[type=item,tag=mech_comp_new] store result block ~ ~ ~ Items[7].Count byte 1 run scoreboard players get temp_1 mech_data
execute if entity @e[type=item,tag=mech_comp_new] store result block ~ ~ ~ Items[1].Count byte 1 run scoreboard players get temp_0 mech_data

execute if entity @s[nbt={Rotation:[0.01f,0.0f]}] run tp @e[type=item,tag=mech_comp_new] ~ ~ ~1
execute if entity @s[nbt={Rotation:[90f,0.0f]}] run tp @e[type=item,tag=mech_comp_new] ~-1 ~ ~
execute if entity @s[nbt={Rotation:[180f,0.0f]}] run tp @e[type=item,tag=mech_comp_new] ~ ~ ~-1
execute if entity @s[nbt={Rotation:[270f,0.0f]}] run tp @e[type=item,tag=mech_comp_new] ~1 ~ ~

execute store result score temp_0 mech_data if entity @e[type=item,tag=mech_comp_new]
scoreboard players set temp_1 mech_data 16
scoreboard players operation temp_0 mech_data *= temp_1 mech_data
scoreboard players operation @s mech_power -= temp_0 mech_data
tag @e[type=item,tag=mech_comp_new] remove mech_comp_new
