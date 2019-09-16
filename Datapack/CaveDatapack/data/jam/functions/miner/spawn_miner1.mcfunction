setblock ~ ~ ~ minecraft:structure_block[mode=load]{posX:-2,posY:0,posZ:-2,mode:"LOAD",sizeX:5,sizeY:5,sizeZ:5,integrity:1.0f,showair:0b,name:"jam:miner/miner_mineshaft_bottom",showboundingbox:0b}
setblock ~ ~1 ~ redstone_block
setblock ~ ~5 ~ minecraft:structure_block[mode=load]{posX:-2,posY:0,posZ:-2,mode:"LOAD",sizeX:5,sizeY:2,sizeZ:5,integrity:1.0f,showair:0b,name:"jam:miner/miner_mineshaft_middle",showboundingbox:0b,ignoreEntities:0b}
setblock ~ ~6 ~ redstone_block
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["Jigsaw","miner_mineshaft_top"]}
spreadplayers ~ ~ 0 1 false @e[type=minecraft:armor_stand,tag=Jigsaw,tag=miner_mineshaft_top,sort=nearest,limit=1]
execute as @e[type=minecraft:armor_stand,tag=Jigsaw,tag=miner_mineshaft_middle] at @s run function jam:miner/spawn_minerrecur
tp @s ~ -100 ~
