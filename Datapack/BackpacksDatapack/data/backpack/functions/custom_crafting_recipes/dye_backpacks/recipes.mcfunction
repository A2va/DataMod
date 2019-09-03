#Detect dye color

#Cyan
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:cyan_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 9165}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:4b},CustomModelData:9165,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Gray
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:gray_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 9167}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:5b},CustomModelData:9167,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Green
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:green_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 9168}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:6b},CustomModelData:9168,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Light Blue
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:light_blue_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 9169}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:7b},CustomModelData:9169,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Light Gray
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:light_gray_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 91610}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:8b},CustomModelData:91610,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}

execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Lime
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:lime_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 91611}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:9b},CustomModelData:91611,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Magenta
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:magenta_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 91612}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:10b},CustomModelData:91612,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Orange
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:orange_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 91613}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:11b},CustomModelData:91613,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Pink
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:pink_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 91614}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:12b},CustomModelData:91614,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Purple
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:purple_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 91615}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:17b},CustomModelData:91615,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Red
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:red_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 91616}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:13b},CustomModelData:91616,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#White
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:white_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 91617}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:14b},CustomModelData:91617,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Yellow
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:yellow_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 91618}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:15b},CustomModelData:91618,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Black
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:black_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 9162}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:16b},CustomModelData:9162,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Brown
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:brown_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 9164}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:3b},CustomModelData:9164,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack

#Blue
execute if score @s SlotResultD matches 0 if block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {item_tags: ["backpack"]}}, {Slot: 8b, id: "minecraft:blue_dye"}]} unless block ~ ~ ~ chest{Items: [{Slot: 6b, id: "minecraft:wooden_sword", tag: {CustomModelData: 9163}}]} run tag @s add dye_backpack
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.25 minecraft:wooden_sword{HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:954288,UUIDMost:29349},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:0,UUIDLeast:197681,UUIDMost:219688}],item_tags:["backpack","dyed_backpack"],backpack_tags:{ID:0,Color:2b},CustomModelData:9163,display:{Name:"{\"translate\":\"item.backpacks.backpack\",\"color\":\"yellow\",\"italic\":\"false\"}",Lore:["{\"translate\":\"lore.backpacks.backpack_line_1\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_2\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_3\",\"color\":\"white\",\"italic\":false}","{\"translate\":\"lore.backpacks.backpack_line_4\",\"color\":\"white\",\"italic\":false}"]}}

execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:25b}].tag.backpack_tags.ID int 1 run data get block ~ ~ ~ Items[{Slot:6b}].tag.backpack_tags.ID
execute if entity @s[tag=dye_backpack] run replaceitem block ~ ~ ~ container.6 air
execute if entity @s[tag=dye_backpack] run scoreboard players operation @s SlotDye1 -= - Operation
execute if entity @s[tag=dye_backpack] store result block ~ ~ ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s SlotDye1
tag @s[tag=dye_backpack] remove dye_backpack