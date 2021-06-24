execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:bone"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add bone_meal_crafting
execute as @s[tag=bone_meal_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:bone_meal 3
execute as @s[tag=bone_meal_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:bone"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove bone_meal_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:bone_block"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add bone_meal_crafting
execute as @s[tag=bone_meal_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:bone_meal 9
execute as @s[tag=bone_meal_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:bone_block"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove bone_meal_crafting
scoreboard players reset @s count_in1
