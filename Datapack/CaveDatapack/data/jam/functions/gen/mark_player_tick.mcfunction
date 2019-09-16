execute as @a at @s run function jam:gen/mark_chunks
execute if score STOP TEMP matches 0 run schedule function jam:gen/mark_player_tick 19t