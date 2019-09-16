function jam:rand/next
function jam:rand/alter
execute if score @s biome matches 1 if score @s R matches ..10 run function jam:gen/decorate/root_spawn
execute if score @s biome matches 2 if score @s R matches ..120 run function jam:gen/decorate/root_spawn
execute if score @s biome matches 3 if score @s R matches ..50 run function jam:gen/decorate/root_spawn
execute if score @s biome matches 4 if score @s R matches ..100 run function jam:gen/decorate/root_spawn
execute if score @s biome matches 5 if score @s R matches ..40 run function jam:gen/decorate/root_spawn


function jam:rand/next
function jam:rand/alter
execute if score @s biome matches 1 if score @s R matches ..10 run function jam:gen/decorate/floor
execute if score @s biome matches 2 if score @s R matches ..120 run function jam:gen/decorate/floor
execute if score @s biome matches 3 if score @s R matches ..50 run function jam:gen/decorate/floor
execute if score @s biome matches 4 if score @s R matches ..100 run function jam:gen/decorate/floor
execute if score @s biome matches 5 if score @s R matches ..40 run function jam:gen/decorate/floor

function jam:rand/next
function jam:rand/alter
execute if score @s biome matches 1 if score @s R matches ..10 run function jam:gen/decorate/ceil
execute if score @s biome matches 2 if score @s R matches ..10 run function jam:gen/decorate/ceil
execute if score @s biome matches 3 if score @s R matches ..50 run function jam:gen/decorate/ceil
execute if score @s biome matches 4 if score @s R matches ..100 run function jam:gen/decorate/ceil
execute if score @s biome matches 5 if score @s R matches ..200 run function jam:gen/decorate/ceil

function jam:rand/next
function jam:rand/alter
execute if score @s biome matches 1 if score @s R matches ..10 run function jam:gen/decorate/boulder
execute if score @s biome matches 2 if score @s R matches ..10 run function jam:gen/decorate/boulder
execute if score @s biome matches 3 if score @s R matches ..30 run function jam:gen/decorate/boulder
execute if score @s biome matches 4 if score @s R matches ..200 run function jam:gen/decorate/boulder
execute if score @s biome matches 5 if score @s R matches ..40 run function jam:gen/decorate/boulder

function jam:rand/next
function jam:rand/alter
execute if score @s biome matches 1 if score @s R matches 500 run summon minecraft:wolf ~ ~ ~ {Health:3.0f,PersistenceRequired:1b}
execute if score @s biome matches 1 if score @s R matches 503..504 run summon minecraft:cat ~ ~ ~ {Health:3.0f,PersistenceRequired:1b}

execute if score @s biome matches 2 if score @s R matches 123 run summon minecraft:husk ~ ~ ~ {Health:3.0f,PersistenceRequired:1b}
execute if score @s biome matches 2 if score @s R matches 124 run summon minecraft:magma_cube ~ ~ ~ {Health:3.0f,PersistenceRequired:1b}

execute if score @s biome matches 3 if score @s R matches 744..745 run summon minecraft:fox ~ ~ ~ {Health:3.0f,PersistenceRequired:1b}
execute if score @s biome matches 3 if score @s R matches 734..735 run summon minecraft:rabbit ~ ~ ~ {Health:3.0f,PersistenceRequired:1b}

execute if score @s biome matches 4 if score @s R matches 200 run summon minecraft:snow_golem ~ ~ ~ {Health:3.0f,PersistenceRequired:1b}
execute if score @s biome matches 4 if score @s R matches 201 run summon minecraft:stray ~ ~ ~ {Health:3.0f,PersistenceRequired:1b}

execute if score @s biome matches 5 if score @s R matches 400 run summon minecraft:slime ~ ~ ~ {Health:3.0f,PersistenceRequired:1b}
execute if score @s biome matches 5 if score @s R matches 401..405 run summon minecraft:drowned ~ ~ ~ {Health:3.0f,PersistenceRequired:1b}


scoreboard players operation @e[tag=to_init] biome = @s biome
tag @e remove to_init