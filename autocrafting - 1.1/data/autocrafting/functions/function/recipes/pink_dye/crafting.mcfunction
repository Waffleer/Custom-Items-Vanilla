execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:peony"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add pink_dye_crafting
execute as @s[tag=pink_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:pink_dye 2
execute as @s[tag=pink_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:peony"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove pink_dye_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:pink_tulip"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add pink_dye_crafting
execute as @s[tag=pink_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:pink_dye 1
execute as @s[tag=pink_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:pink_tulip"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove pink_dye_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:red_dye"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:white_dye"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add pink_dye_crafting
execute as @s[tag=pink_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:pink_dye 2
execute as @s[tag=pink_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:red_dye"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=pink_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:white_dye"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove pink_dye_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
