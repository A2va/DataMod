function jam:util/temp
execute as @e[tag=temp] at @s run function jam:util/align
execute as @e[tag=temp] at @s run function jam:gen/setblock_marker
kill @e[tag=temp]
