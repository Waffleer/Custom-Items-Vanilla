execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:honey_bottle"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add sugar_crafting
execute as @s[tag=sugar_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:sugar 3
execute as @s[tag=sugar_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:honey_bottle"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove sugar_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:sugar_cane"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add sugar_crafting
execute as @s[tag=sugar_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:sugar 1
execute as @s[tag=sugar_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:sugar_cane"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove sugar_crafting
scoreboard players reset @s count_in1
