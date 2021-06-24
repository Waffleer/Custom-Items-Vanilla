execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:melon_slice"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add melon_seeds_crafting
execute as @s[tag=melon_seeds_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:melon_seeds 1
execute as @s[tag=melon_seeds_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:melon_slice"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove melon_seeds_crafting
scoreboard players reset @s count_in1
