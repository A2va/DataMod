#Do controller stuff
execute as @s at @s run function storage:blocks/server/set_navbar
execute as @s at @s if score @s s_lock matches 1.. run function storage:system/disablehopper
execute as @s at @s if data block ~ ~0.6 ~ Items[0].tag{MenuItem:1} run function storage:system/disablehopper