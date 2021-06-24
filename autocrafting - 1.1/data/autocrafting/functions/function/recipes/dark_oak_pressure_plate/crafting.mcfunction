execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:dark_oak_planks"}].Count
execute if score @s count_in1 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add dark_oak_pressure_plate_crafting
execute as @s[tag=dark_oak_pressure_plate_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:dark_oak_pressure_plate 1
execute as @s[tag=dark_oak_pressure_plate_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:dark_oak_planks"}].Count double 1 run scoreboard players remove @s count_in1 2
tag @s remove dark_oak_pressure_plate_crafting
scoreboard players reset @s count_in1
