execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:honey_bottle"}].Count
execute if score @s count_in1 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} if block ~ ~ ~ dropper{Items:[{Slot:1b, id:"minecraft:barrier"}]} run tag @s add honey_block_crafting
execute as @s[tag=honey_block_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:glass_bottle 4
execute as @s[tag=honey_block_crafting] run replaceitem block ~ ~ ~ container.1 minecraft:honey_block 1
execute as @s[tag=honey_block_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:honey_bottle"}].Count double 1 run scoreboard players remove @s count_in1 4
tag @s remove honey_block_crafting
scoreboard players reset @s count_in1
