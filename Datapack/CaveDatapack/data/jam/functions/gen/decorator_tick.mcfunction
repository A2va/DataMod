execute as @e[tag=root] at @s run function jam:gen/decorate/root

execute if score STOP TEMP matches 0 run schedule function jam:gen/decorator_tick 1t