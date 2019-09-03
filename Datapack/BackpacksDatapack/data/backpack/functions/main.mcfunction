#Installation Message
execute unless score #Timer Message_Timer matches 21.. run scoreboard players add #Timer Message_Timer 1
execute if score #Timer Message_Timer matches 20 run tellraw @a ["",{"text":"Backpacks Datapack Successfully Installed!","color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"§a[file/§bBackpacks §bDatapack §6v0.1§a]"}]}}},{"text":"\n\nDatapack created by :","color":"gold"},{"text":"\n-","color":"gold"},{"text":"Javier107","color":"green"},{"text":"\n-","color":"gold"},{"text":"TheNuclearNexus","color":"green"},{"text":"\n\nBeta Testers :","color":"gold"},{"text":"\n-","color":"gold"},{"text":"Eclipsion13","color":"green"},{"text":"\n-","color":"gold"},{"text":"Stevertus","color":"green"},{"text":"\n-","color":"gold"},{"text":"Itayfeder","color":"green"},{"text":"\n\nTranslators :\n","color":"gold"},{"text":"Click here for see Translators.","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger translators set 1"}},{"text":"\n\nDatapack Version : ","color":"gold"},{"text":"0.1","color":"green"}]

#Functions
function backpack:trigger_translators
function backpack:backpack_system/detect_backpack_without_id
function backpack:backpack_system/get_player_backpack_id
function backpack:backpack_system/teleport_backpack
function backpack:crafting/detect_ingredients
function backpack:crafting/give_item
function backpack:backpack_table/detect_block_changes
function backpack:ender_backpack_system/teleport_backpack

#Backpack Table
execute as @a[scores={place_bt=1..}] at @s run function backpack:backpack_table/detect_backpack_table_location_start
scoreboard players reset @a[scores={place_bt=1..}] place_bt
execute at @e[tag=Backpack_Table] run function backpack:backpack_table/fill_table_slots
execute as @e[tag=Backpack_Table] at @s if entity @a[distance=..9] run function backpack:custom_crafting_recipes/main

#Clear GUI Items
clear @a[nbt={Inventory:[{tag:{item_tags:["gui"]}}]}] wooden_sword{item_tags:["gui"]}
kill @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",tag:{item_tags:["gui"]}}}]

#Players ID
scoreboard players add @a Players_ID 0
execute as @a[scores={Players_ID=0}] run function backpack:ender_backpack_system/configurations_setup

#Backpack
execute at @e[type=chest_minecart,tag=backpack_inventory] run stopsound @a[distance=..9] * minecraft:entity.minecart.riding
execute at @e[type=chest_minecart,tag=ender_backpack] run stopsound @a[distance=..9] * minecraft:entity.minecart.riding