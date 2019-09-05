#execute at @s run tellraw @p ["",{"selector":"@e[type=minecraft:item_frame,nbt={Facing:1b},distance=..0.7,limit=1,nbt={Item:{id:\"minecraft:iron_ingot\"}}]"}]
#execute at @s run tellraw @p ["",{"score":{"name":"#tinkery","objective":"t_dum0"}},{"text":" | "},{"nbt":"ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:\"gold\"}}].Amount","entity":"@e[tag=t_s_current,limit=1]"}]
execute if score #tinkery t_output matches 0 if score #tinkery t_dum0 matches 180.. run execute at @s if entity @e[type=minecraft:item_frame,nbt={Facing:1b},distance=..0.7,limit=1,nbt={Item:{id:"minecraft:emerald"}}] positioned ~ ~-0.5 ~ run function tinkery_data:smeltery/outputs/casts/gem/spawn
execute if score #tinkery t_output matches 0 if score #tinkery t_dum0 matches 180.. run execute at @s if entity @e[type=minecraft:item_frame,nbt={Facing:1b},distance=..0.7,limit=1,nbt={Item:{id:"minecraft:diamond"}}] positioned ~ ~-0.5 ~ run function tinkery_data:smeltery/outputs/casts/gem/spawn
execute if score #tinkery t_output matches 0 if score #tinkery t_dum0 matches 180.. run execute at @s if entity @e[type=minecraft:item_frame,nbt={Facing:1b},distance=..0.7,limit=1,nbt={Item:{id:"minecraft:ender_pearl"}}] positioned ~ ~-0.5 ~ run function tinkery_data:smeltery/outputs/casts/gem/spawn