execute if entity @e[tag=cave_miner,type=minecraft:villager] run function jam:cave_miner/miner_contrats
execute as @e[type=minecraft:item,nbt={Item:{tag:{Silverfish:1b}}}] at @s run summon minecraft:silverfish ~ ~ ~
execute as @e[type=minecraft:item,nbt={Item:{tag:{Silverfish:1b}}}] at @s run data remove entity @s Item.tag

execute as @e[tag=Frozen] at @s if block ~ ~ ~ #minecraft:air run function jam:frozen
execute as @a[nbt={Inventory:[{Slot:103b,tag:{MinerHat:1b}}]}] run effect give @s night_vision 3 1 true

execute as @a[advancements={jam:mining_time=false}] at @s run function jam:advancement