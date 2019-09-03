
execute as @a run execute if score @s liedown_st = @s liedown_lst run scoreboard players set @s liedown_st 0
execute as @a[scores={liedown_st=1..}] at @s if block ~ ~-1 ~ #liedown:all_air run scoreboard players set @s liedown_st 0
execute as @a[scores={liedown_st=..10},x_rotation=-90..80] run scoreboard players set @s liedown_st 0
execute as @a run scoreboard players operation @s liedown_lst = @s liedown_st


##### SECTION SPECIFIC FOR ALL BLOCKS #####

# All air
execute at @a[scores={liedown_st=10..}] if block ~ ~1 ~ #liedown:all_air align xz run summon minecraft:armor_stand ~0.5 ~1.2 ~0.5 {Tags:["LieDownBarrier","LieDownAllAir"],NoGravity:1b,Invisible:1b,NoBasePlate:1b,Small:1b}
execute at @a[scores={liedown_st=10..}] if block ~ ~1 ~ #liedown:all_air align xz run setblock ~ ~1.2 ~ minecraft:barrier replace
# 1.2 for grass paths

# Large fern
execute at @a[scores={liedown_st=10..}] if block ~ ~1 ~ minecraft:large_fern[half=upper] align xz run summon minecraft:armor_stand ~0.5 ~1 ~0.5 {Tags:["LieDownBarrier","LieDownFern"],NoGravity:1b,Invisible:1b,NoBasePlate:1b,Small:1b}
execute at @a[scores={liedown_st=10..}] if block ~ ~1 ~ minecraft:large_fern[half=upper] align xz run setblock ~ ~ ~ minecraft:fern
execute at @a[scores={liedown_st=10..}] if block ~ ~1 ~ minecraft:large_fern[half=upper] align xz run setblock ~ ~1 ~ minecraft:barrier

# Tall grass
execute at @a[scores={liedown_st=10..}] if block ~ ~1 ~ minecraft:tall_grass[half=upper] align xz run summon minecraft:armor_stand ~0.5 ~1 ~0.5 {Tags:["LieDownBarrier","LieDownGrass"],NoGravity:1b,Invisible:1b,NoBasePlate:1b,Small:1b}
execute at @a[scores={liedown_st=10..}] if block ~ ~1 ~ minecraft:tall_grass[half=upper] align xz run setblock ~ ~ ~ minecraft:grass
execute at @a[scores={liedown_st=10..}] if block ~ ~1 ~ minecraft:tall_grass[half=upper] align xz run setblock ~ ~1 ~ minecraft:barrier replace

#####


# Reset LieDownBarrier armor stand timer
execute at @a[scores={liedown_st=1..}] positioned ~ ~1 ~ as @e[type=minecraft:armor_stand,tag=LieDownBarrier,distance=..1] run scoreboard players set @s liedown_blt 0

# Teleport to bottom if player if walking on block ridge
execute as @a[scores={liedown_st=10..}] at @s if block ~ ~ ~0.3 #liedown:non_solid if block ~ ~-1 ~0.3 #liedown:non_solid run tp ~ ~-0.1 ~
execute as @a[scores={liedown_st=10..}] at @s if block ~ ~ ~-0.3 #liedown:non_solid if block ~ ~-1 ~-0.3 #liedown:non_solid run tp ~ ~-0.1 ~
execute as @a[scores={liedown_st=10..}] at @s if block ~0.3 ~ ~ #liedown:non_solid if block ~0.3 ~-1 ~ #liedown:non_solid run tp ~ ~-0.1 ~
execute as @a[scores={liedown_st=10..}] at @s if block ~-0.3 ~ ~ #liedown:non_solid if block ~-0.3 ~-1 ~ #liedown:non_solid run tp ~ ~-0.1 ~

# Teleport a player walking on barrier (the barrier on the lie down player) in the block
execute as @a at @s positioned ~ ~-1 ~ if entity @e[type=minecraft:armor_stand,tag=LieDownBarrier,distance=..1] run tp ~ ~-0.1 ~

# Increment LieDownBarrier armor stand timer
execute as @e[type=minecraft:armor_stand,tag=LieDownBarrier] run scoreboard players add @s liedown_blt 1


##### SECTION SPECIFIC FOR ALL BLOCKS #####

# All air
execute as @e[type=minecraft:armor_stand,tag=LieDownBarrier,tag=LieDownAllAir,scores={liedown_blt=2..}] at @s run setblock ~ ~ ~ minecraft:air replace

# Large fern
execute as @e[type=minecraft:armor_stand,tag=LieDownBarrier,tag=LieDownFern,scores={liedown_blt=2..}] at @s if block ~ ~-1 ~ minecraft:fern run setblock ~ ~-1 ~ minecraft:large_fern[half=lower] replace
execute as @e[type=minecraft:armor_stand,tag=LieDownBarrier,tag=LieDownFern,scores={liedown_blt=2..}] at @s if block ~ ~-1 ~ minecraft:large_fern[half=lower] run setblock ~ ~ ~ minecraft:large_fern[half=upper] replace

# Tall grass
execute as @e[type=minecraft:armor_stand,tag=LieDownBarrier,tag=LieDownGrass,scores={liedown_blt=2..}] at @s if block ~ ~-1 ~ minecraft:grass run setblock ~ ~-1 ~ minecraft:tall_grass[half=lower] replace
execute as @e[type=minecraft:armor_stand,tag=LieDownBarrier,tag=LieDownGrass,scores={liedown_blt=2..}] at @s if block ~ ~-1 ~ minecraft:tall_grass[half=lower] run setblock ~ ~ ~ minecraft:tall_grass[half=upper] replace

#####


# Removing LieDownBarrier armor stand
kill @e[type=minecraft:armor_stand,tag=LieDownBarrier,scores={liedown_blt=2..}]