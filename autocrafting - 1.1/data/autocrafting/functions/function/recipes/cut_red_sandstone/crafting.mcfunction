execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:red_sandstone"}].Count
execute if score @s count_in1 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add cut_red_sandstone_crafting
execute as @s[tag=cut_red_sandstone_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:cut_red_sandstone 4
execute as @s[tag=cut_red_sandstone_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:red_sandstone"}].Count double 1 run scoreboard players remove @s count_in1 4
tag @s remove cut_red_sandstone_crafting
scoreboard players reset @s count_in1
