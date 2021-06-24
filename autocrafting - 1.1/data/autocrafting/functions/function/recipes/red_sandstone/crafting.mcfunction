execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:red_sand"}].Count
execute if score @s count_in1 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add red_sandstone_crafting
execute as @s[tag=red_sandstone_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:red_sandstone 1
execute as @s[tag=red_sandstone_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:red_sand"}].Count double 1 run scoreboard players remove @s count_in1 4
tag @s remove red_sandstone_crafting
scoreboard players reset @s count_in1
