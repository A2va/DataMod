# Meeting_point
execute as @e[tag=cave_villager,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:meeting_point".pos[0] set from entity @e[tag=meeting_point,sort=nearest,limit=1] Pos[0]
execute as @e[tag=cave_villager,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:meeting_point".pos[1] set from entity @e[tag=meeting_point,sort=nearest,limit=1] Pos[1]
execute as @e[tag=cave_villager,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:meeting_point".pos[2] set from entity @e[tag=meeting_point,sort=nearest,limit=1] Pos[2]
# Home
execute as @e[tag=cave_villager,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:home".pos[0] set from entity @e[tag=home,sort=nearest,limit=1] Pos[0]
execute as @e[tag=cave_villager,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:home".pos[1] set from entity @e[tag=home,sort=nearest,limit=1] Pos[1]
execute as @e[tag=cave_villager,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:home".pos[2] set from entity @e[tag=home,sort=nearest,limit=1] Pos[2]
# Job_site
execute as @e[tag=cave_villager,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:job_site".pos[0] set from entity @e[tag=job_site,sort=nearest,limit=1] Pos[0]
execute as @e[tag=cave_villager,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:job_site".pos[1] set from entity @e[tag=job_site,sort=nearest,limit=1] Pos[1]
execute as @e[tag=cave_villager,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:job_site".pos[2] set from entity @e[tag=job_site,sort=nearest,limit=1] Pos[2]

execute as @e[tag=cave_villager,tag=unset] run data merge entity @s {NoAI:0}

execute as @e[tag=cave_villager,tag=unset] at @s run kill @e[tag=cave_pos,distance=..20]

tag @e[tag=cave_villager,tag=unset] add unset1
tag @e[tag=cave_villager,tag=unset] remove unset
schedule function jam:cave_villager/set_villager1 10s
