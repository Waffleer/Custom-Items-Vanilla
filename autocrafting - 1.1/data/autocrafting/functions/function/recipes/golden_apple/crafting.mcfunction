execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:gold_ingot"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:apple"}].Count
execute if score @s count_in1 matches 8.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add golden_apple_crafting
execute as @s[tag=golden_apple_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:golden_apple 1
execute as @s[tag=golden_apple_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:gold_ingot"}].Count double 1 run scoreboard players remove @s count_in1 8
execute as @s[tag=golden_apple_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:apple"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove golden_apple_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
