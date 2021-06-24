execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:spider_eye"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:brown_mushroom"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:sugar"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. if score @s count_in3 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add fermented_spider_eye_crafting
execute as @s[tag=fermented_spider_eye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:fermented_spider_eye 1
execute as @s[tag=fermented_spider_eye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:spider_eye"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=fermented_spider_eye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:brown_mushroom"}].Count double 1 run scoreboard players remove @s count_in2 1
execute as @s[tag=fermented_spider_eye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:sugar"}].Count double 1 run scoreboard players remove @s count_in3 1
tag @s remove fermented_spider_eye_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
