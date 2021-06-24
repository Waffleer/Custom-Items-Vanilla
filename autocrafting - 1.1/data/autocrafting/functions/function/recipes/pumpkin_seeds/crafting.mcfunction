execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:pumpkin"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add pumpkin_seeds_crafting
execute as @s[tag=pumpkin_seeds_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:pumpkin_seeds 4
execute as @s[tag=pumpkin_seeds_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:pumpkin"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove pumpkin_seeds_crafting
scoreboard players reset @s count_in1
