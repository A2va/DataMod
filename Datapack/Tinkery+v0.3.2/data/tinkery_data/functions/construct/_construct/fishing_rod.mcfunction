#Test for fishing rod crafting like this

# Fishing Rod Slots:          5 
#                         13  14
#                     21      23

# t_output = 1 means crafting has been done already, so no need to check this tick

# if t_output = 1, all crafting slots will be reduced by 1 automatically

execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/other/fishing_rod