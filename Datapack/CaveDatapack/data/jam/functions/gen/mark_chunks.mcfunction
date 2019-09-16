#Mark chunks in a 3x3 area
function jam:util/temp
execute as @e[tag=temp] at @s run function jam:util/align
execute as @e[tag=temp] at @s run function jam:gen/setblock_markers
kill @e[tag=temp]
