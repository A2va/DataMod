execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:end_rod[facing=up] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:end_rod[facing=down]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:end_rod[facing=down] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:end_rod[facing=north]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:end_rod[facing=north] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:end_rod[facing=east]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:end_rod[facing=east] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:end_rod[facing=south]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:end_rod[facing=south] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:end_rod[facing=west]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:end_rod[facing=west] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:end_rod[facing=up]