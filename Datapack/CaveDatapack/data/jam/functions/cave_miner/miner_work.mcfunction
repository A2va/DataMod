# Go to the cave animation
# Init Walk
execute as @s[scores={Miner_timer=-1}] positioned as @e[tag=chest_miner,limit=1,sort=nearest] run data merge entity @e[tag=chest_miner,limit=1,sort=nearest] {Motion:[-1.0d,0.0d,0.0d]}
#execute unless entity @e[tag=PointPos0,distance=..0.5] run tp @s[scores={Miner_timer=-1}] @e[tag=PointPos0,limit=1,sort=nearest]
#tag @s[scores={Miner_timer=-1},tag=!walk] add walk
#execute as @s[scores={Miner_timer=-1}] at @s run data modify entity @s Pos set from entity @s ArmorItems[0].tag.PointsPos[0].Pos
#execute as @s[scores={Miner_timer=-1}] at @s run data modify entity @s Rotation set from entity @s ArmorItems[0].tag.PointsPos[0].Rotation

# Init Mine (after walk)
#tag @s[scores={Miner_timer=1000},tag=walk] add mine
#tag @s[scores={Miner_timer=2200},tag=walk] add mine
#tag @s[scores={Miner_timer=4600},tag=walk] add mine
#tag @s[scores={Miner_timer=11800},tag=walk] add mine
execute unless entity @e[tag=PointPos1,distance=..0.5] run tp @s @e[tag=PointPos1,limit=1,sort=nearest]
#execute as @s[tag=mine,tag=walk] at @s run data modify entity @s Pos set from entity @s ArmorItems[0].tag.PointsPos[1].Pos
#execute as @s[tag=mine,tag=walk] at @s run data modify entity @s Pos set from entity @s ArmorItems[0].tag.PointsPos[1].Rotation
execute if entity @e[tag=PointPos1,distance=..0.5] run tp @s ~ ~ ~ ~ 45
#tag @s[tag=mine] remove walk

# Walk
#execute unless block ~0.25 ~-0.51 ~ #minecraft:slabs unless block ~0.25 ~-0.1 ~ #minecraft:air if block ~-1 ~ ~ #minecraft:air run tp @s[tag=walk] ~-0.1 ~ ~
#execute if block ~0.25 ~-0.51 ~ #minecraft:slabs run tp @s[tag=walk] ~-0.1 ~-0.5 ~
#execute if block ~0.75 ~-0.25 ~ #minecraft:slabs run tp @s[tag=walk] ~-0.1 ~-0.5 ~
#execute if block ~0.25 ~-0.1 ~ #minecraft:air run tp @s[tag=walk] ~-0.1 ~-1 ~

# Mine
scoreboard players operation Mine Miner_timer = @s Miner_timer
scoreboard players operation Mine Miner_timer %= #Modulo Miner_timer
execute if score Mine Miner_timer matches 0 anchored eyes run particle minecraft:block stone ^ ^ ^0.8 0.25 0.25 0.5 0 10
execute if score Mine Miner_timer matches 0 run playsound minecraft:block.stone.break master @a ~ ~ ~
execute if score Mine Miner_timer matches 4 anchored eyes run particle minecraft:block stone ^ ^ ^0.8 0 0 0 0 2
execute if score Mine Miner_timer matches 4 run playsound minecraft:block.stone.break master @a ~ ~ ~ 2 1.5
execute if score Mine Miner_timer matches 9 anchored eyes run particle minecraft:block stone ^ ^ ^0.8 0 0 0 0 2
execute if score Mine Miner_timer matches 9 run playsound minecraft:block.stone.break master @a ~ ~ ~ 2 1.5
execute if score Mine Miner_timer matches 17 run playsound minecraft:entity.item.pickup master @a ~ ~ ~


# Can't interact when he work
data merge entity @s[scores={Miner_timer=-1}] {NoAI:1,Offers:{Recipes:[]}}
data merge entity @s[scores={Miner_timer=-1},nbt={VillagerData:{level:4}}] {VillagerData:{level:5}}
data merge entity @s[scores={Miner_timer=-1},nbt={VillagerData:{level:3}}] {VillagerData:{level:4}}
data merge entity @s[scores={Miner_timer=-1},nbt={VillagerData:{level:2}}] {VillagerData:{level:3}}
data merge entity @s[scores={Miner_timer=-1},nbt={VillagerData:{level:1}}] {VillagerData:{level:2}}

# Pop all items in the chest before launching them
execute if entity @s[scores={Miner_timer=-1}] run tag @e[tag=chest_miner,tag=!kill,limit=1,sort=nearest] add kill
execute if entity @s[scores={Miner_timer=-1}] positioned as @e[tag=chest_miner,tag=kill,limit=1,sort=nearest] run summon chest_minecart ~ ~ ~ {Tags:["chest_miner"],CustomName:'{"text":"Let me Empty!"}',Invulnerable:1}
execute if entity @s[scores={Miner_timer=-1}] run kill @e[tag=chest_miner,tag=kill,limit=1,sort=nearest]

# Set Timer
scoreboard players set @s[tag=contrat1,scores={Miner_timer=-1}] Miner_timer 1200
scoreboard players set @s[tag=contrat2,scores={Miner_timer=-1}] Miner_timer 2400
scoreboard players set @s[tag=contrat3,scores={Miner_timer=-1}] Miner_timer 4800
scoreboard players set @s[tag=contrat4,scores={Miner_timer=-1}] Miner_timer 2400
scoreboard players set @s[tag=contrat5,scores={Miner_timer=-1}] Miner_timer 12000

scoreboard players remove @s Miner_timer 1

# End Timer
tag @s[scores={Miner_timer=0}] add EndWork
scoreboard players set @s[tag=EndWork] Miner_timer -1
#tag @s[tag=EndWork] remove mine
tag @s[tag=EndWork] remove work
