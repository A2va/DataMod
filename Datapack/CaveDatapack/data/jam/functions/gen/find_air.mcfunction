scoreboard players set AIR TEMP 0

execute if block ~ ~7 ~ #air run scoreboard players set AIR TEMP 8
execute if block ~ ~6 ~ #air run scoreboard players set AIR TEMP 7
execute if block ~ ~5 ~ #air run scoreboard players set AIR TEMP 6
execute if block ~ ~4 ~ #air run scoreboard players set AIR TEMP 5
execute if block ~ ~3 ~ #air run scoreboard players set AIR TEMP 4
execute if block ~ ~2 ~ #air run scoreboard players set AIR TEMP 3
execute if block ~ ~1 ~ #air run scoreboard players set AIR TEMP 2
execute if block ~ ~ ~ #air run scoreboard players set AIR TEMP 1


execute if score AIR TEMP matches 1.. run scoreboard players operation Y TEMP += AIR TEMP
execute if score AIR TEMP matches 0 run scoreboard players add Y TEMP 8
execute if score AIR TEMP matches 0 if score Y TEMP matches ..59 positioned ~ ~8 ~ run function jam:gen/find_air
