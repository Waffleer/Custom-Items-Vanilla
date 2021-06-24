execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:pink_wool"}].Count
execute if score @s count_in1 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add pink_carpet_crafting
execute as @s[tag=pink_carpet_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:pink_carpet 3
execute as @s[tag=pink_carpet_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:pink_wool"}].Count double 1 run scoreboard players remove @s count_in1 2
tag @s remove pink_carpet_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:white_carpet"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:pink_dye"}].Count
execute if score @s count_in1 matches 8.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add pink_carpet_crafting
execute as @s[tag=pink_carpet_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:pink_carpet 8
execute as @s[tag=pink_carpet_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:white_carpet"}].Count double 1 run scoreboard players remove @s count_in1 8
execute as @s[tag=pink_carpet_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:pink_dye"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove pink_carpet_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
