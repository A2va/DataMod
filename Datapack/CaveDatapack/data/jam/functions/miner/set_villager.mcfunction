# Meeting_point
execute as @e[tag=miner_house,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:meeting_point".pos[0] set from entity @e[tag=meeting_point,sort=nearest,limit=1] Pos[0]
execute as @e[tag=miner_house,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:meeting_point".pos[1] set from entity @e[tag=meeting_point,sort=nearest,limit=1] Pos[1]
execute as @e[tag=miner_house,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:meeting_point".pos[2] set from entity @e[tag=meeting_point,sort=nearest,limit=1] Pos[2]
# Home
execute as @e[tag=miner_house,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:home".pos[0] set from entity @e[tag=home,sort=nearest,limit=1] Pos[0]
execute as @e[tag=miner_house,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:home".pos[1] set from entity @e[tag=home,sort=nearest,limit=1] Pos[1]
execute as @e[tag=miner_house,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:home".pos[2] set from entity @e[tag=home,sort=nearest,limit=1] Pos[2]
# Job_site
execute as @e[tag=miner_house,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:job_site".pos[0] set from entity @e[tag=job_site,sort=nearest,limit=1] Pos[0]
execute as @e[tag=miner_house,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:job_site".pos[1] set from entity @e[tag=job_site,sort=nearest,limit=1] Pos[1]
execute as @e[tag=miner_house,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:job_site".pos[2] set from entity @e[tag=job_site,sort=nearest,limit=1] Pos[2]

execute as @e[tag=miner_house,tag=unset] run data merge entity @s {NoAI:0}

execute as @e[tag=miner_house,tag=unset] at @s run kill @e[tag=house_pos,distance=..10]
tag @e[tag=miner_house,tag=unset] remove unset
