tag @s add tokill
execute if block ~2 ~ ~ #air run tag @s remove tokill
execute if block ~ ~ ~2 #air run tag @s remove tokill
execute if block ~ ~2 ~ #air run tag @s remove tokill
execute if block ~ ~-2 ~ #air run tag @s remove tokill
execute if block ~ ~ ~-2 #air run tag @s remove tokill
execute if block ~-2 ~ ~ #air run tag @s remove tokill
kill @s[tag=tokill]