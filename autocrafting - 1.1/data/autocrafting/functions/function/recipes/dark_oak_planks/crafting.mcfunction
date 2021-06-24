execute store result score @s count_in1 run data get entity @s HandItems[0].tag.tags[{id:"dark_oak_logs"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add dark_oak_planks_crafting
execute as @s[tag=dark_oak_planks_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:dark_oak_planks 4
execute as @s[tag=dark_oak_planks_crafting] run scoreboard players set @s adder 1
execute as @s[tag=dark_oak_planks_crafting] run function autocrafting:function/tags/dark_oak_logs/remove
tag @s remove dark_oak_planks_crafting
scoreboard players reset @s count_in1
