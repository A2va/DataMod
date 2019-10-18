execute as @a[scores={right_click=1..}] at @s run function datamod:right_click

execute as @a[nbt={Inventory:[{tag:{Magnet:1}}]}] at @s run tp @e[distance=..8,type=minecraft:item] @s
execute as @a[nbt={Inventory:[{tag:{AngelRing:1}}]}] at @s run function datamod:fly

