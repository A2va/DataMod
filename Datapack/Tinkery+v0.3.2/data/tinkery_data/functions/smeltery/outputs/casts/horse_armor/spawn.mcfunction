execute if data entity @s {Facing:2b} run summon minecraft:item ~ ~ ~-0.6 {Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Horse Armor Cast","color":"gold"}',Lore:['{"text":"Uses 7 ingots to make"}']},TinkeryCast:"horse_armor",CustomModelData:1106}}}
execute if data entity @s {Facing:3b} run summon minecraft:item ~ ~ ~0.6 {Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Horse Armor Cast","color":"gold"}',Lore:['{"text":"Uses 7 ingots to make"}']},TinkeryCast:"horse_armor",CustomModelData:1106}}}
execute if data entity @s {Facing:4b} run summon minecraft:item ~-0.6 ~ ~ {Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Horse Armor Cast","color":"gold"}',Lore:['{"text":"Uses 7 ingots to make"}']},TinkeryCast:"horse_armor",CustomModelData:1106}}}
execute if data entity @s {Facing:5b} run summon minecraft:item ~0.6 ~ ~ {Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Horse Armor Cast","color":"gold"}',Lore:['{"text":"Uses 7 ingots to make"}']},TinkeryCast:"horse_armor",CustomModelData:1106}}}
scoreboard players remove #tinkery t_dum0 180
scoreboard players set #tinkery t_output 1