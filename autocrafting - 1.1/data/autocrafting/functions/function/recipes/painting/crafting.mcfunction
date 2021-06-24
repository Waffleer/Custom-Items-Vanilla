execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"wool"}].Count
execute if score @s count_in1 matches 8.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add painting_crafting
execute as @s[tag=painting_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:painting 1
execute as @s[tag=painting_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players remove @s count_in1 8
execute as @s[tag=painting_crafting] run scoreboard players set @s adder 1
execute as @s[tag=painting_crafting] run function autocrafting:function/tags/wool/remove
tag @s remove painting_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
