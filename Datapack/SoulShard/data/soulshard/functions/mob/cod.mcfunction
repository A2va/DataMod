execute if entity @s[advancements={soulshard:soulshard/mob/a_from_spawner=false},nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{tier:1b,soulstealer:1b}}}] run give @s minecraft:firework_star{mobtype:5s,soul:1b,display:{Name:"{\"text\":\"§7Cod Soul\"}",Lore:['{"text":"§7Loot on creature body"}','{"text":" "}']}} 1
execute if entity @s[advancements={soulshard:soulshard/mob/a_from_spawner=false},nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{tier:2b,soulstealer:1b}}}] run give @s minecraft:firework_star{mobtype:5s,soul:1b,display:{Name:"{\"text\":\"§7Cod Soul\"}",Lore:['{"text":"§7Loot on creature body"}','{"text":" "}']}} 2
execute if entity @s[advancements={soulshard:soulshard/mob/a_from_spawner=false},nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{tier:3b,soulstealer:1b}}}] run give @s minecraft:firework_star{mobtype:5s,soul:1b,display:{Name:"{\"text\":\"§7Cod Soul\"}",Lore:['{"text":"§7Loot on creature body"}','{"text":" "}']}} 3
execute if entity @s[advancements={soulshard:soulshard/mob/a_from_spawner=false},nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{tier:4b,soulstealer:1b}}}] run give @s minecraft:firework_star{mobtype:5s,soul:1b,display:{Name:"{\"text\":\"§7Cod Soul\"}",Lore:['{"text":"§7Loot on creature body"}','{"text":" "}']}} 4
execute if entity @s[advancements={soulshard:soulshard/mob/a_from_spawner=false},nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{tier:5b,soulstealer:1b}}}] run give @s minecraft:firework_star{mobtype:5s,soul:1b,display:{Name:"{\"text\":\"§7Cod Soul\"}",Lore:['{"text":"§7Loot on creature body"}','{"text":" "}']}} 8

advancement revoke @s only soulshard:soulshard/mob/cod
advancement revoke @s[advancements={soulshard:soulshard/mob/a_from_spawner=true}] only soulshard:soulshard/mob/a_from_spawner
