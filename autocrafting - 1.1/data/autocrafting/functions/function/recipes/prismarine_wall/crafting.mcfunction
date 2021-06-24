execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:prismarine"}].Count
execute if score @s count_in1 matches 6.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add prismarine_wall_crafting
execute as @s[tag=prismarine_wall_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:prismarine_wall 6
execute as @s[tag=prismarine_wall_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:prismarine"}].Count double 1 run scoreboard players remove @s count_in1 6
tag @s remove prismarine_wall_crafting
scoreboard players reset @s count_in1
