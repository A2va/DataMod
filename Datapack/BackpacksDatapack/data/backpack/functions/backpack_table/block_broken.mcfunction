#Drop item and kill items.
execute if entity @e[type=item,nbt={Item:{id:"minecraft:chest"}},distance=..1.5] run summon item ~ ~ ~ {CustomNameVisible:1b,CustomName:"{\"translate\":\"block.backpacks.backpack_table\",\"italic\":false}",Motion:[0.0, 0.3, 0.0],Item:{id:"minecraft:dropper",Count:1b,tag:{CustomModelData:9161,display:{Name:"{\"translate\":\"block.backpacks.backpack_table\",\"italic\":false}"},BlockEntityTag:{Lock:"Backpack Table"}}}}
kill @e[type=item,nbt={Item:{id:"minecraft:chest"}},limit=1,sort=nearest,distance=..1.5]
kill @e[type=item,nbt={Item:{tag:{Gui:1b}}}]
kill @e[type=armor_stand,sort=nearest,limit=1]