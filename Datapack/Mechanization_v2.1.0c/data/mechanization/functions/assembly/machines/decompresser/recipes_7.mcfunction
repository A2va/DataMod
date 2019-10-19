
#get count
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:7b}].Count
scoreboard players set temp_1 mech_data 0

#3x3
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:iron_ingot"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:iron_nugget",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:gold_ingot"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:gold_nugget",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:iron_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:iron_ingot",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:gold_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:gold_ingot",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:diamond_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:diamond",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:emerald_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:emerald",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:redstone_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:redstone",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:slime_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:slime_ball",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:melon_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:melon",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:hay_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:wheat",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:dried_kelp_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:dried_kelp",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:coal_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:coal",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:lapis_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:lapis_lazuli",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:bone_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:bone_meal",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:prismarine_bricks"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:prismarine_shard",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:nether_wart_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:nether_wart",Count:9b}}

execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockCopper"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/copper_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotCopper"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/copper_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockTin"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/tin_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotTin"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/tin_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockTitanium"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/titanium_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotTitanium"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/titanium_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockSteel"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/steel_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotSteel"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/steel_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockConductive"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/conductive_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotConductive"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/conductive_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockStructural"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/structural_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotStructural"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/structural_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockTitaniumSteel"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/titanium_steel_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotTitaniumSteel"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/titanium_steel_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockSuperConductive"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/super_conductive_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotSuperConductive"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/super_conductive_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockReinforcedStructural"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/reinforced_structural_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotReinforcedStructural"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/reinforced_structural_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockEnderAlloy"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/ender_alloy_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotEnderAlloy"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/ender_alloy_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockNetherAlloy"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/nether_alloy_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotNetherAlloy"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/nether_alloy_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockUranium"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/uranium_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotUranium"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/uranium_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockPlutonium"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/plutonium_ingot
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["ingotPlutonium"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/plutonium_nugget
execute if data block ~ ~ ~ Items[{Slot:7b,tag:{OreDict:["blockCrystalComposite"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:assembly/decompressor/crystal_composite

# 2x2
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:quartz_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:quartz",Count:4b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:snow_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:snowball",Count:4b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:clay"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:clay_ball",Count:4}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:glowstone"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:glowstone_dust",Count:4b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:blue_ice"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:packed_ice",Count:4b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:packed_ice"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:ice",Count:4b}}
execute if data block ~ ~ ~ Items:[{Slot:7b,id:"minecraft:white_wool"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:string",Count:4b}}

#cleanup
execute if score temp_1 mech_data matches 1 run scoreboard players remove temp_0 mech_data 1
execute if score temp_1 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:7b}].Count byte 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mech_data matches 1 run scoreboard players remove @s mech_power 16
