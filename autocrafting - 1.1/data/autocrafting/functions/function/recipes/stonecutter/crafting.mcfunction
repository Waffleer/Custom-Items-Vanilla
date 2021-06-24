execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stone"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add stonecutter_crafting
execute as @s[tag=stonecutter_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:stonecutter 1
execute as @s[tag=stonecutter_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=stonecutter_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stone"}].Count double 1 run scoreboard players remove @s count_in2 3
tag @s remove stonecutter_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
