scoreboard objectives add Miner_Structures dummy
scoreboard players set 4 Miner_Structures 4

scoreboard objectives add CONST dummy
scoreboard objectives add TEMP dummy
scoreboard objectives add RAND dummy
scoreboard objectives add R dummy

scoreboard objectives add tick dummy
scoreboard objectives add biome dummy
scoreboard objectives add freq dummy
scoreboard objectives add gtype dummy


scoreboard players set CHUNK CONST 16
scoreboard players set -1 CONST -1
scoreboard players set 2 CONST 2
scoreboard players set 3 CONST 3
scoreboard players set 5 CONST 5
scoreboard players set 6 CONST 6
scoreboard players set 7 CONST 7
scoreboard players set 9 CONST 9
scoreboard players set 10 CONST 10
scoreboard players set 17 CONST 17
scoreboard players set 29 CONST 29
scoreboard players set 41 CONST 41
scoreboard players set 100 CONST 100
scoreboard players set 250 CONST 250
scoreboard players set 500 CONST 500

scoreboard players set MIN_LIFE CONST 300
scoreboard players set FREQ CONST 1000

execute store result score SEED CONST run seed
scoreboard players operation HASH RAND = SEED CONST
scoreboard players operation GLOBAL RAND = SEED CONST

scoreboard players set BOOL TEMP 0
scoreboard players set STOP TEMP 0

scoreboard players set HASH_KEY RAND 42338533
scoreboard players set MULT RAND 1664525
scoreboard players set ADD RAND 1013904223
scoreboard players set DIV RAND 8
scoreboard players set MOD RAND 1000


forceload add 0 0
setblock 0 0 0 jukebox{ReccordItem:{id:pufferfish,Count:1b,tag:{}}}
setblock 1 0 1 chest
fill 0 1 0 16 1 16 bedrock

scoreboard players set VERSION CONST 1
