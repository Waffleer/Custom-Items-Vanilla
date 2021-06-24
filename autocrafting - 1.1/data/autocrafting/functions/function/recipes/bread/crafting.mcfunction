execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:wheat"}].Count
execute if score @s count_in1 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add bread_crafting
execute as @s[tag=bread_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:bread 1
execute as @s[tag=bread_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:wheat"}].Count double 1 run scoreboard players remove @s count_in1 3
tag @s remove bread_crafting
scoreboard players reset @s count_in1
