execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:lapis_lazuli"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"fortune"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"silk_touch"}] run function tinkery_data:attribute/fortune/init

execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:lapis_lazuli"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"silk_touch"}] run function tinkery_data:attribute/fortune/add