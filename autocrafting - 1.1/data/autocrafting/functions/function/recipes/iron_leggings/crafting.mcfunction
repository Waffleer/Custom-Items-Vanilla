execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count
execute if score @s count_in1 matches 7.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add iron_leggings_crafting
execute as @s[tag=iron_leggings_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:iron_leggings 1
execute as @s[tag=iron_leggings_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count double 1 run scoreboard players remove @s count_in1 7
tag @s remove iron_leggings_crafting
scoreboard players reset @s count_in1
