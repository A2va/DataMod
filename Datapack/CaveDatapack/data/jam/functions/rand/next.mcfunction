scoreboard players add @s RAND 0
execute if score @s RAND matches 0 run function jam:rand/init
scoreboard players operation @s RAND *= MULT RAND
scoreboard players operation @s RAND += ADD RAND
scoreboard players operation @s R = @s RAND
scoreboard players operation @s R /= DIV RAND
scoreboard players operation @s R %= MOD RAND
