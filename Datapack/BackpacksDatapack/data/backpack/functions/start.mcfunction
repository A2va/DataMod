#Scoreboards
scoreboard objectives add Message_Timer dummy
scoreboard objectives add Chests_ID dummy
scoreboard objectives add SelectedBackpack dummy
scoreboard objectives add SelectedSlot dummy
scoreboard objectives add place_bt minecraft.used:minecraft.dropper
scoreboard objectives add craft_bt minecraft.crafted:minecraft.jigsaw
scoreboard objectives add Success dummy
scoreboard objectives add Players_ID dummy
scoreboard objectives add EBChests_ID dummy
scoreboard objectives add en_minecart dummy
scoreboard objectives add translators trigger
scoreboard objectives add backpack_slots dummy
scoreboard objectives add id_slots dummy
scoreboard objectives add Slot0 dummy
scoreboard objectives add Slot1 dummy
scoreboard objectives add Slot2 dummy
scoreboard objectives add Slot3 dummy
scoreboard objectives add Slot4 dummy
scoreboard objectives add Slot5 dummy
scoreboard objectives add Slot6 dummy
scoreboard objectives add Slot7 dummy
scoreboard objectives add Slot8 dummy
scoreboard objectives add SlotResult dummy
scoreboard objectives add SlotDye0 dummy
scoreboard objectives add SlotDye1 dummy
scoreboard objectives add SlotResultD dummy
scoreboard objectives add Operation dummy
scoreboard players set - Operation 1
scoreboard objectives add ESlot0 dummy
scoreboard objectives add ESlot1 dummy
scoreboard objectives add ESlot2 dummy
scoreboard objectives add ESlot3 dummy
scoreboard objectives add ESlot4 dummy
scoreboard objectives add ESlot5 dummy
scoreboard objectives add ESlot6 dummy
scoreboard objectives add ESlot7 dummy
scoreboard objectives add ESlot8 dummy
scoreboard objectives add ESlotResult dummy
scoreboard objectives add minecart dummy
scoreboard objectives add first_message dummy

#Gamerules
gamerule logAdminCommands false
gamerule sendCommandFeedback false
gamerule maxCommandChainLength 1000000

#Messages
#tellraw @a ["",{"text":"Reload Complete!"}]
scoreboard players set #Timer Message_Timer 0

#Spawn
setworldspawn ~ 1 ~
execute positioned ~ 1 ~ run fill ~-2 ~ ~-2 ~2 ~ ~2 bedrock