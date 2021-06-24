execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:diorite"}].Count
execute if score @s count_in1 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add polished_diorite_crafting
execute as @s[tag=polished_diorite_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:polished_diorite 4
execute as @s[tag=polished_diorite_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:diorite"}].Count double 1 run scoreboard players remove @s count_in1 4
tag @s remove polished_diorite_crafting
scoreboard players reset @s count_in1
