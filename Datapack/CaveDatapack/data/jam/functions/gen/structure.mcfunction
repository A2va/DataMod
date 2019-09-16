function jam:gen/move/find_ground


function jam:rand/next



execute if score @s R matches ..50 at @s run function jam:structure/cave_villager_generate
execute if score @s R matches 51..150 at @s run function jam:structure/cristal
execute if score @s R matches 151..200 at @s run function jam:structure/spawner_dami
execute if score @s R matches 201..250 at @s run function jam:structure/spawner_kiki

execute if score @s biome matches 1 if score @s R matches 251..300 at @s run function jam:structure/big_cave
execute if score @s biome matches 3 if score @s R matches 251..300 at @s run function jam:structure/big_cave
execute if score @s biome matches 5 if score @s R matches 251..300 at @s run function jam:structure/big_cave


execute if score @s biome matches 2 if score @s R matches 301..600 at @s run function jam:structure/cristal_warm
execute if score @s biome matches 4 if score @s R matches 301..600 at @s run function jam:structure/ice_mob


execute if score @s biome matches 1 if score @s R matches 601..800 at @s run function jam:structure/cave_miner_generate


execute if score @s biome matches 1..2 if score @s R matches 801..970 at @s run function jam:structure/spawn_miner



execute if score @s biome matches 2 if score @s R matches 951.. at @s run function jam:structure/nether

execute at @s run function jam:gen/mark_chunks

#tellraw @a ["spawned structure", {"nbt":"Pos","entity":"@s"}]
kill @s