execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:book"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:obsidian"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:diamond"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 4.. if score @s count_in3 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add enchanting_table_crafting
execute as @s[tag=enchanting_table_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:enchanting_table 1
execute as @s[tag=enchanting_table_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:book"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=enchanting_table_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:obsidian"}].Count double 1 run scoreboard players remove @s count_in2 4
execute as @s[tag=enchanting_table_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:diamond"}].Count double 1 run scoreboard players remove @s count_in3 2
tag @s remove enchanting_table_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
