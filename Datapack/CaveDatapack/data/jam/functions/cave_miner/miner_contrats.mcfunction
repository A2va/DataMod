# Buy Contrat (inventory)
execute as @a[nbt={Inventory:[{tag:{kill:1}}]}] at @s run tag @e[tag=cave_miner,limit=1,sort=nearest] add work
execute as @a[nbt={Inventory:[{tag:{contrat:1}}]}] at @s run tag @e[tag=cave_miner,limit=1,sort=nearest] add contrat1
execute as @a[nbt={Inventory:[{tag:{contrat:2}}]}] at @s run tag @e[tag=cave_miner,limit=1,sort=nearest] add contrat2
execute as @a[nbt={Inventory:[{tag:{contrat:3}}]}] at @s run tag @e[tag=cave_miner,limit=1,sort=nearest] add contrat3
execute as @a[nbt={Inventory:[{tag:{contrat:4}}]}] at @s run tag @e[tag=cave_miner,limit=1,sort=nearest] add contrat4
execute as @a[nbt={Inventory:[{tag:{contrat:5}}]}] at @s run tag @e[tag=cave_miner,limit=1,sort=nearest] add contrat5

# Buy Contrat (world)
execute as @e[nbt={Item:{tag:{kill:1}}}] at @s run tag @e[tag=cave_miner,limit=1,sort=nearest] add work
execute as @e[nbt={Item:{tag:{contrat:1}}}] at @s run tag @e[tag=cave_miner,limit=1,sort=nearest] add contrat1
execute as @e[nbt={Item:{tag:{contrat:2}}}] at @s run tag @e[tag=cave_miner,limit=1,sort=nearest] add contrat2
execute as @e[nbt={Item:{tag:{contrat:3}}}] at @s run tag @e[tag=cave_miner,limit=1,sort=nearest] add contrat3
execute as @e[nbt={Item:{tag:{contrat:4}}}] at @s run tag @e[tag=cave_miner,limit=1,sort=nearest] add contrat4
execute as @e[nbt={Item:{tag:{contrat:5}}}] at @s run tag @e[tag=cave_miner,limit=1,sort=nearest] add contrat5

# Clear Contrat
execute as @a[nbt={Inventory:[{tag:{kill:1}}]}] run clear @s paper{kill:1}
kill @e[nbt={Item:{tag:{kill:1}}}]

# Start Working
execute as @e[tag=cave_miner,tag=work] at @s run function jam:cave_miner/miner_work

# End Working
execute as @e[tag=cave_miner,tag=EndWork] at @s run function jam:cave_miner/miner_endwork
