execute store result score @s count_in1 run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute if score @s count_in1 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add crafting_table_crafting
execute as @s[tag=crafting_table_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:crafting_table 1
execute as @s[tag=crafting_table_crafting] run scoreboard players set @s adder 4
execute as @s[tag=crafting_table_crafting] run function autocrafting:function/tags/planks/remove
tag @s remove crafting_table_crafting
scoreboard players reset @s count_in1
