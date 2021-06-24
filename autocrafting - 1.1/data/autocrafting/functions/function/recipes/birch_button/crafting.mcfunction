execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:birch_planks"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add birch_button_crafting
execute as @s[tag=birch_button_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:birch_button 1
execute as @s[tag=birch_button_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:birch_planks"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove birch_button_crafting
scoreboard players reset @s count_in1
