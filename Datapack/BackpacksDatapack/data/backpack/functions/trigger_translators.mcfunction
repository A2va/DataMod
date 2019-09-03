scoreboard players enable @a translators
execute as @a[scores={translators=1..}] run function backpack:translators
scoreboard players reset @a[scores={translators=1..}] translators