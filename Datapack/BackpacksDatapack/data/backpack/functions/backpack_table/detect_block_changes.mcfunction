#Detect if chest is not type left
execute at @e[tag=Backpack_Table] if block ~ ~ ~ chest unless block ~ ~ ~ chest[type=left] run function backpack:backpack_table/fix_chest

#Detect if the block is empty
execute at @e[tag=Backpack_Table] unless block ~ ~ ~ chest run function backpack:backpack_table/block_broken