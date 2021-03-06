
## $world.x: x cord
## $world.z: z cord
## $world.dim: current dimension
## $world.biome: current biome
#* $world.seed: world seed

#> $world.in_0: structure size
#> $world.in_1: is invalid area
#> $world.temp_0: terminate previous loop

#> $math.in_0: input max random
#> $math.in_1: input random seed

#setup seed
scoreboard players operation $math.in_1 du_data = $world.seed du_data
scoreboard players operation $math.in_1 du_data /= $world.x du_data
scoreboard players operation $math.in_1 du_data += $world.z du_data

#check placement conditions
scoreboard players set $world.in_1 du_data 3

execute if block ~ ~ ~ #du:internal/valid_gen_struct run scoreboard players remove $world.in_1 du_data 1
execute if block ~2 ~ ~ #du:internal/valid_gen_struct run scoreboard players remove $world.in_1 du_data 1
execute if block ~-2 ~ ~ #du:internal/valid_gen_struct run scoreboard players remove $world.in_1 du_data 1
execute if block ~ ~ ~2 #du:internal/valid_gen_struct run scoreboard players remove $world.in_1 du_data 1
execute if block ~ ~ ~-2 #du:internal/valid_gen_struct run scoreboard players remove $world.in_1 du_data 1

execute if score $world.in_1 du_data matches 1.. run scoreboard players set $world.in_1 du_data 1
execute if score $world.in_1 du_data matches ..0 run scoreboard players set $world.in_1 du_data 0

#get struct
scoreboard players set $math.in_0 du_data 0

execute store result score $world.temp_0 du_data run data get storage du:temp list
function du:world/generation/struct_gen/check_structs

execute if score $math.in_0 du_data matches ..1000 run scoreboard players set $math.in_0 du_data 1000
function du:math/random_seeded
function du:world/generation/struct_gen/get_weighted_struct

#get struct id
execute store result score $world.in_0 du_data run data get storage du:temp list[0].id

#gen struct
execute if score $world.in_0 du_data matches 1.. if score $world.dim du_data matches -1 run function #du:struct_gen/nether
execute if score $world.in_0 du_data matches 1.. if score $world.dim du_data matches 0 run function #du:struct_gen/overworld
execute if score $world.in_0 du_data matches 1.. if score $world.dim du_data matches 1 run function #du:struct_gen/end

#end find surface loop
scoreboard players set $world.temp_0 du_data -1
