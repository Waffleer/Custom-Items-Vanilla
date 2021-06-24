execute store result score @s count_in1 run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute if score @s count_in1 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add bowl_crafting
execute as @s[tag=bowl_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:bowl 4
execute as @s[tag=bowl_crafting] run scoreboard players set @s adder 3
execute as @s[tag=bowl_crafting] run function autocrafting:function/tags/planks/remove
tag @s remove bowl_crafting
scoreboard players reset @s count_in1
