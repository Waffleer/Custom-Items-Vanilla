execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:coal_block"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add coal_crafting
execute as @s[tag=coal_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:coal 9
execute as @s[tag=coal_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:coal_block"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove coal_crafting
scoreboard players reset @s count_in1
