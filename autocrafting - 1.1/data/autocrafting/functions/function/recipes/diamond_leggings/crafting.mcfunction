execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:diamond"}].Count
execute if score @s count_in1 matches 7.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add diamond_leggings_crafting
execute as @s[tag=diamond_leggings_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:diamond_leggings 1
execute as @s[tag=diamond_leggings_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:diamond"}].Count double 1 run scoreboard players remove @s count_in1 7
tag @s remove diamond_leggings_crafting
scoreboard players reset @s count_in1
