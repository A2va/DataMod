execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:gold_ingot"}] if data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery{Material:"gold"} run function tinkery_data:attribute/repair/gold/add