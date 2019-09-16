function jam:marker/new
execute as @e[tag=new] at @s run function jam:util/align
execute at @e[tag=new] if block ~2 0 ~2 red_wool run kill @s
kill @e[tag=new]