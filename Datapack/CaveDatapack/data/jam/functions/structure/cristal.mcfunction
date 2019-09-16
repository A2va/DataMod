function jam:rand/next_global
scoreboard players operation GLOBAL R %= 6 CONST

execute if score GLOBAL R matches 0 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -1, mode: "LOAD", posY: 0, sizeX: 3, posZ: -1, name: "jam:cave/cristal_diorite_01", sizeY: 6, sizeZ: 3, showboundingbox: 0b}
execute if score GLOBAL R matches 1 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -1, mode: "LOAD", posY: 0, sizeX: 3, posZ: -1, name: "jam:cave/cristal_diorite_02", sizeY: 6, sizeZ: 4, showboundingbox: 0b}
execute if score GLOBAL R matches 2 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -1, mode: "LOAD", posY: 0, sizeX: 3, posZ: -1, name: "jam:cave/cristal_diorite_03", sizeY: 4, sizeZ: 3, showboundingbox: 0b}
execute if score GLOBAL R matches 3 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -1, mode: "LOAD", posY: 0, sizeX: 3, posZ: -1, name: "jam:cave/cristal_andesite_01", sizeY: 5, sizeZ: 3, showboundingbox: 0b}
execute if score GLOBAL R matches 4 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -1, mode: "LOAD", posY: 0, sizeX: 3, posZ: -1, name: "jam:cave/cristal_andesite_02", sizeY: 4, sizeZ: 3, showboundingbox: 0b}
execute if score GLOBAL R matches 5 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -2, mode: "LOAD", posY: 0, sizeX: 5, posZ: -1, name: "jam:cave/cristal_andesite_03", sizeY: 7, sizeZ: 4, showboundingbox: 0b}

setblock ~ ~1 ~ redstone_block
