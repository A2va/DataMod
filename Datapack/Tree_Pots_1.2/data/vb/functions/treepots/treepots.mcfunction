# Detect and Loot
execute at @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:diamond_axe"}}] if block ^ ^ ^-1 minecraft:hopper[enabled=true] if block ^ ^1 ^-1 minecraft:potted_oak_sapling run loot insert ^ ^ ^-1 loot vb:oak
execute at @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:diamond_axe"}}] if block ^ ^ ^-1 minecraft:hopper[enabled=true] if block ^ ^1 ^-1 minecraft:potted_birch_sapling run loot insert ^ ^ ^-1 loot vb:birch
execute at @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:diamond_axe"}}] if block ^ ^ ^-1 minecraft:hopper[enabled=true] if block ^ ^1 ^-1 minecraft:potted_spruce_sapling run loot insert ^ ^ ^-1 loot vb:spruce
execute at @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:diamond_axe"}}] if block ^ ^ ^-1 minecraft:hopper[enabled=true] if block ^ ^1 ^-1 minecraft:potted_jungle_sapling run loot insert ^ ^ ^-1 loot vb:jungle
execute at @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:diamond_axe"}}] if block ^ ^ ^-1 minecraft:hopper[enabled=true] if block ^ ^1 ^-1 minecraft:potted_acacia_sapling run loot insert ^ ^ ^-1 loot vb:acacia
execute at @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:diamond_axe"}}] if block ^ ^ ^-1 minecraft:hopper[enabled=true] if block ^ ^1 ^-1 minecraft:potted_dark_oak_sapling run loot insert ^ ^ ^-1 loot vb:darkoak

# Loot Interval
schedule function vb:treepots/treepots 30s