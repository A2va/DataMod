execute at @s run setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:"{\"text\":\"Lapis Workbench\",\"color\":\"dark_blue\"}"}
execute at @s run summon armor_stand ~0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:100}}],Tags:["Workbench","Block"]}

scoreboard players set @p[scores={LapisBlockPlaced=1..}] LapisBlockPlaced 9000

kill @s