execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:azure_bluet"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add light_gray_dye_crafting
execute as @s[tag=light_gray_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:light_gray_dye 1
execute as @s[tag=light_gray_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:azure_bluet"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove light_gray_dye_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:black_dye"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:white_dye"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add light_gray_dye_crafting
execute as @s[tag=light_gray_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:light_gray_dye 3
execute as @s[tag=light_gray_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:black_dye"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=light_gray_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:white_dye"}].Count double 1 run scoreboard players remove @s count_in2 2
tag @s remove light_gray_dye_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:gray_dye"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:white_dye"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add light_gray_dye_crafting
execute as @s[tag=light_gray_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:light_gray_dye 2
execute as @s[tag=light_gray_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:gray_dye"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=light_gray_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:white_dye"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove light_gray_dye_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:oxeye_daisy"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add light_gray_dye_crafting
execute as @s[tag=light_gray_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:light_gray_dye 1
execute as @s[tag=light_gray_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:oxeye_daisy"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove light_gray_dye_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:white_tulip"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add light_gray_dye_crafting
execute as @s[tag=light_gray_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:light_gray_dye 1
execute as @s[tag=light_gray_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:white_tulip"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove light_gray_dye_crafting
scoreboard players reset @s count_in1
