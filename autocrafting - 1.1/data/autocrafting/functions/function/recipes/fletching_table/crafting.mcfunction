execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:flint"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute if score @s count_in1 matches 2.. if score @s count_in2 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add fletching_table_crafting
execute as @s[tag=fletching_table_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:fletching_table 1
execute as @s[tag=fletching_table_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:flint"}].Count double 1 run scoreboard players remove @s count_in1 2
execute as @s[tag=fletching_table_crafting] run scoreboard players set @s adder 4
execute as @s[tag=fletching_table_crafting] run function autocrafting:function/tags/planks/remove
tag @s remove fletching_table_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
