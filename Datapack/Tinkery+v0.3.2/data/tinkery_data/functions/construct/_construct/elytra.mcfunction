#Test for elytra crafting like this

# Elytra Slots:  3   4   5 
#                12  13  14
#                21  22  23

# t_output = 1 means crafting has been done already, so no need to check this tick

# if t_output = 1, all crafting slots will be reduced by 1 automatically

execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/other/elytra