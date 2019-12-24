execute as @s run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,CustomName:"{\"text\":\"gravestones.grave\"}",DisabledSlots:2039583,Marker:1b,Small:1,Tags:[gravestone.items]}
execute as @s run summon armor_stand ~-.18 ~-1.15 ~ {Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone_wall",Count:1b}],HandItems:[{},{}],CustomName:"{\"text\":\"gravestones.grave\"}",DisabledSlots:2039583,Pose:{Head:[0f,180f,340f]},Rotation:[0f]}
execute as @s run summon armor_stand ~.6 ~-.6 ~ {Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"skeleton_skull",Count:1b}],HandItems:[{},{}],CustomName:"{\"text\":\"gravestones.grave\"}",DisabledSlots:2039583,Small:1b,Rotation:[270f],Pose:{Head:[298f,0f,0f]},Tags:[gravestone.head]}
execute as @s run summon armor_stand ~ ~-1.7 ~ {Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"soul_sand",Count:1b}],HandItems:[{},{}],CustomName:"{\"text\":\"gravestones.grave\"}",DisabledSlots:2039583,Rotation:[90f]}
execute as @s run summon armor_stand ~.625 ~-1.7 ~ {Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"soul_sand",Count:1b}],HandItems:[{},{}],CustomName:"{\"text\":\"gravestones.grave\"}",DisabledSlots:2039583,Rotation:[90f]}
loot replace entity @e[tag=gravestone.head,limit=1,sort=nearest] armor.head loot vb:head