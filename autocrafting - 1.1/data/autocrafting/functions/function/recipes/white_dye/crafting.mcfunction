execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:bone_meal"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add white_dye_crafting
execute as @s[tag=white_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:white_dye 1
execute as @s[tag=white_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:bone_meal"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove white_dye_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:lily_of_the_valley"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add white_dye_crafting
execute as @s[tag=white_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:white_dye 1
execute as @s[tag=white_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:lily_of_the_valley"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove white_dye_crafting
scoreboard players reset @s count_in1
