execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:string"}].Count
execute if score @s count_in1 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add white_wool_crafting
execute as @s[tag=white_wool_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:white_wool 1
execute as @s[tag=white_wool_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:string"}].Count double 1 run scoreboard players remove @s count_in1 4
tag @s remove white_wool_crafting
scoreboard players reset @s count_in1
