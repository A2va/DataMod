function tinkery:rd
execute at @s store result score #tinkery t_dum2 run data get entity @s Inventory[{Slot:-106b}].tag.Tinkery.Addons[{id:"jump_boost"}].level

execute if score #tinkery t_dum2 matches 1 run effect give @s minecraft:jump_boost 2 0 true
execute if score #tinkery t_dum2 matches 2 run effect give @s minecraft:jump_boost 2 1 true
execute if score #tinkery t_dum2 matches 3 run effect give @s minecraft:jump_boost 2 2 true
execute if score #tinkery t_dum2 matches 4 run effect give @s minecraft:jump_boost 2 3 true
execute if score #tinkery t_dum2 matches 5 run effect give @s minecraft:jump_boost 2 4 true
execute if score #tinkery t_dum2 matches 6 run effect give @s minecraft:jump_boost 2 5 true
execute if score #tinkery t_dum2 matches 7 run effect give @s minecraft:jump_boost 2 6 true
execute if score #tinkery t_dum2 matches 8 run effect give @s minecraft:jump_boost 2 7 true
execute if score #tinkery t_dum2 matches 9 run effect give @s minecraft:jump_boost 2 8 true
execute if score #tinkery t_dum2 matches 10.. run effect give @s minecraft:jump_boost 2 9 true