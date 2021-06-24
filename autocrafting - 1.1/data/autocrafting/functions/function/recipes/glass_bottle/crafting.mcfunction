execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count
execute if score @s count_in1 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add glass_bottle_crafting
execute as @s[tag=glass_bottle_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:glass_bottle 3
execute as @s[tag=glass_bottle_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count double 1 run scoreboard players remove @s count_in1 3
tag @s remove glass_bottle_crafting
scoreboard players reset @s count_in1
