replaceitem block 1 0 1 container.0 minecraft:air
loot insert 1 0 1 loot jam:biome
execute store result score BIOME TEMP run data get block 1 0 1 Items[0].Count
replaceitem block 1 0 1 container.0 minecraft:air
loot insert 1 0 1 loot jam:biome_type
execute store result score BIOME_TYPE TEMP run data get block 1 0 1 Items[0].Count
replaceitem block 1 0 1 container.0 minecraft:air
loot insert 1 0 1 loot jam:structure
execute store result score STRUCTURE_TYPE TEMP run data get block 1 0 1 Items[0].Count
