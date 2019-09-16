summon armor_stand ~ ~ ~ {Tags:["Miner"],Invisible:1b,NoGravity:1b}
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=Miner] at @s run function jam:miner/spawn_miner1
