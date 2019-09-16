tp @s ~ ~-1 ~
execute as @s at @s run setblock ~ ~1 ~ oak_log
execute as @s at @s unless block ~ ~ ~ #minecraft:miner run kill @s
execute as @s at @s if block ~ ~ ~ #minecraft:miner run function jam:miner/spawn_minerpillar
