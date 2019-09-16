execute positioned ^ ^-1 ^1.73 run function jam:marker/temp
execute positioned ^ ^1 ^1.73 run function jam:marker/temp
execute positioned ^1 ^ ^1.73 run function jam:marker/temp
execute positioned ^-1 ^ ^1.73 run function jam:marker/temp
execute as @e[tag=temp] at @s unless block ~ ~ ~ #air run kill @s
execute as @e[tag=temp,sort=random,limit=1] at @s run kill @e[tag=temp,sort=random,distance=0.1..]
execute unless entity @e[tag=temp,limit=1] run function jam:gen/erate2
