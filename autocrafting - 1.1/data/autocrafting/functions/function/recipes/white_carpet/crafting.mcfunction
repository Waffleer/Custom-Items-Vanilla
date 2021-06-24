execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:white_wool"}].Count
execute if score @s count_in1 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add white_carpet_crafting
execute as @s[tag=white_carpet_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:white_carpet 3
execute as @s[tag=white_carpet_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:white_wool"}].Count double 1 run scoreboard players remove @s count_in1 2
tag @s remove white_carpet_crafting
scoreboard players reset @s count_in1
