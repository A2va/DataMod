tellraw @a [{"text":"Datapacking Jam successfully loaded !! ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"By Daminator4113, MrPingouin and Kikipunk"}},{"text":"Version 1.0!!","color":"gold","hoverEvent":{"action":"show_text","value":"By Daminator4113, MrPingouin and Kikipunk"}}]

#One time init
scoreboard objectives add CONST dummy
scoreboard players add VERSION CONST 0
execute unless score VERSION CONST matches 1.. run function jam:init_map


function jam:launch_generators
