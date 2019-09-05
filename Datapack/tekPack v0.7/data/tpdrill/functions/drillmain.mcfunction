#######
# Compiled from .//functions/drillmain.mcscript
# to .//functions/drillmain.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if score #t tpTimer matches 2.. run tag @s[tag=tpFirstPower] remove tpFirstPower
execute if score #t tpTimer matches 2.. if score @e[tag=tpCable,distance=..1.1,limit=1] tpE matches 1.. if score @s tpE matches ..14 run tag @s add tpAdd

execute if entity @s[tag=tpAdd] run scoreboard players add @s tpE 1
execute if entity @s[tag=tpAdd] run scoreboard players reset @e[tag=tpCable,distance=..1.1,limit=1,scores={tpE=1}] tpE
execute if entity @s[tag=tpAdd] run scoreboard players remove @e[tag=tpCable,distance=..1.1,limit=1,scores={tpE=2..}] tpE 1
execute if entity @s[tag=tpAdd] run tag @s remove tpAdd

execute if entity @s[tag=!tpPowered,tag=!tpDrillStopped] if score @s tpTimer matches 40.. if score @s tpE matches 2.. run tag @s add tpDrillActive

execute if entity @s[tag=tpDrillActive] if entity @s[tag=!tpDrillDigEnd,tag=!tpDrillSetup] run scoreboard players remove @s tpE 2
execute if entity @s[tag=tpDrillActive] if entity @s[tag=!tpDrillDigEnd,tag=!tpDrillSetup] positioned ~ ~-1 ~ run function tpdrill:godown
execute if entity @s[tag=tpDrillActive] if entity @s[tag=tpDrillDigEnd,tag=!tpDrillSetup] run scoreboard players remove @s tpE 1
execute if entity @s[tag=tpDrillActive] if entity @s[tag=tpDrillDigEnd,tag=!tpDrillSetup] positioned ~-0.5 ~ ~-0.5 at @e[tag=tpDrillPipeEnd,dx=1,dz=1,y=0,dy=256,limit=1] positioned ~-3.5 ~-1 ~-3.5 run function tpdrill:surface
execute if entity @s[tag=tpDrillActive] if entity @s[tag=tpDrillSetup] run scoreboard players remove @s tpE 1
execute if entity @s[tag=tpDrillActive] if entity @s[tag=tpDrillSetup] positioned ~-3 ~-2 ~-3 run function tpdrill:surface
execute if entity @s[tag=tpDrillActive] if entity @s[tag=tpDrillSetup] as @e[distance=..0.8,type=item,nbt={Item:{tag:{tpDrill:1b}}}] positioned ~ ~1 ~ run tp @s ^ ^ ^1
execute if entity @s[tag=tpDrillActive] if entity @s[tag=tpDrillSurfaceFinished] run tag @s remove tpDrillDigEnd
execute if entity @s[tag=tpDrillActive] if entity @s[tag=tpDrillSurfaceFinished] run tag @s remove tpDrillSetup
execute if entity @s[tag=tpDrillActive] if entity @s[tag=tpDrillSurfaceFinished] run tag @s remove tpDrillSurfaceFinished
execute if entity @s[tag=tpDrillActive] run tag @s remove tpDrillActive

execute as @e[distance=..0.9,type=item,nbt={Item:{tag:{tpDrill:1b}}}] positioned ~ ~1 ~ run tp @s ^ ^ ^1
#if the drill stopped
execute if entity @s[tag=tpDrillStopped] if score @s tpTimer matches 40.. as @e[tag=tpDrillPipeEnd,dx=1,dz=1,y=0,dy=256,limit=1] run tag @s add tpDrillDestroy
execute if entity @s[tag=tpDrillStopped] if score @s tpTimer matches 40.. as @e[tag=tpDrillDestroy] at @s run tag @e[tag=tpDrillPipe,distance=..1.1] add tpDrillPipeEnd
execute if entity @s[tag=tpDrillStopped] if score @s tpTimer matches 40.. as @e[tag=tpDrillDestroy] at @s run kill @s

execute if entity @a[distance=..2] if score @s tpE matches 0 run title @a[distance=..2] actionbar ["",{"text":"","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 1 run title @a[distance=..2] actionbar ["",{"text":"▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 2 run title @a[distance=..2] actionbar ["",{"text":"▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 3 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 4 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 5 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 6 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 7 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 8 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 9 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 10 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 11 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 12 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 13 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 14 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 15 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"green"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]