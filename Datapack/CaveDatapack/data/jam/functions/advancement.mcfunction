function jam:util/get_biome

execute if score BIOME_TYPE TEMP matches 1 run advancement grant @s only jam:mining_time cave_neutre
execute if score BIOME_TYPE TEMP matches 2 run advancement grant @s only jam:mining_time cave_chaud
execute if score BIOME_TYPE TEMP matches 3 run advancement grant @s only jam:mining_time cave_foret
execute if score BIOME_TYPE TEMP matches 4 run advancement grant @s only jam:mining_time cave_froid
execute if score BIOME_TYPE TEMP matches 5 run advancement grant @s only jam:mining_time cave_humide