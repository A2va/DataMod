execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:repeater[facing=south] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:repeater[facing=west]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:repeater[facing=west] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:repeater[facing=north]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:repeater[facing=north] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:repeater[facing=east]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:repeater[facing=east] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:repeater[facing=south]