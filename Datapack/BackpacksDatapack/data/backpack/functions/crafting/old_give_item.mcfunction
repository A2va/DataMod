#Clear item and gives result
give @a[scores={craft_bt=1..},nbt={Inventory:[{id:"minecraft:jigsaw"}]}] minecraft:dropper{CustomModelData:9161,display:{Name:"{\"translate\":\"block.backpacks.backpack_table\",\"italic\":false}"},BlockEntityTag:{Lock:"Backpack Table"}}
clear @a[scores={craft_bt=1..},nbt={Inventory:[{id:"minecraft:jigsaw"}]}] jigsaw 1

#Reset scores
scoreboard players reset @a[scores={craft_bt=1..},nbt=!{Inventory:[{id:"minecraft:jigsaw"}]}] craft_bt