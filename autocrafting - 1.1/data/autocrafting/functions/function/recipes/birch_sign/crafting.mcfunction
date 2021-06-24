execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:birch_planks"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute if score @s count_in1 matches 6.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add birch_sign_crafting
execute as @s[tag=birch_sign_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:birch_sign 3
execute as @s[tag=birch_sign_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:birch_planks"}].Count double 1 run scoreboard players remove @s count_in1 6
execute as @s[tag=birch_sign_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove birch_sign_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
