execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons append value {id:"fire_protection",level:0,matBuild:0,next:64}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.display.Lore append value '{"text":"Cooling System","color":"dark_aqua"}'
execute at @s unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag merge value {Enchantments:[]}
execute at @s unless data block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments[{id:"minecraft:fire_protection"}] run data modify block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments append value {id:"minecraft:fire_protection",lvl:0s}