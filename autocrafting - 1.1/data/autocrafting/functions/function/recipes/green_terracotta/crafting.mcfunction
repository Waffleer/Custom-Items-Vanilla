execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:terracotta"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:green_dye"}].Count
execute if score @s count_in1 matches 8.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add green_terracotta_crafting
execute as @s[tag=green_terracotta_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:green_terracotta 8
execute as @s[tag=green_terracotta_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:terracotta"}].Count double 1 run scoreboard players remove @s count_in1 8
execute as @s[tag=green_terracotta_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:green_dye"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove green_terracotta_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
