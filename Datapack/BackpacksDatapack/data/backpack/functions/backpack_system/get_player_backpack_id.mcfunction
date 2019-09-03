#Reset scoreboard of players
execute as @a[nbt=!{SelectedItem:{tag:{item_tags:["backpack"]}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{item_tags:["backpack"]}}]}] run scoreboard players reset @s SelectedBackpack
execute as @a[scores={SelectedBackpack=1..}] unless entity @s[x_rotation=73.0..90.0] run scoreboard players reset @s SelectedBackpack
scoreboard players reset @a[scores={SelectedBackpack=1..},nbt=!{OnGround:1b}] SelectedBackpack
scoreboard players reset @a[scores={SelectedBackpack=1..},nbt={SelectedItem:{tag:{item_tags:["ender_backpack"]}}}] SelectedBackpack

#Gets ID of player's backpack
execute as @a[nbt={OnGround:1b,SelectedItem:{tag:{item_tags:["backpack"]}}},x_rotation=73.0..90.0] store result score @s SelectedBackpack run data get entity @s SelectedItem.tag.backpack_tags.ID
##Left Hand
execute as @a[nbt={OnGround:1b,Inventory:[{Slot:-106b,tag:{item_tags:["backpack"]}}]},x_rotation=73.0..90.0] unless entity @s[nbt={SelectedItem:{tag:{item_tags:["backpack"]}}}] unless entity @s[nbt={SelectedItem:{tag:{item_tags:["ender_backpack"]}}}] store result score @s SelectedBackpack run data get entity @s Inventory[{Slot:-106b}].tag.backpack_tags.ID