execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:acacia_log"}].Count
execute if score @s count_in1 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add acacia_wood_crafting
execute as @s[tag=acacia_wood_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:acacia_wood 3
execute as @s[tag=acacia_wood_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:acacia_log"}].Count double 1 run scoreboard players remove @s count_in1 4
tag @s remove acacia_wood_crafting
scoreboard players reset @s count_in1
