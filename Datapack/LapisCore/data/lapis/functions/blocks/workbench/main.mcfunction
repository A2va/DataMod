#WorkbenchItems 1 = empty, 0 = has items
execute as @s at @s store success score @s WorkbenchItems run execute if block ~ ~0.5 ~ dropper{Items:[]}

execute as @s at @s if score @s WorkbenchItems matches 0 run function #lapis:lapis_craft