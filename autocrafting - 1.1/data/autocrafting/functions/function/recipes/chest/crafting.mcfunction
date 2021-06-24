execute store result score @s count_in1 run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute if score @s count_in1 matches 8.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add chest_crafting
execute as @s[tag=chest_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:chest 1
execute as @s[tag=chest_crafting] run scoreboard players set @s adder 8
execute as @s[tag=chest_crafting] run function autocrafting:function/tags/planks/remove
tag @s remove chest_crafting
scoreboard players reset @s count_in1
