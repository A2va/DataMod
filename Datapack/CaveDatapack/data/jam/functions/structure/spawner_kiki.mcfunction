setblock ~ ~ ~ structure_block{posX: -4, mode: "LOAD", posY: 0, sizeX: 9, posZ: -4, name: "jam:cave/spawner_kiki", sizeY: 11, sizeZ: 9, showboundingbox: 0b}
setblock ~ ~1 ~ redstone_block

execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~-6 ~ structure_block{posX: -4, mode: "LOAD", posY: 0, sizeX: 9, posZ: -4, integrity: 0.3f, name: "jam:cave/spawner_kiki_mossy", sizeY: 11, sizeZ: 9, showboundingbox: 0b}
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~-5 ~ redstone_block
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~-6 ~ cobblestone
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~-5 ~ air



execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~ ~ structure_block{posX: -3, mode: "LOAD", posY: -1, sizeX: 7, posZ: -9, name: "jam:cave/spawner_kiki_top", sizeY: 6, sizeZ: 7, showboundingbox: 0b}
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run fill ~ ~ ~ ~ ~1 ~ air
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~ ~ structure_block{rotation: "CLOCKWISE_90", posX: 9, mode: "LOAD", posY: -1, sizeX: 7, posZ: -3, name: "jam:cave/spawner_kiki_top", sizeY: 6, sizeZ: 7, showboundingbox: 0b}
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run fill ~ ~ ~ ~ ~1 ~ air
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~ ~ structure_block{rotation: "CLOCKWISE_180", posX: 3, mode: "LOAD", posY: -1, sizeX: 7, posZ: 9,name: "jam:cave/spawner_kiki_top", sizeY: 6, sizeZ: 7, showboundingbox: 0b}
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run fill ~ ~ ~ ~ ~1 ~ air
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~ ~ structure_block{rotation: "COUNTERCLOCKWISE_90", posX: -9, mode: "LOAD", posY: -1, sizeX: 7, posZ: 3,name: "jam:cave/spawner_kiki_top", sizeY: 6, sizeZ: 7, showboundingbox: 0b}
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run fill ~ ~ ~ ~ ~1 ~ air

execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~ ~ structure_block{integrity: 0.3f,posX: -3, mode: "LOAD", posY: -1, sizeX: 7, posZ: -9, name: "jam:cave/spawner_kiki_top_mossy", sizeY: 6, sizeZ: 7, showboundingbox: 0b}
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run fill ~ ~ ~ ~ ~1 ~ air
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~ ~ structure_block{integrity: 0.3f,rotation: "CLOCKWISE_90", posX: 9, mode: "LOAD", posY: -1, sizeX: 7, posZ: -3, name: "jam:cave/spawner_kiki_top_mossy", sizeY: 6, sizeZ: 7, showboundingbox: 0b}
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run fill ~ ~ ~ ~ ~1 ~ air
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~ ~ structure_block{integrity: 0.3f,rotation: "CLOCKWISE_180", posX: 3, mode: "LOAD", posY: -1, sizeX: 7, posZ: 9,name: "jam:cave/spawner_kiki_top_mossy", sizeY: 6, sizeZ: 7, showboundingbox: 0b}
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run fill ~ ~ ~ ~ ~1 ~ air
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~ ~ structure_block{integrity: 0.3f,rotation: "COUNTERCLOCKWISE_90", posX: -9, mode: "LOAD", posY: -1, sizeX: 7, posZ: 3,name: "jam:cave/spawner_kiki_top_mossy", sizeY: 6, sizeZ: 7, showboundingbox: 0b}
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run fill ~ ~ ~ ~ ~1 ~ air

execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run data merge block ~5 ~ ~ {MaxNearbyEntities: 6s, RequiredPlayerRange: 16s, SpawnCount: 4s, SpawnData: {id: "minecraft:zombie"}, MaxSpawnDelay: 800s, Delay: 300s, SpawnRange: 3s, MinSpawnDelay: 200s,SpawnPotentials: [{Entity: {id: "minecraft:zombie"}, Weight: 1}]}
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run data merge block ~ ~ ~5 {MaxNearbyEntities: 6s, RequiredPlayerRange: 16s, SpawnCount: 4s, SpawnData: {id: "minecraft:creeper"}, MaxSpawnDelay: 800s, Delay: 300s, SpawnRange: 3s, MinSpawnDelay: 200s,SpawnPotentials: [{Entity: {id: "minecraft:creeper"}, Weight: 1}]}
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run data merge block ~-5 ~ ~ {MaxNearbyEntities: 6s, RequiredPlayerRange: 16s, SpawnCount: 4s, SpawnData: {id: "minecraft:spider"}, MaxSpawnDelay: 800s, Delay: 300s, SpawnRange: 3s, MinSpawnDelay: 200s,SpawnPotentials: [{Entity: {id: "minecraft:spider"}, Weight: 1}]}
execute as @e[type=armor_stand,tag=Spawner_kiki] at @s run data merge block ~ ~ ~-5 {MaxNearbyEntities: 6s, RequiredPlayerRange: 16s, SpawnCount: 4s, SpawnData: {id: "minecraft:skeleton"}, MaxSpawnDelay: 800s, Delay: 300s, SpawnRange: 3s, MinSpawnDelay: 200s,SpawnPotentials: [{Entity: {id: "minecraft:skeleton"}, Weight: 1}]}

kill @e[type=armor_stand,tag=Spawner_kiki]
