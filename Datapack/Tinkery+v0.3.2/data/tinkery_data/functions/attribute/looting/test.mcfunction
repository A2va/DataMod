execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:lapis_lazuli"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"looting"}] run function tinkery_data:attribute/looting/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:lapis_lazuli"}] run function tinkery_data:attribute/looting/add