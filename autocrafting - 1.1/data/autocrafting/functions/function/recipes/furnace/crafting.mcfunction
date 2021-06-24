execute store result score @s count_in1 run data get entity @s HandItems[0].tag.tags[{id:"stone_crafting_materials"}].Count
execute if score @s count_in1 matches 8.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add furnace_crafting
execute as @s[tag=furnace_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:furnace 1
execute as @s[tag=furnace_crafting] run scoreboard players set @s adder 8
execute as @s[tag=furnace_crafting] run function autocrafting:function/tags/stone_crafting_materials/remove
tag @s remove furnace_crafting
scoreboard players reset @s count_in1
