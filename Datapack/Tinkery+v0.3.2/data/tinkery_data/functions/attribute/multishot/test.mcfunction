execute at @s if data block ~ ~0.6 ~ Items[{Slot:15b,id:"minecraft:firework_rocket"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"multi_shot"}] unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"piercing"}] run function tinkery_data:attribute/multishot/init