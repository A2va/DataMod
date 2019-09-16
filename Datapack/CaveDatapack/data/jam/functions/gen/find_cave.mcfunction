function jam:marker/temp
execute at @a[sort=random,limit=1] run spreadplayers ~ ~ 1 64 false @e[tag=temp,limit=1]
scoreboard players set TEMP TEMP 0
execute at @e[tag=temp] store result score TEMP TEMP run clone ~ 12 ~ ~ 60 ~ ~ 12 ~ filtered #minecraft:air force

execute store result score COUNT TEMP if entity @e[tag=pgen]
execute if score COUNT TEMP matches ..10 if score TEMP TEMP matches 1.. as @e[tag=temp] at @s run function jam:gen/spawn_generator

#execute if score TEMP TEMP matches 1.. run say no cave found

kill @e[tag=temp]
execute if score STOP TEMP matches 0 run schedule function jam:gen/find_cave 10t