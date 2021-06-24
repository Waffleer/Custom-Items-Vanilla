execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:smooth_stone_slab"}].Count
execute if score @s count_in1 matches 6.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add armor_stand_crafting
execute as @s[tag=armor_stand_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:armor_stand 1
execute as @s[tag=armor_stand_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players remove @s count_in1 6
execute as @s[tag=armor_stand_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:smooth_stone_slab"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove armor_stand_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
