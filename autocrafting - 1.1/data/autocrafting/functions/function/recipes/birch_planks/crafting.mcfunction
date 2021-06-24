execute store result score @s count_in1 run data get entity @s HandItems[0].tag.tags[{id:"birch_logs"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add birch_planks_crafting
execute as @s[tag=birch_planks_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:birch_planks 4
execute as @s[tag=birch_planks_crafting] run scoreboard players set @s adder 1
execute as @s[tag=birch_planks_crafting] run function autocrafting:function/tags/birch_logs/remove
tag @s remove birch_planks_crafting
scoreboard players reset @s count_in1
