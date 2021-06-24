execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:furnace"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"logs"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add smoker_crafting
execute as @s[tag=smoker_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:smoker 1
execute as @s[tag=smoker_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:furnace"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=smoker_crafting] run scoreboard players set @s adder 4
execute as @s[tag=smoker_crafting] run function autocrafting:function/tags/logs/remove
tag @s remove smoker_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
