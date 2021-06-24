execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:sugar_cane"}].Count
execute if score @s count_in1 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add paper_crafting
execute as @s[tag=paper_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:paper 3
execute as @s[tag=paper_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:sugar_cane"}].Count double 1 run scoreboard players remove @s count_in1 3
tag @s remove paper_crafting
scoreboard players reset @s count_in1
