execute as @e[tag=pgen] at @s run function jam:gen/pgen_tick

execute if score STOP TEMP matches 0 run schedule function jam:gen/gen_tick 1t