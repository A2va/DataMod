
setblock ~ ~ ~ minecraft:oak_log
execute positioned ~ ~-1 ~ if block ~ ~ ~ #caves:cave_decoration-water run function caves:decor/oak_log_pillar
