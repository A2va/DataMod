execute as @s at @s unless entity @s[scores={jump=2..}] run scoreboard players add @s fly 1
scoreboard players add @e[tag=barrier] fly 1
kill @e[tag=barrier,scores={fly=12..}]
execute as @s[scores={fly=1..}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ minecraft:barrier run scoreboard players reset @s fly
execute as @s[nbt={OnGround:1b}] at @s unless block ~ ~-.5 ~ air unless block ~ ~-1 ~ minecraft:barrier run scoreboard players reset @s jump
execute as @s[scores={fly=1,jump=1}] at @s if block ~ ~-1 ~ air unless block ~ ~-2 ~ air unless entity @e[tag=barrier,distance=..5] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["barrier"]}
execute as @e[tag=barrier] at @s run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:barrier replace air
execute as @e[tag=barrier,scores={fly=7..}] at @s run fill ~ ~ ~ ~ ~-1 ~ minecraft:air replace minecraft:barrier



execute as @s[scores={jump=2,flyshift=..1}] at @s if block ~ ~-1 ~ air if entity @s[x_rotation=-40..90] run effect give @s minecraft:levitation 1 255 true
execute as @s[scores={flytimer=1}] at @s if entity @s[scores={flyshift=1..}] run scoreboard players remove @s flyshift 1
execute as @s[nbt={OnGround:1b}] at @s run scoreboard players set @s flyshift 0
execute as @s[scores={flyshift=3..}] at @s run scoreboard players set @s flyshift 2
execute as @s[scores={jump=2}] at @s if entity @s[x_rotation=-90..-41] run effect give @s minecraft:levitation 1 0 true
execute as @s[scores={flyshift=1..}] at @s run effect clear @s minecraft:levitation
execute as @s[scores={jump=2,flyshift=1..}] at @s run effect give @s minecraft:slow_falling 1 240 true
execute as @s at @s run scoreboard players add @s flytimer 1
execute as @s[scores={flytimer=2..}] at @s run scoreboard players reset @s flytimer

effect give @s minecraft:resistance 3 100 true
#execute as @a[tag=fly,scores={jump=2}] at @s run effect give @s minecraft:resistance 3 100 true

