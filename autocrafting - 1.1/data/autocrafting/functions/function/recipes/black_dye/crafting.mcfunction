execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:ink_sac"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add black_dye_crafting
execute as @s[tag=black_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:black_dye 1
execute as @s[tag=black_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:ink_sac"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove black_dye_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:wither_rose"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add black_dye_crafting
execute as @s[tag=black_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:black_dye 1
execute as @s[tag=black_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:wither_rose"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove black_dye_crafting
scoreboard players reset @s count_in1
