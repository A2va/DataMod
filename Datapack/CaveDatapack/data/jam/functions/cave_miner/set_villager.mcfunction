scoreboard objectives add Miner_timer dummy
scoreboard players set @e[tag=cave_miner,tag=unset] Miner_timer -1
scoreboard players set #Modulo Miner_timer 20

# Meeting_point
execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:meeting_point".pos[0] set from entity @e[tag=meeting_point,sort=nearest,limit=1] Pos[0]
execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:meeting_point".pos[1] set from entity @e[tag=meeting_point,sort=nearest,limit=1] Pos[1]
execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:meeting_point".pos[2] set from entity @e[tag=meeting_point,sort=nearest,limit=1] Pos[2]
# Home
execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:home".pos[0] set from entity @e[tag=home,sort=nearest,limit=1] Pos[0]
execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:home".pos[1] set from entity @e[tag=home,sort=nearest,limit=1] Pos[1]
execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:home".pos[2] set from entity @e[tag=home,sort=nearest,limit=1] Pos[2]
# Job_site
execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:job_site".pos[0] set from entity @e[tag=job_site,sort=nearest,limit=1] Pos[0]
execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:job_site".pos[1] set from entity @e[tag=job_site,sort=nearest,limit=1] Pos[1]
execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s Brain.memories."minecraft:job_site".pos[2] set from entity @e[tag=job_site,sort=nearest,limit=1] Pos[2]

# Anim Points
#execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s ArmorItems[0].tag.PointsPos[0].Pos set from entity @e[tag=PointPos0,limit=1,sort=nearest] Pos
#execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s ArmorItems[0].tag.PointsPos[0].Rotation set from entity @e[tag=PointPos0,limit=1,sort=nearest] Rotation
#execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s ArmorItems[0].tag.PointsPos[1].Pos set from entity @e[tag=PointPos1,limit=1,sort=nearest] Pos
#execute as @e[tag=cave_miner,tag=unset] at @s run data modify entity @s ArmorItems[0].tag.PointsPos[1].Rotation set from entity @e[tag=PointPos1,limit=1,sort=nearest] Rotation

execute as @e[tag=cave_miner,tag=unset] run data merge entity @s {NoAI:0}

execute as @e[tag=cave_miner,tag=unset] at @s run kill @e[tag=miner_pos,tag=!PointPos1,distance=..30]
tag @e[tag=cave_miner,tag=unset] remove unset
