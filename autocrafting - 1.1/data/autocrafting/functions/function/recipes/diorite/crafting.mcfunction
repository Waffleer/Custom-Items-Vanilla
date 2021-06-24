execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:quartz"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count
execute if score @s count_in1 matches 2.. if score @s count_in2 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add diorite_crafting
execute as @s[tag=diorite_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:diorite 2
execute as @s[tag=diorite_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:quartz"}].Count double 1 run scoreboard players remove @s count_in1 2
execute as @s[tag=diorite_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count double 1 run scoreboard players remove @s count_in2 2
tag @s remove diorite_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
