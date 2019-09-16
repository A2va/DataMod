setblock ~ ~ ~ minecraft:structure_block[mode=load]{posX:-2,posY:0,posZ:-2,mode:"LOAD",sizeX:5,sizeY:8,sizeZ:5,integrity:1.0f,showair:0b,name:"jam:miner/miner_mineshaft_top",showboundingbox:0b}
setblock ~ ~1 ~ redstone_block
kill @e[type=minecraft:armor_stand,tag=Jigsaw,tag=miner_mineshaft_top,sort=nearest,limit=1]
kill @e[type=minecraft:armor_stand,tag=miner_house,limit=1]
kill @s
