execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:allium"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add magenta_dye_crafting
execute as @s[tag=magenta_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:magenta_dye 1
execute as @s[tag=magenta_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:allium"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove magenta_dye_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:blue_dye"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:red_dye"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:pink_dye"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. if score @s count_in3 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add magenta_dye_crafting
execute as @s[tag=magenta_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:magenta_dye 3
execute as @s[tag=magenta_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:blue_dye"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=magenta_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:red_dye"}].Count double 1 run scoreboard players remove @s count_in2 1
execute as @s[tag=magenta_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:pink_dye"}].Count double 1 run scoreboard players remove @s count_in3 1
tag @s remove magenta_dye_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:blue_dye"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:red_dye"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:white_dye"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 2.. if score @s count_in3 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add magenta_dye_crafting
execute as @s[tag=magenta_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:magenta_dye 4
execute as @s[tag=magenta_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:blue_dye"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=magenta_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:red_dye"}].Count double 1 run scoreboard players remove @s count_in2 2
execute as @s[tag=magenta_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:white_dye"}].Count double 1 run scoreboard players remove @s count_in3 1
tag @s remove magenta_dye_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:lilac"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add magenta_dye_crafting
execute as @s[tag=magenta_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:magenta_dye 2
execute as @s[tag=magenta_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:lilac"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove magenta_dye_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:purple_dye"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:pink_dye"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add magenta_dye_crafting
execute as @s[tag=magenta_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:magenta_dye 2
execute as @s[tag=magenta_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:purple_dye"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=magenta_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:pink_dye"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove magenta_dye_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
