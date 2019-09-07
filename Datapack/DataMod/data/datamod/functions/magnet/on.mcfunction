data modify entity @s SelectedItem.tag.Magnet set value 1
data modify entity @s SelectedItem.tag.MagnetWasActivate set value 1
data modify entity @s SelectedItem.tag.Enchantments set value [{id:"shinning",lvl:1}]
title @s actionbar ["",{"text":"Magnet :","color":"gold"},{"text":" On","color":"green"}]
playsound jam:misc.holy ambient @s ~ ~ ~ 0.5 1.5