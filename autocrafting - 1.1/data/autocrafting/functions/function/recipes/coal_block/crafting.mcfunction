execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:coal"}].Count
execute if score @s count_in1 matches 9.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add coal_block_crafting
execute as @s[tag=coal_block_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:coal_block 1
execute as @s[tag=coal_block_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:coal"}].Count double 1 run scoreboard players remove @s count_in1 9
tag @s remove coal_block_crafting
scoreboard players reset @s count_in1
