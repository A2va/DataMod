execute as @a[scores={right_click=1..}] at @s run function datamod:right_click
execute as @a[nbt={Inventory:[{tag:{Magnet:1}}]}] at @s run tp @e[distance=..8,type=minecraft:item] @s


#Give Magnet
#minecraft:carrot_on_a_stick{Magnet:1,CustomModelData:50,HideFlags:61,display:{Lore:["{\"text\":\"Attract all the items around you.\",\"color\":\"gray\",\"italic\":false}"],Name:'{"text":"Magnet","color":"white","italic":false}'}}