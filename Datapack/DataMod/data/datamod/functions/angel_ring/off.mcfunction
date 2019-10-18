data modify entity @s SelectedItem.tag.AngelRing set value 0
data remove entity @s SelectedItem.tag.Enchantments
title @s actionbar ["",{"text":"Angel Ring :","color":"gold"},{"text":" Off","color":"red"}]
playsound jam:misc.holy ambient @s ~ ~ ~ 0.5 1.5