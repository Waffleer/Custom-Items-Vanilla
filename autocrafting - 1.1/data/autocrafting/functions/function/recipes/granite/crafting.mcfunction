execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:diorite"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:quartz"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add granite_crafting
execute as @s[tag=granite_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:granite 1
execute as @s[tag=granite_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:diorite"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=granite_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:quartz"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove granite_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
