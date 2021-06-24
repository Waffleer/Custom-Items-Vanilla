execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_block"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add iron_ingot_crafting
execute as @s[tag=iron_ingot_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:iron_ingot 9
execute as @s[tag=iron_ingot_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_block"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove iron_ingot_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_nugget"}].Count
execute if score @s count_in1 matches 9.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add iron_ingot_crafting
execute as @s[tag=iron_ingot_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:iron_ingot 1
execute as @s[tag=iron_ingot_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_nugget"}].Count double 1 run scoreboard players remove @s count_in1 9
tag @s remove iron_ingot_crafting
scoreboard players reset @s count_in1
