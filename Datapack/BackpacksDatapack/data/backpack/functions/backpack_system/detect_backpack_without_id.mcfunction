#Detects if a player has a Backpack without a ID set.
execute as @a[nbt={SelectedItem:{tag:{backpack_tags:{ID:0}}}},limit=1,sort=random] run function backpack:backpack_system/set_backpack_id

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{backpack_tags:{ID:0}}}]},limit=1,sort=random] unless entity @a[nbt={SelectedItem:{tag:{backpack_tags:{ID:0}}}}] run function backpack:backpack_system/set_backpack_id_left_hand