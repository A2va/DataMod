execute positioned ^ ^-0.5 ^2 run function jam:marker/temp
execute positioned ^2 ^-0.5 ^ run function jam:marker/temp
execute positioned ^-2 ^-0.5 ^ run function jam:marker/temp
execute positioned ^ ^0.5 ^-2 run function jam:marker/temp
execute as @e[tag=temp] at @s unless block ~ ~ ~ #air run kill @s
execute as @e[tag=temp,sort=random,limit=1] at @s run kill @e[tag=temp,sort=random,distance=0.1..]

execute at @e[tag=temp,limit=1] run teleport @s ~ ~ ~
kill @e[tag=temp]