summon armor_stand ~ ~ ~ {Tags:["GenCaveMiner"],NoGravity:1,Invisible:1,Marker:1}
spreadplayers ~ ~ 0 1 false @e[tag=GenCaveMiner]
execute as @e[tag=GenCaveMiner] at @s run setblock ~ ~-1 ~ structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Daminator4113",rotation:"NONE",posX:-25,mode:"LOAD",posY:-8,sizeX:30,posZ:-5,integrity:1.0f,showair:0b,name:"jam:miner/miner_cavern",sizeY:16,sizeZ:12,showboundingbox:0b}
execute as @e[tag=GenCaveMiner] at @s run setblock ~ ~-1 ~1 redstone_block
kill @e[tag=GenCaveMiner]
