setblock ~ ~ ~ minecraft:structure_block[mode=load]{posX:-2,posY:0,posZ:-2,mode:"LOAD",sizeX:5,sizeY:2,sizeZ:5,integrity:1.0f,showair:0b,name:"jam:miner/miner_mineshaft_middle",showboundingbox:0b,ignoreEntities:1b}
setblock ~ ~1 ~ redstone_block
tp @s ~ ~1 ~

execute as @s at @s unless block ~ ~1 ~ minecraft:water unless block ~ ~1 ~ minecraft:lava unless entity @e[type=minecraft:armor_stand,tag=Jigsaw,tag=miner_mineshaft_top,distance=..4] run function jam:miner/spawn_minerrecur
execute as @s at @s if block ~ ~1 ~ minecraft:water run function jam:miner/spawn_minerrecurfin_water
execute as @s at @s if block ~ ~1 ~ minecraft:lava run function jam:miner/spawn_minerrecurfin_water
execute as @s at @s if entity @e[type=minecraft:armor_stand,tag=Jigsaw,tag=miner_mineshaft_top,distance=..4] run function jam:miner/spawn_minerrecurfin
