execute at @s run setblock ~ ~0.6 ~ minecraft:barrel[facing=up]{CustomName:"{\"text\":\"Blueprint Maker\"}"}
execute at @s run summon armor_stand ~0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},ArmorItems:[{id:"minecraft:paper",Count:1b},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:1002}}],Tags:["Block","t_Blueprinter"]}

scoreboard players set @p[scores={LapisBlockPlaced=1..}] LapisBlockPlaced 9000
kill @s