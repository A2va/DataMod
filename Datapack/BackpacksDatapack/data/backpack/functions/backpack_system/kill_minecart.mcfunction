#Transfer inventory of minecart to armor stand
data modify entity @s HandItems[0].tag.Items set from entity @e[distance=..0.75,type=chest_minecart,tag=backpack_chest,limit=1,sort=nearest,tag=!found_player] Items

#Kill minecart
tp @e[distance=..0.75,type=chest_minecart,tag=backpack_chest,limit=1,sort=nearest,tag=!found_player] ~ -1 ~
kill @e[distance=..0.75,type=chest_minecart,tag=backpack_chest,limit=1,sort=nearest,tag=!found_player]