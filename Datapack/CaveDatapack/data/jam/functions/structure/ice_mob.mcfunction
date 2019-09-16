function jam:rand/next_global
scoreboard players operation GLOBAL R %= 5 CONST

execute if score GLOBAL R matches 0 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -2, mode: "LOAD", posY: 0, sizeX: 6, posZ: -4, name: "jam:ice/mob_ice_01", sizeY: 6, sizeZ: 9, showboundingbox: 0b}
execute if score GLOBAL R matches 1 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -2, mode: "LOAD", posY: 0, sizeX: 4, posZ: -2, name: "jam:ice/mob_ice_02", sizeY: 4, sizeZ: 5, showboundingbox: 0b}
execute if score GLOBAL R matches 2 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -1, mode: "LOAD", posY: 0, sizeX: 3, posZ: -1, name: "jam:ice/mob_ice_03", sizeY: 6, sizeZ: 3, showboundingbox: 0b}
execute if score GLOBAL R matches 3 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -1, mode: "LOAD", posY: 0, sizeX: 3, posZ: -1, name: "jam:ice/mob_ice_04", sizeY: 4, sizeZ: 3, showboundingbox: 0b}
execute if score GLOBAL R matches 4 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -2, mode: "LOAD", posY: 0, sizeX: 5, posZ: -2, name: "jam:ice/mob_ice_05", sizeY: 5, sizeZ: 5, showboundingbox: 0b}

setblock ~ ~1 ~ redstone_block
