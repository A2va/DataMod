function tinkery:rd
execute store result score #tinkery t_dum0 run data get entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"red_sand"}}].Amount
execute as @e[type=minecraft:item_frame,tag=t_v_current,limit=1] at @s if score #tinkery t_dum0 matches 720.. if block ~ ~-1 ~ minecraft:cauldron[level=3] unless entity @e[type=minecraft:item_frame,nbt={Facing:1b},distance=..0.7,limit=1,nbt={Item:{}}] positioned ~ ~-0.5 ~ run function tinkery_data:smeltery/outputs/red_sand/red_sandstone/spawn
execute store result entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"red_sand"}}].Amount int 1 run scoreboard players get #tinkery t_dum0
execute if score #tinkery t_dum0 matches ..0 run function tinkery:blocks/smeltery/materials/list