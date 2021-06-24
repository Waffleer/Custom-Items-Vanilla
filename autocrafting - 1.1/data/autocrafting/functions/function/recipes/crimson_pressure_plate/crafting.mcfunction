execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:crimson_planks"}].Count
execute if score @s count_in1 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add crimson_pressure_plate_crafting
execute as @s[tag=crimson_pressure_plate_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:crimson_pressure_plate 1
execute as @s[tag=crimson_pressure_plate_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:crimson_planks"}].Count double 1 run scoreboard players remove @s count_in1 2
tag @s remove crimson_pressure_plate_crafting
scoreboard players reset @s count_in1
