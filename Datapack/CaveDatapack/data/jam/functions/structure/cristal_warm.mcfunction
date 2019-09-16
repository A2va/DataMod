function jam:rand/next_global
scoreboard players operation GLOBAL R %= 3 CONST

execute if score GLOBAL R matches 0 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -1, mode: "LOAD", posY: 0, sizeX: 3, posZ: 0, name: "jam:cave/cristal_granite_01", sizeY: 4, sizeZ: 2, showboundingbox: 0b}
execute if score GLOBAL R matches 1 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -1, mode: "LOAD", posY: 0, sizeX: 3, posZ: -1, name: "jam:cave/cristal_granite_02", sizeY: 4, sizeZ: 3, showboundingbox: 0b}
execute if score GLOBAL R matches 2 run setblock ~ ~ ~ structure_block{ignoreEntities: 0b,posX: -1, mode: "LOAD", posY: 0, sizeX: 4, posZ: -1, name: "jam:cave/cristal_granite_03", sizeY: 6, sizeZ: 3, showboundingbox: 0b}

setblock ~ ~1 ~ redstone_block
