setblock ~ ~ ~ minecraft:structure_block[mode=load]{posX:-2,posY:0,posZ:-2,mode:"LOAD",sizeX:5,sizeY:8,sizeZ:5,integrity:1.0f,showair:0b,name:"jam:miner/miner_mineshaft_top",showboundingbox:0b}
setblock ~ ~1 ~ redstone_block

execute store result score @s Miner_Structures run data get entity @s UUIDMost 0.00000000023283064
scoreboard players operation @s Miner_Structures %= 4 Miner_Structures

execute as @s[scores={Miner_Structures=0}] at @s run summon armor_stand ~-11 ~-1 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["miner_house"]}
execute as @s[scores={Miner_Structures=1}] at @s run summon armor_stand ~ ~-1 ~-11 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["miner_house"]}
execute as @s[scores={Miner_Structures=2}] at @s run summon armor_stand ~11 ~-1 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["miner_house"]}
execute as @s[scores={Miner_Structures=3}] at @s run summon armor_stand ~ ~-1 ~11 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["miner_house"]}

execute as @e[distance=..15,type=armor_stand,tag=miner_house] at @s run spreadplayers ~ ~ 0 1 false @s

execute if entity @s[scores={Miner_Structures=0}] at @e[distance=..15,type=armor_stand,tag=miner_house] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{posX:-9,posY:0,posZ:-7,mode:"LOAD",sizeX:11,sizeY:9,sizeZ:11,integrity:1.0f,showair:0b,name:"jam:miner/miner_house",showboundingbox:0b}
execute if entity @s[scores={Miner_Structures=1}] at @e[distance=..15,type=armor_stand,tag=miner_house] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{posX:7,posY:0,posZ:-9,rotation:"CLOCKWISE_90",mode:"LOAD",sizeX:11,sizeY:9,sizeZ:11,integrity:1.0f,showair:0b,name:"jam:miner/miner_house",showboundingbox:0b}
execute if entity @s[scores={Miner_Structures=2}] at @e[distance=..15,type=armor_stand,tag=miner_house] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{posX:9,posY:0,posZ:7,rotation:"CLOCKWISE_180",mode:"LOAD",sizeX:11,sizeY:9,sizeZ:11,integrity:1.0f,showair:0b,name:"jam:miner/miner_house",showboundingbox:0b}
execute if entity @s[scores={Miner_Structures=3}] at @e[distance=..15,type=armor_stand,tag=miner_house] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{posX:-7,posY:0,posZ:9,rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",sizeX:11,sizeY:9,sizeZ:11,integrity:1.0f,showair:0b,name:"jam:miner/miner_house",showboundingbox:0b}

execute if entity @s[scores={Miner_Structures=0}] at @e[distance=..15,type=armor_stand,tag=miner_house] run setblock ~ ~ ~ redstone_block
execute if entity @s[scores={Miner_Structures=1}] at @e[distance=..15,type=armor_stand,tag=miner_house] run setblock ~ ~ ~ redstone_block
execute if entity @s[scores={Miner_Structures=2}] at @e[distance=..15,type=armor_stand,tag=miner_house] run setblock ~ ~ ~ redstone_block
execute if entity @s[scores={Miner_Structures=3}] at @e[distance=..15,type=armor_stand,tag=miner_house] run setblock ~ ~ ~ redstone_block

kill @e[type=minecraft:armor_stand,tag=Jigsaw,tag=miner_mineshaft_top,sort=nearest,limit=1]
kill @e[type=minecraft:armor_stand,tag=miner_house,limit=1]
kill @s

execute as @e[type=armor_stand,tag=Miner_pillar] at @s run function jam:miner/spawn_minerpillar
